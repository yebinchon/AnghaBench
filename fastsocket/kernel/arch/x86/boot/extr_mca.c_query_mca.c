
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct biosregs {int ah; int eflags; int bx; int es; } ;
struct TYPE_2__ {int sys_desc_table; } ;


 int X86_EFLAGS_CF ;
 TYPE_1__ boot_params ;
 int copy_from_fs (int *,int ,int) ;
 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,struct biosregs*) ;
 int rdfs16 (int ) ;
 int set_fs (int ) ;

int query_mca(void)
{
 struct biosregs ireg, oreg;
 u16 len;

 initregs(&ireg);
 ireg.ah = 0xc0;
 intcall(0x15, &ireg, &oreg);

 if (oreg.eflags & X86_EFLAGS_CF)
  return -1;

 set_fs(oreg.es);
 len = rdfs16(oreg.bx);

 if (len > sizeof(boot_params.sys_desc_table))
  len = sizeof(boot_params.sys_desc_table);

 copy_from_fs(&boot_params.sys_desc_table, oreg.bx, len);
 return 0;
}
