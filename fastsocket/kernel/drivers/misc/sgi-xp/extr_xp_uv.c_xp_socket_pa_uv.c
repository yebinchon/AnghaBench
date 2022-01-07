
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long uv_gpa_to_soc_phys_ram (unsigned long) ;

__attribute__((used)) static unsigned long
xp_socket_pa_uv(unsigned long gpa)
{
 return uv_gpa_to_soc_phys_ram(gpa);
}
