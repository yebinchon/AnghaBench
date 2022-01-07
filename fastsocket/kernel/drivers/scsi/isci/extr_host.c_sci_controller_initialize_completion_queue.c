
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct isci_host {int* completion_queue; TYPE_1__* smu_registers; scalar_t__ completion_queue_get; } ;
struct TYPE_2__ {int completion_queue_put; int completion_queue_get; int completion_queue_control; } ;


 int ENABLE ;
 int EVENT_ENABLE ;
 int EVENT_POINTER ;
 int POINTER ;
 size_t SCU_MAX_COMPLETION_QUEUE_ENTRIES ;
 scalar_t__ SCU_MAX_EVENTS ;
 size_t SMU_CQC_EVENT_LIMIT_SET (scalar_t__) ;
 size_t SMU_CQC_QUEUE_LIMIT_SET (size_t) ;
 size_t SMU_CQGR_GEN_BIT (int ) ;
 size_t SMU_CQGR_GEN_VAL (int ,int ) ;
 size_t SMU_CQPR_GEN_VAL (int ,int ) ;
 int writel (size_t,int *) ;

__attribute__((used)) static void sci_controller_initialize_completion_queue(struct isci_host *ihost)
{
 u32 index;
 u32 completion_queue_control_value;
 u32 completion_queue_get_value;
 u32 completion_queue_put_value;

 ihost->completion_queue_get = 0;

 completion_queue_control_value =
  (SMU_CQC_QUEUE_LIMIT_SET(SCU_MAX_COMPLETION_QUEUE_ENTRIES - 1) |
   SMU_CQC_EVENT_LIMIT_SET(SCU_MAX_EVENTS - 1));

 writel(completion_queue_control_value,
        &ihost->smu_registers->completion_queue_control);



 completion_queue_get_value = (
  (SMU_CQGR_GEN_VAL(POINTER, 0))
  | (SMU_CQGR_GEN_VAL(EVENT_POINTER, 0))
  | (SMU_CQGR_GEN_BIT(ENABLE))
  | (SMU_CQGR_GEN_BIT(EVENT_ENABLE))
  );

 writel(completion_queue_get_value,
        &ihost->smu_registers->completion_queue_get);


 completion_queue_put_value = (
  (SMU_CQPR_GEN_VAL(POINTER, 0))
  | (SMU_CQPR_GEN_VAL(EVENT_POINTER, 0))
  );

 writel(completion_queue_put_value,
        &ihost->smu_registers->completion_queue_put);


 for (index = 0; index < SCU_MAX_COMPLETION_QUEUE_ENTRIES; index++) {




  ihost->completion_queue[index] = 0x80000000;
 }
}
