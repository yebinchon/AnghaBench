
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long H_SUCCESS ;
 int panic (char*,unsigned long,unsigned int) ;
 unsigned long plpar_eoi (unsigned int) ;

__attribute__((used)) static inline void lpar_xirr_info_set(unsigned int value)
{
 unsigned long lpar_rc;

 lpar_rc = plpar_eoi(value);
 if (lpar_rc != H_SUCCESS)
  panic("bad return code EOI - rc = %ld, value=%x\n", lpar_rc,
        value);
}
