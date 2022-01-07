
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRU_NUM_TFM ;
 int UV_MAX_INT_CORES ;
 int smp_processor_id () ;
 int uv_blade_processor_id () ;
 int uv_cpu_core_number (int) ;
 int uv_cpu_socket_number (int) ;

int gru_cpu_fault_map_id(void)
{



 int cpu = smp_processor_id();
 int id, core;

 core = uv_cpu_core_number(cpu);
 id = core + UV_MAX_INT_CORES * uv_cpu_socket_number(cpu);
 return id;

}
