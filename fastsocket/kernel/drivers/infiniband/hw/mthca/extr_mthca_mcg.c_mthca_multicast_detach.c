
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union ib_gid {int raw; } ;
typedef int u16 ;
struct mthca_mgm {int* qp; int next_gid_index; int gid; } ;
struct mthca_mailbox {struct mthca_mgm* buf; } ;
struct TYPE_4__ {int mutex; int alloc; } ;
struct TYPE_3__ {int num_mgms; } ;
struct mthca_dev {TYPE_2__ mcg_table; TYPE_1__ limits; } ;
struct ib_qp {int qp_num; int device; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mthca_mailbox*) ;
 int MTHCA_QP_PER_MGM ;
 int PTR_ERR (struct mthca_mailbox*) ;
 int be32_to_cpu (int) ;
 int cpu_to_be32 (int) ;
 int find_mgm (struct mthca_dev*,int,struct mthca_mailbox*,int *,int*,int*) ;
 int memset (int ,int ,int) ;
 int mthca_READ_MGM (struct mthca_dev*,int,struct mthca_mailbox*) ;
 int mthca_WRITE_MGM (struct mthca_dev*,int,struct mthca_mailbox*) ;
 struct mthca_mailbox* mthca_alloc_mailbox (struct mthca_dev*,int ) ;
 int mthca_err (struct mthca_dev*,char*,int) ;
 int mthca_free (int *,int) ;
 int mthca_free_mailbox (struct mthca_dev*,struct mthca_mailbox*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mthca_dev* to_mdev (int ) ;

int mthca_multicast_detach(struct ib_qp *ibqp, union ib_gid *gid, u16 lid)
{
 struct mthca_dev *dev = to_mdev(ibqp->device);
 struct mthca_mailbox *mailbox;
 struct mthca_mgm *mgm;
 u16 hash;
 int prev, index;
 int i, loc;
 int err;

 mailbox = mthca_alloc_mailbox(dev, GFP_KERNEL);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);
 mgm = mailbox->buf;

 mutex_lock(&dev->mcg_table.mutex);

 err = find_mgm(dev, gid->raw, mailbox, &hash, &prev, &index);
 if (err)
  goto out;

 if (index == -1) {
  mthca_err(dev, "MGID %pI6 not found\n", gid->raw);
  err = -EINVAL;
  goto out;
 }

 for (loc = -1, i = 0; i < MTHCA_QP_PER_MGM; ++i) {
  if (mgm->qp[i] == cpu_to_be32(ibqp->qp_num | (1 << 31)))
   loc = i;
  if (!(mgm->qp[i] & cpu_to_be32(1 << 31)))
   break;
 }

 if (loc == -1) {
  mthca_err(dev, "QP %06x not found in MGM\n", ibqp->qp_num);
  err = -EINVAL;
  goto out;
 }

 mgm->qp[loc] = mgm->qp[i - 1];
 mgm->qp[i - 1] = 0;

 err = mthca_WRITE_MGM(dev, index, mailbox);
 if (err) {
  mthca_err(dev, "WRITE_MGM returned %d\n", err);
  goto out;
 }

 if (i != 1)
  goto out;

 if (prev == -1) {

  int amgm_index_to_free = be32_to_cpu(mgm->next_gid_index) >> 6;
  if (amgm_index_to_free) {
   err = mthca_READ_MGM(dev, amgm_index_to_free,
          mailbox);
   if (err) {
    mthca_err(dev, "READ_MGM returned %d\n", err);
    goto out;
   }
  } else
   memset(mgm->gid, 0, 16);

  err = mthca_WRITE_MGM(dev, index, mailbox);
  if (err) {
   mthca_err(dev, "WRITE_MGM returned %d\n", err);
   goto out;
  }
  if (amgm_index_to_free) {
   BUG_ON(amgm_index_to_free < dev->limits.num_mgms);
   mthca_free(&dev->mcg_table.alloc, amgm_index_to_free);
  }
 } else {

  int curr_next_index = be32_to_cpu(mgm->next_gid_index) >> 6;
  err = mthca_READ_MGM(dev, prev, mailbox);
  if (err) {
   mthca_err(dev, "READ_MGM returned %d\n", err);
   goto out;
  }

  mgm->next_gid_index = cpu_to_be32(curr_next_index << 6);

  err = mthca_WRITE_MGM(dev, prev, mailbox);
  if (err) {
   mthca_err(dev, "WRITE_MGM returned %d\n", err);
   goto out;
  }
  BUG_ON(index < dev->limits.num_mgms);
  mthca_free(&dev->mcg_table.alloc, index);
 }

 out:
 mutex_unlock(&dev->mcg_table.mutex);

 mthca_free_mailbox(dev, mailbox);
 return err;
}
