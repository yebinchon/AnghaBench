
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* tacc_tab ;

__attribute__((used)) static unsigned int get_tacc(unsigned long hclk_tns,
        unsigned long val)
{
 val &= 7;
 return hclk_tns * tacc_tab[val];
}
