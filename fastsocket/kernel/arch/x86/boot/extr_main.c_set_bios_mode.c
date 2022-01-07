
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct biosregs {int ax; int bx; } ;


 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,int *) ;

__attribute__((used)) static void set_bios_mode(void)
{
}
