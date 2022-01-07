
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;
struct ql4_tuple_ddb {scalar_t__ port; int * isid; int iscsi_name; int ip_addr; } ;


 int QLA_ERROR ;
 int QLA_SUCCESS ;
 scalar_t__ memcmp (int *,int *,int) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int qla4xxx_should_update_isid(struct scsi_qla_host *ha,
          struct ql4_tuple_ddb *old_tddb,
          struct ql4_tuple_ddb *new_tddb)
{
 if (strcmp(old_tddb->ip_addr, new_tddb->ip_addr) == 0) {

  if (old_tddb->port == new_tddb->port)
   return QLA_ERROR;
 }

 if (strcmp(old_tddb->iscsi_name, new_tddb->iscsi_name))

  return QLA_ERROR;

 if (memcmp(&old_tddb->isid[0], &new_tddb->isid[0],
     sizeof(old_tddb->isid)))

  return QLA_ERROR;

 return QLA_SUCCESS;
}
