
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int scsi_qla_host_t ;
struct TYPE_4__ {int entry_capture_mask; int driver_flags; } ;
struct TYPE_5__ {TYPE_1__ d_ctrl; int entry_type; } ;
typedef TYPE_2__ qla82xx_md_entry_hdr_t ;


 int QLA82XX_DBG_SKIPPED_FLAG ;
 int ql_dbg (int ,int *,int,char*,int,int ,int ) ;
 int ql_dbg_p3p ;

__attribute__((used)) static void
qla82xx_mark_entry_skipped(scsi_qla_host_t *vha,
 qla82xx_md_entry_hdr_t *entry_hdr, int index)
{

 entry_hdr->d_ctrl.driver_flags |= QLA82XX_DBG_SKIPPED_FLAG;
 ql_dbg(ql_dbg_p3p, vha, 0xb036,
     "Skipping entry[%d]: "
     "ETYPE[0x%x]-ELEVEL[0x%x]\n",
     index, entry_hdr->entry_type,
     entry_hdr->d_ctrl.entry_capture_mask);
}
