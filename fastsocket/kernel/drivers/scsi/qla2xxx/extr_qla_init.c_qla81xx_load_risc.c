
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int running_gold_fw; } ;
struct qla_hw_data {TYPE_1__ flags; int flt_region_gold_fw; int flt_region_fw; } ;
struct TYPE_8__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int QLA_SUCCESS ;
 int ql2xfwloadbin ;
 int ql_log (int ,TYPE_2__*,int,char*) ;
 int ql_log_info ;
 int qla24xx_load_risc_blob (TYPE_2__*,int *) ;
 int qla24xx_load_risc_flash (TYPE_2__*,int *,int ) ;

int
qla81xx_load_risc(scsi_qla_host_t *vha, uint32_t *srisc_addr)
{
 int rval;
 struct qla_hw_data *ha = vha->hw;

 if (ql2xfwloadbin == 2)
  goto try_blob_fw;







 rval = qla24xx_load_risc_flash(vha, srisc_addr, ha->flt_region_fw);
 if (rval == QLA_SUCCESS)
  return rval;

try_blob_fw:
 rval = qla24xx_load_risc_blob(vha, srisc_addr);
 if (rval == QLA_SUCCESS || !ha->flt_region_gold_fw)
  return rval;

 ql_log(ql_log_info, vha, 0x0099,
     "Attempting to fallback to golden firmware.\n");
 rval = qla24xx_load_risc_flash(vha, srisc_addr, ha->flt_region_gold_fw);
 if (rval != QLA_SUCCESS)
  return rval;

 ql_log(ql_log_info, vha, 0x009a, "Update operational firmware.\n");
 ha->flags.running_gold_fw = 1;
 return rval;
}
