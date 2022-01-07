
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct iucv_path {int msglim; int flags; } ;
struct hvc_iucv_private {scalar_t__ iucv_state; int lock; int sndbuf_work; struct iucv_path* path; int srv_name; } ;


 int ENODEV ;
 scalar_t__ IUCV_CONNECTED ;
 scalar_t__ IUCV_DISCONN ;
 int IUCV_IPRMDATA ;
 int hvc_iucv_devices ;
 int hvc_iucv_filter_connreq (scalar_t__*) ;
 int hvc_iucv_filter_lock ;
 int hvc_iucv_handler ;
 struct hvc_iucv_private** hvc_iucv_table ;
 int iucv_path_accept (struct iucv_path*,int *,scalar_t__*,struct hvc_iucv_private*) ;
 int iucv_path_free (struct iucv_path*) ;
 int iucv_path_sever (struct iucv_path*,scalar_t__*) ;
 scalar_t__ memcmp (int ,scalar_t__*,int) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int pr_info (char*,scalar_t__*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int schedule_delayed_work (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int hvc_iucv_path_pending(struct iucv_path *path,
      u8 ipvmid[8], u8 ipuser[16])
{
 struct hvc_iucv_private *priv;
 u8 nuser_data[16];
 u8 vm_user_id[9];
 int i, rc;

 priv = ((void*)0);
 for (i = 0; i < hvc_iucv_devices; i++)
  if (hvc_iucv_table[i] &&
      (0 == memcmp(hvc_iucv_table[i]->srv_name, ipuser, 8))) {
   priv = hvc_iucv_table[i];
   break;
  }
 if (!priv)
  return -ENODEV;


 read_lock(&hvc_iucv_filter_lock);
 rc = hvc_iucv_filter_connreq(ipvmid);
 read_unlock(&hvc_iucv_filter_lock);
 if (rc) {
  iucv_path_sever(path, ipuser);
  iucv_path_free(path);
  memcpy(vm_user_id, ipvmid, 8);
  vm_user_id[8] = 0;
  pr_info("A connection request from z/VM user ID %s "
   "was refused\n", vm_user_id);
  return 0;
 }

 spin_lock(&priv->lock);




 if (priv->iucv_state != IUCV_DISCONN) {
  iucv_path_sever(path, ipuser);
  iucv_path_free(path);
  goto out_path_handled;
 }


 memcpy(nuser_data, ipuser + 8, 8);
 memcpy(nuser_data + 8, ipuser, 8);
 path->msglim = 0xffff;
 path->flags &= ~IUCV_IPRMDATA;
 rc = iucv_path_accept(path, &hvc_iucv_handler, nuser_data, priv);
 if (rc) {
  iucv_path_sever(path, ipuser);
  iucv_path_free(path);
  goto out_path_handled;
 }
 priv->path = path;
 priv->iucv_state = IUCV_CONNECTED;


 schedule_delayed_work(&priv->sndbuf_work, 5);

out_path_handled:
 spin_unlock(&priv->lock);
 return 0;
}
