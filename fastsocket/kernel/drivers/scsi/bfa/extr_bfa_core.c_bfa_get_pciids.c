
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_pciid_s {int member_1; int const member_0; } ;
typedef int __pciids ;
void
bfa_get_pciids(struct bfa_pciid_s **pciids, int *npciids)
{
 static struct bfa_pciid_s __pciids[] = {
  {128, 129},
  {128, 130},
  {128, 132},
  {128, 131},
 };

 *npciids = sizeof(__pciids) / sizeof(__pciids[0]);
 *pciids = __pciids;
}
