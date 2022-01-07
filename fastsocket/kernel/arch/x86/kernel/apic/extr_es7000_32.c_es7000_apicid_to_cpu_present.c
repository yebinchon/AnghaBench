
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int physid_mask_t ;


 int cpu_id ;
 int physid_mask_of_physid (int ) ;

__attribute__((used)) static physid_mask_t es7000_apicid_to_cpu_present(int phys_apicid)
{
 physid_mask_t mask;

 mask = physid_mask_of_physid(cpu_id);
 ++cpu_id;

 return mask;
}
