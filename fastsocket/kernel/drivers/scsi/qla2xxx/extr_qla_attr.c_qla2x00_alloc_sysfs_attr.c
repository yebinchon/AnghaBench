
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sysfs_entry {int is4GBp_only; scalar_t__ name; int attr; } ;
struct TYPE_6__ {int kobj; } ;
struct Scsi_Host {TYPE_1__ shost_gendev; } ;
struct TYPE_7__ {int hw; struct Scsi_Host* host; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int IS_CNA_CAPABLE (int ) ;
 int IS_FWI2_CAPABLE (int ) ;
 int IS_QLA25XX (int ) ;
 struct sysfs_entry* bin_file_entries ;
 int ql_dbg (int ,TYPE_2__*,int,char*,scalar_t__) ;
 int ql_dbg_init ;
 int ql_log (int ,TYPE_2__*,int,char*,scalar_t__,int) ;
 int ql_log_warn ;
 int sysfs_create_bin_file (int *,int ) ;

void
qla2x00_alloc_sysfs_attr(scsi_qla_host_t *vha)
{
 struct Scsi_Host *host = vha->host;
 struct sysfs_entry *iter;
 int ret;

 for (iter = bin_file_entries; iter->name; iter++) {
  if (iter->is4GBp_only && !IS_FWI2_CAPABLE(vha->hw))
   continue;
  if (iter->is4GBp_only == 2 && !IS_QLA25XX(vha->hw))
   continue;
  if (iter->is4GBp_only == 3 && !(IS_CNA_CAPABLE(vha->hw)))
   continue;

  ret = sysfs_create_bin_file(&host->shost_gendev.kobj,
      iter->attr);
  if (ret)
   ql_log(ql_log_warn, vha, 0x00f3,
       "Unable to create sysfs %s binary attribute (%d).\n",
       iter->name, ret);
  else
   ql_dbg(ql_dbg_init, vha, 0x00f4,
       "Successfully created sysfs %s binary attribure.\n",
       iter->name);
 }
}
