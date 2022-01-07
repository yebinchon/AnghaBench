
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {int core; void* tc_id; void* vpe_id; } ;


 int ST0_IM ;
 int STATUSF_IP3 ;
 int STATUSF_IP4 ;
 int STATUSF_IP6 ;
 int STATUSF_IP7 ;
 void* TCBIND_CURTC ;
 void* TCBIND_CURTC_SHIFT ;
 void* TCBIND_CURVPE ;
 void* TCBIND_CURVPE_SHIFT ;
 int change_c0_status (int ,int) ;
 struct cpuinfo_mips current_cpu_data ;
 int read_c0_ebase () ;
 void* read_c0_tcbind () ;

__attribute__((used)) static void cmp_init_secondary(void)
{
 struct cpuinfo_mips *c = &current_cpu_data;


 change_c0_status(ST0_IM, STATUSF_IP3 | STATUSF_IP4 | STATUSF_IP6 |
     STATUSF_IP7);



 c->core = (read_c0_ebase() >> 1) & 0xff;






}
