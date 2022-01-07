
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int host; } ;


 int iscsi_destroy_all_flashnode (int ) ;

__attribute__((used)) static void qla4xxx_sysfs_ddb_remove(struct scsi_qla_host *ha)
{
 iscsi_destroy_all_flashnode(ha->host);
}
