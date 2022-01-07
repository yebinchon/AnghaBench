
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned long H_SUCCESS ;
 int get_hard_smp_processor_id (int) ;
 int panic (char*,unsigned long) ;
 unsigned long plpar_ipi (int ,int ) ;

__attribute__((used)) static inline void lpar_qirr_info(int n_cpu , u8 value)
{
 unsigned long lpar_rc;

 lpar_rc = plpar_ipi(get_hard_smp_processor_id(n_cpu), value);
 if (lpar_rc != H_SUCCESS)
  panic("bad return code qirr - rc = %lx\n", lpar_rc);
}
