
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int BUG_ON (int) ;
 int XP_MAX_NPARTITIONS_UV ;
 int is_uv () ;
 int sn_partition_id ;
 int sn_region_size ;
 int xpSuccess ;
 int xp_cpu_to_nasid ;
 int xp_cpu_to_nasid_uv ;
 int xp_expand_memprotect ;
 int xp_expand_memprotect_uv ;
 int xp_max_npartitions ;
 int xp_pa ;
 int xp_pa_uv ;
 int xp_partition_id ;
 int xp_region_size ;
 int xp_remote_memcpy ;
 int xp_remote_memcpy_uv ;
 int xp_restrict_memprotect ;
 int xp_restrict_memprotect_uv ;
 int xp_socket_pa ;
 int xp_socket_pa_uv ;

enum xp_retval
xp_init_uv(void)
{
 BUG_ON(!is_uv());

 xp_max_npartitions = XP_MAX_NPARTITIONS_UV;
 xp_partition_id = sn_partition_id;
 xp_region_size = sn_region_size;

 xp_pa = xp_pa_uv;
 xp_socket_pa = xp_socket_pa_uv;
 xp_remote_memcpy = xp_remote_memcpy_uv;
 xp_cpu_to_nasid = xp_cpu_to_nasid_uv;
 xp_expand_memprotect = xp_expand_memprotect_uv;
 xp_restrict_memprotect = xp_restrict_memprotect_uv;

 return xpSuccess;
}
