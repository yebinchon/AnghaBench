
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_private {int read_index; int read_ready; int msglim_count; int path; } ;
struct mon_msg {int replied_msglim; scalar_t__ mca_offset; scalar_t__ pos; int msglim_reached; int msg; } ;


 int EIO ;
 int IUCV_IPRMDATA ;
 int MON_MSGLIM ;
 int atomic_dec (int *) ;
 int iucv_message_reply (int ,int *,int ,int *,int ) ;
 scalar_t__ likely (int) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int mon_send_reply(struct mon_msg *monmsg,
     struct mon_private *monpriv)
{
 int rc;

 rc = iucv_message_reply(monpriv->path, &monmsg->msg,
    IUCV_IPRMDATA, ((void*)0), 0);
 atomic_dec(&monpriv->msglim_count);
 if (likely(!monmsg->msglim_reached)) {
  monmsg->pos = 0;
  monmsg->mca_offset = 0;
  monpriv->read_index = (monpriv->read_index + 1) %
          MON_MSGLIM;
  atomic_dec(&monpriv->read_ready);
 } else
  monmsg->replied_msglim = 1;
 if (rc) {
  pr_err("Reading monitor data failed with rc=%i\n", rc);
  return -EIO;
 }
 return 0;
}
