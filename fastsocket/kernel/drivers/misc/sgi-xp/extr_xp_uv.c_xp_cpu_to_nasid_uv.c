
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UV_PNODE_TO_NASID (int ) ;
 int uv_cpu_to_pnode (int) ;

__attribute__((used)) static int
xp_cpu_to_nasid_uv(int cpuid)
{

 return UV_PNODE_TO_NASID(uv_cpu_to_pnode(cpuid));
}
