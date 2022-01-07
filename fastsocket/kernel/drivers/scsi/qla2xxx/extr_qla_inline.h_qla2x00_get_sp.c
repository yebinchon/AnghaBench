
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct qla_hw_data {int srb_mempool; } ;
struct TYPE_9__ {int iocbs; int * fcport; } ;
typedef TYPE_1__ srb_t ;
struct TYPE_10__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
typedef int gfp_t ;
typedef int fc_port_t ;


 int QLA_VHA_MARK_BUSY (TYPE_2__*,int ) ;
 int QLA_VHA_MARK_NOT_BUSY (TYPE_2__*) ;
 TYPE_1__* mempool_alloc (int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline srb_t *
qla2x00_get_sp(scsi_qla_host_t *vha, fc_port_t *fcport, gfp_t flag)
{
 srb_t *sp = ((void*)0);
 struct qla_hw_data *ha = vha->hw;
 uint8_t bail;

 QLA_VHA_MARK_BUSY(vha, bail);
 if (unlikely(bail))
  return ((void*)0);

 sp = mempool_alloc(ha->srb_mempool, flag);
 if (!sp)
  goto done;

 memset(sp, 0, sizeof(*sp));
 sp->fcport = fcport;
 sp->iocbs = 1;
done:
 if (!sp)
  QLA_VHA_MARK_NOT_BUSY(vha);
 return sp;
}
