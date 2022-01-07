
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int BUG_ON (int) ;
 int XP_MAX_NPARTITIONS_SN2 ;
 int is_shub () ;
 int sn_partition_id ;
 int sn_region_size ;
 int xp_cpu_to_nasid ;
 int xp_cpu_to_nasid_sn2 ;
 int xp_expand_memprotect ;
 int xp_expand_memprotect_sn2 ;
 int xp_max_npartitions ;
 int xp_pa ;
 int xp_pa_sn2 ;
 int xp_partition_id ;
 int xp_region_size ;
 int xp_register_nofault_code_sn2 () ;
 int xp_remote_memcpy ;
 int xp_remote_memcpy_sn2 ;
 int xp_restrict_memprotect ;
 int xp_restrict_memprotect_sn2 ;
 int xp_socket_pa ;
 int xp_socket_pa_sn2 ;

enum xp_retval
xp_init_sn2(void)
{
 BUG_ON(!is_shub());

 xp_max_npartitions = XP_MAX_NPARTITIONS_SN2;
 xp_partition_id = sn_partition_id;
 xp_region_size = sn_region_size;

 xp_pa = xp_pa_sn2;
 xp_socket_pa = xp_socket_pa_sn2;
 xp_remote_memcpy = xp_remote_memcpy_sn2;
 xp_cpu_to_nasid = xp_cpu_to_nasid_sn2;
 xp_expand_memprotect = xp_expand_memprotect_sn2;
 xp_restrict_memprotect = xp_restrict_memprotect_sn2;

 return xp_register_nofault_code_sn2();
}
