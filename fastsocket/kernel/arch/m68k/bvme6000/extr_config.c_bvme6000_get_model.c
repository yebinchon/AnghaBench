
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CPU_68060 ;
 scalar_t__ m68k_cputype ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void bvme6000_get_model(char *model)
{
    sprintf(model, "BVME%d000", m68k_cputype == CPU_68060 ? 6 : 4);
}
