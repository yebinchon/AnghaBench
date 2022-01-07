
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_2__ {int options; } ;
struct ddb_entry {TYPE_1__ fw_ddb_entry; } ;


 int DDB_IPADDR_LEN ;
 int DDB_OPT_IPV6_DEVICE ;
 int IPv6_ADDR_LEN ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 int in4_pton (char*,int ,int *,char,int *) ;
 int in6_pton (char*,int ,int *,char,int *) ;
 int sprintf (char*,char*,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int qla4xxx_match_ipaddress(struct scsi_qla_host *ha,
       struct ddb_entry *ddb_entry,
       char *existing_ipaddr,
       char *user_ipaddr)
{
 uint8_t dst_ipaddr[IPv6_ADDR_LEN];
 char formatted_ipaddr[DDB_IPADDR_LEN];
 int status = QLA_SUCCESS, ret = 0;

 if (ddb_entry->fw_ddb_entry.options & DDB_OPT_IPV6_DEVICE) {
  ret = in6_pton(user_ipaddr, strlen(user_ipaddr), dst_ipaddr,
          '\0', ((void*)0));
  if (ret == 0) {
   status = QLA_ERROR;
   goto out_match;
  }
  ret = sprintf(formatted_ipaddr, "%pI6", dst_ipaddr);
 } else {
  ret = in4_pton(user_ipaddr, strlen(user_ipaddr), dst_ipaddr,
          '\0', ((void*)0));
  if (ret == 0) {
   status = QLA_ERROR;
   goto out_match;
  }
  ret = sprintf(formatted_ipaddr, "%pI4", dst_ipaddr);
 }

 if (strcmp(existing_ipaddr, formatted_ipaddr))
  status = QLA_ERROR;

out_match:
 return status;
}
