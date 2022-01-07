
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int H_VTERM_PARTNER_INFO ;
 int hvcs_convert (long) ;
 long plpar_hcall_norets (int ,int ,unsigned long,unsigned long,int ) ;
 int virt_to_phys (unsigned long*) ;

__attribute__((used)) static int hvcs_next_partner(uint32_t unit_address,
  unsigned long last_p_partition_ID,
  unsigned long last_p_unit_address, unsigned long *pi_buff)

{
 long retval;
 retval = plpar_hcall_norets(H_VTERM_PARTNER_INFO, unit_address,
   last_p_partition_ID,
    last_p_unit_address, virt_to_phys(pi_buff));
 return hvcs_convert(retval);
}
