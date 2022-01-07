
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned long H_SUCCESS ;
 int panic (char*,unsigned long) ;
 unsigned long plpar_cppr (int ) ;

__attribute__((used)) static inline void lpar_cppr_info(u8 value)
{
 unsigned long lpar_rc;

 lpar_rc = plpar_cppr(value);
 if (lpar_rc != H_SUCCESS)
  panic("bad return code cppr - rc = %lx\n", lpar_rc);
}
