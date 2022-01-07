
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int physid_mask_t ;


 int physid_mask_of_physid (int ) ;

__attribute__((used)) static physid_mask_t summit_apicid_to_cpu_present(int apicid)
{
 return physid_mask_of_physid(0);
}
