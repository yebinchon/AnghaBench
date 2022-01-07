
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mthca_ucontext {int db_tab; int uar; } ;
struct ib_srq {int dummy; } ;
struct TYPE_4__ {int lkey; } ;
struct TYPE_5__ {TYPE_1__ ibmr; } ;
struct mthca_srq {struct ib_srq ibsrq; int srqn; int db_index; TYPE_2__ mr; } ;
struct mthca_create_srq {int db_index; int lkey; int db_page; } ;
struct ib_udata {int dummy; } ;
struct ib_srq_init_attr {scalar_t__ srq_type; int attr; } ;
struct ib_pd {int device; TYPE_3__* uobject; } ;
typedef int __u32 ;
struct TYPE_6__ {int context; } ;


 int EFAULT ;
 int ENOMEM ;
 int ENOSYS ;
 struct ib_srq* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IB_SRQT_BASIC ;
 scalar_t__ ib_copy_from_udata (struct mthca_create_srq*,struct ib_udata*,int) ;
 scalar_t__ ib_copy_to_udata (struct ib_udata*,int *,int) ;
 int kfree (struct mthca_srq*) ;
 struct mthca_srq* kmalloc (int,int ) ;
 int mthca_alloc_srq (int ,int ,int *,struct mthca_srq*) ;
 int mthca_free_srq (int ,struct mthca_srq*) ;
 int mthca_map_user_db (int ,int *,int ,int ,int ) ;
 int mthca_unmap_user_db (int ,int *,int ,int ) ;
 int to_mdev (int ) ;
 int to_mpd (struct ib_pd*) ;
 struct mthca_ucontext* to_mucontext (int ) ;

__attribute__((used)) static struct ib_srq *mthca_create_srq(struct ib_pd *pd,
           struct ib_srq_init_attr *init_attr,
           struct ib_udata *udata)
{
 struct mthca_create_srq ucmd;
 struct mthca_ucontext *context = ((void*)0);
 struct mthca_srq *srq;
 int err;

 if (init_attr->srq_type != IB_SRQT_BASIC)
  return ERR_PTR(-ENOSYS);

 srq = kmalloc(sizeof *srq, GFP_KERNEL);
 if (!srq)
  return ERR_PTR(-ENOMEM);

 if (pd->uobject) {
  context = to_mucontext(pd->uobject->context);

  if (ib_copy_from_udata(&ucmd, udata, sizeof ucmd)) {
   err = -EFAULT;
   goto err_free;
  }

  err = mthca_map_user_db(to_mdev(pd->device), &context->uar,
     context->db_tab, ucmd.db_index,
     ucmd.db_page);

  if (err)
   goto err_free;

  srq->mr.ibmr.lkey = ucmd.lkey;
  srq->db_index = ucmd.db_index;
 }

 err = mthca_alloc_srq(to_mdev(pd->device), to_mpd(pd),
         &init_attr->attr, srq);

 if (err && pd->uobject)
  mthca_unmap_user_db(to_mdev(pd->device), &context->uar,
        context->db_tab, ucmd.db_index);

 if (err)
  goto err_free;

 if (context && ib_copy_to_udata(udata, &srq->srqn, sizeof (__u32))) {
  mthca_free_srq(to_mdev(pd->device), srq);
  err = -EFAULT;
  goto err_free;
 }

 return &srq->ibsrq;

err_free:
 kfree(srq);

 return ERR_PTR(err);
}
