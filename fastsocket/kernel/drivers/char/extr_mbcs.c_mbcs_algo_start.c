
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cm_control {int alg_done_int_en; int alg_go; int cm_control_reg; } ;
struct algoblock {int algoStepCount; int intrVector; int intrHostDest; int amoModType; int amoHostDest; } ;
struct mbcs_soft {int algolock; int algo_done; void* mmr_base; struct algoblock algo; } ;


 int ERESTARTSYS ;
 int MBCS_CM_CONTROL ;
 int MBCS_MMR_GET (void*,int ) ;
 int MBCS_MMR_SET (void*,int ,int ) ;
 int atomic_set (int *,int ) ;
 int mbcs_algo_set (void*,int ,int ,int ,int ,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline int mbcs_algo_start(struct mbcs_soft *soft)
{
 struct algoblock *algo_soft = &soft->algo;
 void *mmr_base = soft->mmr_base;
 union cm_control cm_control;

 if (mutex_lock_interruptible(&soft->algolock))
  return -ERESTARTSYS;

 atomic_set(&soft->algo_done, 0);

 mbcs_algo_set(mmr_base,
   algo_soft->amoHostDest,
   algo_soft->amoModType,
   algo_soft->intrHostDest,
   algo_soft->intrVector, algo_soft->algoStepCount);


 cm_control.cm_control_reg = MBCS_MMR_GET(mmr_base, MBCS_CM_CONTROL);
 cm_control.alg_done_int_en = 1;
 cm_control.alg_go = 1;
 MBCS_MMR_SET(mmr_base, MBCS_CM_CONTROL, cm_control.cm_control_reg);

 mutex_unlock(&soft->algolock);

 return 0;
}
