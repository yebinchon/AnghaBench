
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pluto {int dummy; } ;


 int MISC_FRST ;
 int REG_MISC ;
 int pluto_readreg (struct pluto*,int ) ;
 int pluto_writereg (struct pluto*,int ,int) ;

__attribute__((used)) static void pluto_reset_frontend(struct pluto *pluto, int reenable)
{
 u32 val = pluto_readreg(pluto, REG_MISC);

 if (val & MISC_FRST) {
  val &= ~MISC_FRST;
  pluto_writereg(pluto, REG_MISC, val);
 }
 if (reenable) {
  val |= MISC_FRST;
  pluto_writereg(pluto, REG_MISC, val);
 }
}
