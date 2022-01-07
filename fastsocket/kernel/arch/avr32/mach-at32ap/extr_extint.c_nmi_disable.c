
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NMIC ;
 int eic_writel (scalar_t__,int ,int ) ;
 scalar_t__ nmi_eic ;
 int nmi_enabled ;

void nmi_disable(void)
{
 if (nmi_eic)
  eic_writel(nmi_eic, NMIC, 0);

 nmi_enabled = 0;
}
