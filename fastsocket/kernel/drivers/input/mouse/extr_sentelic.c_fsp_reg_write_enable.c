
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 int FSP_BIT_EN_REG_CLK ;
 int FSP_REG_SYSCTL1 ;
 int fsp_reg_read (struct psmouse*,int ,int*) ;
 int fsp_reg_write (struct psmouse*,int ,int) ;

__attribute__((used)) static int fsp_reg_write_enable(struct psmouse *psmouse, bool enable)
{
 int v, nv;

 if (fsp_reg_read(psmouse, FSP_REG_SYSCTL1, &v) == -1)
  return -1;

 if (enable)
  nv = v | FSP_BIT_EN_REG_CLK;
 else
  nv = v & ~FSP_BIT_EN_REG_CLK;


 if (nv != v)
  if (fsp_reg_write(psmouse, FSP_REG_SYSCTL1, nv) == -1)
   return -1;

 return 0;
}
