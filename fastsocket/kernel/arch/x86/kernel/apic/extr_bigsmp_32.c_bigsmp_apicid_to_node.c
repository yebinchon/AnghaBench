
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* apicid_2_node ;
 size_t hard_smp_processor_id () ;

__attribute__((used)) static int bigsmp_apicid_to_node(int logical_apicid)
{
 return apicid_2_node[hard_smp_processor_id()];
}
