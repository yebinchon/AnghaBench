
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ulong ;
typedef int uint32_t ;
typedef scalar_t__ uint ;
struct qla_hw_data {int dummy; } ;
struct TYPE_5__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int IS_QLA2031 (struct qla_hw_data*) ;
 int IS_QLA25XX (struct qla_hw_data*) ;
 int RISC_SEMAPHORE ;
 int RISC_SEMAPHORE_CLR ;
 int RISC_SEMAPHORE_FORCE ;
 int RISC_SEMAPHORE_FORCE_CLR ;
 int RISC_SEMAPHORE_FORCE_SET ;
 int RISC_SEMAPHORE_SET ;
 scalar_t__ TIMEOUT_SEMAPHORE ;
 scalar_t__ TIMEOUT_SEMAPHORE_FORCE ;
 scalar_t__ TIMEOUT_TOTAL_ELAPSED ;
 int msleep (scalar_t__) ;
 int qla25xx_read_risc_sema_reg (TYPE_1__*,int*) ;
 int qla25xx_write_risc_sema_reg (TYPE_1__*,int ) ;

__attribute__((used)) static void
qla25xx_manipulate_risc_semaphore(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;
 uint32_t wd32 = 0;
 uint delta_msec = 100;
 uint elapsed_msec = 0;
 uint timeout_msec;
 ulong n;

 if (!IS_QLA25XX(ha) && !IS_QLA2031(ha))
  return;

attempt:
 timeout_msec = TIMEOUT_SEMAPHORE;
 n = timeout_msec / delta_msec;
 while (n--) {
  qla25xx_write_risc_sema_reg(vha, RISC_SEMAPHORE_SET);
  qla25xx_read_risc_sema_reg(vha, &wd32);
  if (wd32 & RISC_SEMAPHORE)
   break;
  msleep(delta_msec);
  elapsed_msec += delta_msec;
  if (elapsed_msec > TIMEOUT_TOTAL_ELAPSED)
   goto force;
 }

 if (!(wd32 & RISC_SEMAPHORE))
  goto force;

 if (!(wd32 & RISC_SEMAPHORE_FORCE))
  goto acquired;

 qla25xx_write_risc_sema_reg(vha, RISC_SEMAPHORE_CLR);
 timeout_msec = TIMEOUT_SEMAPHORE_FORCE;
 n = timeout_msec / delta_msec;
 while (n--) {
  qla25xx_read_risc_sema_reg(vha, &wd32);
  if (!(wd32 & RISC_SEMAPHORE_FORCE))
   break;
  msleep(delta_msec);
  elapsed_msec += delta_msec;
  if (elapsed_msec > TIMEOUT_TOTAL_ELAPSED)
   goto force;
 }

 if (wd32 & RISC_SEMAPHORE_FORCE)
  qla25xx_write_risc_sema_reg(vha, RISC_SEMAPHORE_FORCE_CLR);

 goto attempt;

force:
 qla25xx_write_risc_sema_reg(vha, RISC_SEMAPHORE_FORCE_SET);

acquired:
 return;
}
