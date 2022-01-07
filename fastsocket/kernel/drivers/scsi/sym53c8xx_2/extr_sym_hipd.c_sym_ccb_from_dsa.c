
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sym_hcb {struct sym_ccb** ccbh; } ;
struct sym_ccb {scalar_t__ ccb_ba; struct sym_ccb* link_ccbh; } ;


 int CCB_HASH_CODE (scalar_t__) ;

__attribute__((used)) static struct sym_ccb *sym_ccb_from_dsa(struct sym_hcb *np, u32 dsa)
{
 int hcode;
 struct sym_ccb *cp;

 hcode = CCB_HASH_CODE(dsa);
 cp = np->ccbh[hcode];
 while (cp) {
  if (cp->ccb_ba == dsa)
   break;
  cp = cp->link_ccbh;
 }

 return cp;
}
