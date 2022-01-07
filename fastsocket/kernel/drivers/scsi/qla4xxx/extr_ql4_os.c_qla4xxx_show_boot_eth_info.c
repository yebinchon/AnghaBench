
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int my_mac; } ;
typedef int ssize_t ;


 int ENOSYS ;



 int MAC_ADDR_LEN ;
 int SYSFS_FLAG_FW_SEL_BOOT ;
 int sprintf (char*,char*,...) ;
 int sysfs_format_mac (char*,int ,int ) ;

__attribute__((used)) static ssize_t qla4xxx_show_boot_eth_info(void *data, int type, char *buf)
{
 struct scsi_qla_host *ha = data;
 char *str = buf;
 int rc;

 switch (type) {
 case 130:
  rc = sprintf(str, "%d\n", SYSFS_FLAG_FW_SEL_BOOT);
  break;
 case 129:
  rc = sprintf(str, "0\n");
  break;
 case 128:
  rc = sysfs_format_mac(str, ha->my_mac,
          MAC_ADDR_LEN);
  break;
 default:
  rc = -ENOSYS;
  break;
 }
 return rc;
}
