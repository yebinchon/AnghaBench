
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int spu_status_R; } ;
struct spu_state {TYPE_3__* lscsa; TYPE_1__ prob; } ;
struct spu {int dummy; } ;
struct TYPE_5__ {int * slot; } ;
struct TYPE_6__ {TYPE_2__ stopped_status; } ;


 int SPU_STATUS_INVALID_INSTR ;
 int SPU_STATUS_RUNNING ;
 int SPU_STATUS_SINGLE_STEP ;
 int SPU_STATUS_STOPPED_BY_HALT ;
 int SPU_STATUS_STOPPED_BY_STOP ;
 int SPU_STOPPED_STATUS_R ;

__attribute__((used)) static inline void setup_spu_status_part2(struct spu_state *csa,
       struct spu *spu)
{
 u32 mask;
 mask = SPU_STATUS_INVALID_INSTR |
     SPU_STATUS_SINGLE_STEP |
     SPU_STATUS_STOPPED_BY_HALT |
     SPU_STATUS_STOPPED_BY_STOP | SPU_STATUS_RUNNING;
 if (!(csa->prob.spu_status_R & mask)) {
  csa->lscsa->stopped_status.slot[0] = SPU_STOPPED_STATUS_R;
 }
}
