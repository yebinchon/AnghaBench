
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_base_state_machine {int current_state_id; } ;
struct isci_remote_device {struct sci_base_state_machine sm; } ;
typedef enum sci_remote_device_states { ____Placeholder_sci_remote_device_states } sci_remote_device_states ;
__attribute__((used)) static bool is_remote_device_ready(struct isci_remote_device *idev)
{

 struct sci_base_state_machine *sm = &idev->sm;
 enum sci_remote_device_states state = sm->current_state_id;

 switch (state) {
 case 135:
 case 130:
 case 131:
 case 129:
 case 128:
 case 132:
 case 133:
 case 134:
  return 1;
 default:
  return 0;
 }
}
