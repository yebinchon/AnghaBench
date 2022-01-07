
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pluto {int dummy; } ;


 int REG_TSCR ;
 int TSCR_RSTN ;
 int pluto_readreg (struct pluto*,int ) ;
 int pluto_write_tscr (struct pluto*,int) ;

__attribute__((used)) static void pluto_reset_ts(struct pluto *pluto, int reenable)
{
 u32 val = pluto_readreg(pluto, REG_TSCR);

 if (val & TSCR_RSTN) {
  val &= ~TSCR_RSTN;
  pluto_write_tscr(pluto, val);
 }
 if (reenable) {
  val |= TSCR_RSTN;
  pluto_write_tscr(pluto, val);
 }
}
