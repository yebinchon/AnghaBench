
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int get_csrbase () ;
 int ioremap (int ,int) ;

u32 get_vir_csrbase(void)
{
 return (u32) (ioremap(get_csrbase(), 0x10000));
}
