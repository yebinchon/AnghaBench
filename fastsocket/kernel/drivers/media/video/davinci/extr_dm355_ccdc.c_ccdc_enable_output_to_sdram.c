
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CCDC_SYNCEN_WEN_MASK ;
 int CCDC_SYNCEN_WEN_SHIFT ;
 int SYNCEN ;
 unsigned int regr (int ) ;
 int regw (unsigned int,int ) ;

__attribute__((used)) static void ccdc_enable_output_to_sdram(int en)
{
 unsigned int temp;
 temp = regr(SYNCEN);
 temp &= (~(CCDC_SYNCEN_WEN_MASK));
 temp |= ((en << CCDC_SYNCEN_WEN_SHIFT) & CCDC_SYNCEN_WEN_MASK);
 regw(temp, SYNCEN);
}
