
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int srb_t ;
struct TYPE_6__ {TYPE_1__* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_5__ {int srb_mempool; } ;


 int QLA_VHA_MARK_NOT_BUSY (TYPE_2__*) ;
 int mempool_free (int *,int ) ;

__attribute__((used)) static inline void
qla2x00_rel_sp(scsi_qla_host_t *vha, srb_t *sp)
{
 mempool_free(sp, vha->hw->srb_mempool);
 QLA_VHA_MARK_NOT_BUSY(vha);
}
