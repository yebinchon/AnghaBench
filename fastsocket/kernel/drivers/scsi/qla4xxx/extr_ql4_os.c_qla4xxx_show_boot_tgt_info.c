
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* target_chap_name_length; char* target_secret_length; char* intr_chap_name_length; char* intr_secret_length; int intr_secret; int intr_chap_name; int target_secret; int target_chap_name; } ;
struct TYPE_3__ {int ip_type; int ip_address; } ;
struct ql4_conn_info {int dest_port; TYPE_2__ chap; TYPE_1__ dest_ipaddr; } ;
struct ql4_boot_session_info {struct ql4_conn_info* conn_list; int target_name; } ;
typedef int ssize_t ;


 int ENOSYS ;
 int SYSFS_FLAG_FW_SEL_BOOT ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t
qla4xxx_show_boot_tgt_info(struct ql4_boot_session_info *boot_sess, int type,
      char *buf)
{
 struct ql4_conn_info *boot_conn = &boot_sess->conn_list[0];
 char *str = buf;
 int rc;

 switch (type) {
 case 132:
  rc = sprintf(buf, "%s\n", (char *)&boot_sess->target_name);
  break;
 case 133:
  if (boot_sess->conn_list[0].dest_ipaddr.ip_type == 0x1)
   rc = sprintf(buf, "%pI4\n",
         &boot_conn->dest_ipaddr.ip_address);
  else
   rc = sprintf(str, "%pI6\n",
         &boot_conn->dest_ipaddr.ip_address);
  break;
 case 130:
   rc = sprintf(str, "%d\n", boot_conn->dest_port);
  break;
 case 136:
  rc = sprintf(str, "%.*s\n",
        boot_conn->chap.target_chap_name_length,
        (char *)&boot_conn->chap.target_chap_name);
  break;
 case 135:
  rc = sprintf(str, "%.*s\n",
        boot_conn->chap.target_secret_length,
        (char *)&boot_conn->chap.target_secret);
  break;
 case 129:
  rc = sprintf(str, "%.*s\n",
        boot_conn->chap.intr_chap_name_length,
        (char *)&boot_conn->chap.intr_chap_name);
  break;
 case 128:
  rc = sprintf(str, "%.*s\n",
        boot_conn->chap.intr_secret_length,
        (char *)&boot_conn->chap.intr_secret);
  break;
 case 134:
  rc = sprintf(str, "%d\n", SYSFS_FLAG_FW_SEL_BOOT);
  break;
 case 131:
  rc = sprintf(str, "0\n");
  break;
 default:
  rc = -ENOSYS;
  break;
 }
 return rc;
}
