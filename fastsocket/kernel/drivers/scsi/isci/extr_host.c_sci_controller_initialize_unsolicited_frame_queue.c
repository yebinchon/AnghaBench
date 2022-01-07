
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct isci_host {TYPE_2__* scu_registers; } ;
struct TYPE_3__ {int unsolicited_frame_put_pointer; int unsolicited_frame_get_pointer; int unsolicited_frame_queue_control; } ;
struct TYPE_4__ {TYPE_1__ sdma; } ;


 int ENABLE_BIT ;
 int POINTER ;
 int QUEUE_SIZE ;
 int SCU_MAX_UNSOLICITED_FRAMES ;
 int SCU_UFQC_GEN_VAL (int ,int ) ;
 int SCU_UFQGP_GEN_BIT (int ) ;
 int SCU_UFQGP_GEN_VAL (int ,int ) ;
 int SCU_UFQPP_GEN_VAL (int ,int ) ;
 int writel (int,int *) ;

__attribute__((used)) static void sci_controller_initialize_unsolicited_frame_queue(struct isci_host *ihost)
{
 u32 frame_queue_control_value;
 u32 frame_queue_get_value;
 u32 frame_queue_put_value;


 frame_queue_control_value =
  SCU_UFQC_GEN_VAL(QUEUE_SIZE, SCU_MAX_UNSOLICITED_FRAMES);

 writel(frame_queue_control_value,
        &ihost->scu_registers->sdma.unsolicited_frame_queue_control);


 frame_queue_get_value = (
  SCU_UFQGP_GEN_VAL(POINTER, 0)
  | SCU_UFQGP_GEN_BIT(ENABLE_BIT)
  );

 writel(frame_queue_get_value,
        &ihost->scu_registers->sdma.unsolicited_frame_get_pointer);

 frame_queue_put_value = SCU_UFQPP_GEN_VAL(POINTER, 0);
 writel(frame_queue_put_value,
        &ihost->scu_registers->sdma.unsolicited_frame_put_pointer);
}
