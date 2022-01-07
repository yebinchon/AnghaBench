
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCSI_NL_TRANSPORT ;
 int netlink_kernel_release (scalar_t__) ;
 int netlink_unregister_notifier (int *) ;
 int scsi_netlink_notifier ;
 int scsi_nl_remove_transport (int ) ;
 scalar_t__ scsi_nl_sock ;

void
scsi_netlink_exit(void)
{
 scsi_nl_remove_transport(SCSI_NL_TRANSPORT);

 if (scsi_nl_sock) {
  netlink_kernel_release(scsi_nl_sock);
  netlink_unregister_notifier(&scsi_netlink_notifier);
 }

 return;
}
