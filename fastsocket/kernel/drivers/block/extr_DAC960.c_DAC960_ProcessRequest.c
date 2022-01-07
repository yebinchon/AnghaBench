
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct TYPE_4__ {int req_q_index; struct request_queue** RequestQueue; int ControllerInitialized; } ;
typedef TYPE_1__ DAC960_Controller_T ;


 int DAC960_MaxLogicalDrives ;
 int DAC960_process_queue (TYPE_1__*,struct request_queue*) ;

__attribute__((used)) static void DAC960_ProcessRequest(DAC960_Controller_T *controller)
{
 int i;

 if (!controller->ControllerInitialized)
  return;


 for (i = controller->req_q_index; i < DAC960_MaxLogicalDrives; i++) {
  struct request_queue *req_q = controller->RequestQueue[i];

  if (req_q == ((void*)0))
   continue;

  if (!DAC960_process_queue(controller, req_q)) {
   controller->req_q_index = i;
   return;
  }
 }

 if (controller->req_q_index == 0)
  return;

 for (i = 0; i < controller->req_q_index; i++) {
  struct request_queue *req_q = controller->RequestQueue[i];

  if (req_q == ((void*)0))
   continue;

  if (!DAC960_process_queue(controller, req_q)) {
   controller->req_q_index = i;
   return;
  }
 }
}
