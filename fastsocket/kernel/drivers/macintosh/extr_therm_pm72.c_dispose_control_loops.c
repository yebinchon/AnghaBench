
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backside_state ;
 int * cpu_state ;
 int dimms_state ;
 int dispose_backside_state (int *) ;
 int dispose_cpu_state (int *) ;
 int dispose_dimms_state (int *) ;
 int dispose_drives_state (int *) ;
 int dispose_slots_state (int *) ;
 int drives_state ;
 int slots_state ;

__attribute__((used)) static void dispose_control_loops(void)
{
 dispose_cpu_state(&cpu_state[0]);
 dispose_cpu_state(&cpu_state[1]);
 dispose_backside_state(&backside_state);
 dispose_drives_state(&drives_state);
 dispose_slots_state(&slots_state);
 dispose_dimms_state(&dimms_state);
}
