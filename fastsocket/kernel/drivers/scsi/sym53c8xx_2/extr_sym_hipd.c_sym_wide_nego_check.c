
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct sym_hcb {scalar_t__* msgin; scalar_t__ maxwide; scalar_t__* msgout; } ;
struct sym_ccb {int target; int cmd; } ;


 int DEBUG_FLAGS ;
 int DEBUG_NEGO ;
 scalar_t__ M_NOOP ;
 int spi_populate_width_msg (scalar_t__*,scalar_t__) ;
 int sym_print_addr (int ,char*,scalar_t__,scalar_t__) ;
 int sym_print_nego_msg (struct sym_hcb*,int,char*,scalar_t__*) ;
 int sym_setwide (struct sym_hcb*,int,scalar_t__) ;

__attribute__((used)) static int
sym_wide_nego_check(struct sym_hcb *np, int req, struct sym_ccb *cp)
{
 int target = cp->target;
 u_char chg, wide;

 if (DEBUG_FLAGS & DEBUG_NEGO) {
  sym_print_nego_msg(np, target, "wide msgin", np->msgin);
 }




 chg = 0;
 wide = np->msgin[3];




 if (wide > np->maxwide) {
  chg = 1;
  wide = np->maxwide;
 }

 if (DEBUG_FLAGS & DEBUG_NEGO) {
  sym_print_addr(cp->cmd, "wdtr: wide=%d chg=%d.\n",
    wide, chg);
 }





 if (!req && chg)
  goto reject_it;




 sym_setwide (np, target, wide);




 if (!req)
  return 0;




 spi_populate_width_msg(np->msgout, wide);

 np->msgin [0] = M_NOOP;

 if (DEBUG_FLAGS & DEBUG_NEGO) {
  sym_print_nego_msg(np, target, "wide msgout", np->msgout);
 }

 return 0;

reject_it:
 return -1;
}
