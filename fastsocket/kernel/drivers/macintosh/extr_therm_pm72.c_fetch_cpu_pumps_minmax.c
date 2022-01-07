
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int processor_part_num; } ;
struct cpu_pid_state {int pump_min; int pump_max; TYPE_1__ mpu; } ;


 int CPU_PUMP_OUTPUT_MAX ;
 int CPU_PUMP_OUTPUT_MIN ;
 struct cpu_pid_state* cpu_state ;
 int max (int,int) ;
 int memcpy (int**,int *,int) ;
 int min (int,int) ;

__attribute__((used)) static void fetch_cpu_pumps_minmax(void)
{
 struct cpu_pid_state *state0 = &cpu_state[0];
 struct cpu_pid_state *state1 = &cpu_state[1];
 u16 pump_min = 0, pump_max = 0xffff;
 u16 tmp[4];



 memcpy(&tmp, &state0->mpu.processor_part_num, 8);
 if (tmp[0] != 0xffff && tmp[1] != 0xffff) {
  pump_min = max(pump_min, tmp[0]);
  pump_max = min(pump_max, tmp[1]);
 }
 if (tmp[2] != 0xffff && tmp[3] != 0xffff) {
  pump_min = max(pump_min, tmp[2]);
  pump_max = min(pump_max, tmp[3]);
 }





 if (pump_min == pump_max || pump_min == 0 || pump_max == 0xffff) {
  pump_min = CPU_PUMP_OUTPUT_MIN;
  pump_max = CPU_PUMP_OUTPUT_MAX;
 }

 state0->pump_min = state1->pump_min = pump_min;
 state0->pump_max = state1->pump_max = pump_max;
}
