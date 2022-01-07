
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIC_NMIC_ENABLE ;
 int NMIC ;
 int eic_writel (scalar_t__,int ,int ) ;
 scalar_t__ nmi_eic ;
 int nmi_enabled ;

int nmi_enable(void)
{
 nmi_enabled = 1;

 if (nmi_eic)
  eic_writel(nmi_eic, NMIC, EIC_NMIC_ENABLE);

 return 0;
}
