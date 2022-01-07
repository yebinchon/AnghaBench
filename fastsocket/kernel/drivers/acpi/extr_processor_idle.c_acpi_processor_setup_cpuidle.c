
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cpuidle_state {char* name; char* desc; int exit_latency; int target_residency; void* enter; scalar_t__ flags; int power_usage; } ;
struct cpuidle_device {int state_count; struct cpuidle_state* safe_state; struct cpuidle_state* states; int cpu; } ;
struct acpi_processor_cx {int type; int latency; int entry_method; int power; int desc; int valid; } ;
struct TYPE_5__ {scalar_t__ power; int bm_check; int has_cst; int power_setup_done; } ;
struct TYPE_4__ {struct acpi_processor_cx* states; struct cpuidle_device dev; } ;
struct acpi_processor {TYPE_2__ flags; TYPE_1__ power; int id; } ;
struct TYPE_6__ {int flags; } ;


 int ACPI_CSTATE_FFH ;
 int ACPI_FADT_C2_MP_SUPPORTED ;
 int ACPI_PROCESSOR_MAX_POWER ;



 int CPUIDLE_DESC_LEN ;
 int CPUIDLE_DRIVER_STATE_START ;
 scalar_t__ CPUIDLE_FLAG_BALANCED ;
 scalar_t__ CPUIDLE_FLAG_CHECK_BM ;
 scalar_t__ CPUIDLE_FLAG_DEEP ;
 scalar_t__ CPUIDLE_FLAG_SHALLOW ;
 scalar_t__ CPUIDLE_FLAG_TIME_VALID ;
 int CPUIDLE_NAME_LEN ;
 int CPUIDLE_STATE_MAX ;
 int EINVAL ;
 TYPE_3__ acpi_gbl_FADT ;
 void* acpi_idle_enter_bm ;
 void* acpi_idle_enter_c1 ;
 void* acpi_idle_enter_simple ;
 int cpuidle_set_statedata (struct cpuidle_state*,struct acpi_processor_cx*) ;
 int latency_factor ;
 int max_cstate ;
 int num_online_cpus () ;
 int snprintf (char*,int ,char*,int) ;
 int strncpy (char*,int ,int ) ;

__attribute__((used)) static int acpi_processor_setup_cpuidle(struct acpi_processor *pr)
{
 int i, count = CPUIDLE_DRIVER_STATE_START;
 struct acpi_processor_cx *cx;
 struct cpuidle_state *state;
 struct cpuidle_device *dev = &pr->power.dev;

 if (!pr->flags.power_setup_done)
  return -EINVAL;

 if (pr->flags.power == 0) {
  return -EINVAL;
 }

 dev->cpu = pr->id;
 for (i = 0; i < CPUIDLE_STATE_MAX; i++) {
  dev->states[i].name[0] = '\0';
  dev->states[i].desc[0] = '\0';
 }

 if (max_cstate == 0)
  max_cstate = 1;

 for (i = 1; i < ACPI_PROCESSOR_MAX_POWER && i <= max_cstate; i++) {
  cx = &pr->power.states[i];
  state = &dev->states[count];

  if (!cx->valid)
   continue;







  cpuidle_set_statedata(state, cx);

  snprintf(state->name, CPUIDLE_NAME_LEN, "C%d", i);
  strncpy(state->desc, cx->desc, CPUIDLE_DESC_LEN);
  state->exit_latency = cx->latency;
  state->target_residency = cx->latency * latency_factor;
  state->power_usage = cx->power;

  state->flags = 0;
  switch (cx->type) {
   case 130:
   state->flags |= CPUIDLE_FLAG_SHALLOW;
   if (cx->entry_method == ACPI_CSTATE_FFH)
    state->flags |= CPUIDLE_FLAG_TIME_VALID;

   state->enter = acpi_idle_enter_c1;
   dev->safe_state = state;
   break;

   case 129:
   state->flags |= CPUIDLE_FLAG_BALANCED;
   state->flags |= CPUIDLE_FLAG_TIME_VALID;
   state->enter = acpi_idle_enter_simple;
   dev->safe_state = state;
   break;

   case 128:
   state->flags |= CPUIDLE_FLAG_DEEP;
   state->flags |= CPUIDLE_FLAG_TIME_VALID;
   state->flags |= CPUIDLE_FLAG_CHECK_BM;
   state->enter = pr->flags.bm_check ?
     acpi_idle_enter_bm :
     acpi_idle_enter_simple;
   break;
  }

  count++;
  if (count == CPUIDLE_STATE_MAX)
   break;
 }

 dev->state_count = count;

 if (!count)
  return -EINVAL;

 return 0;
}
