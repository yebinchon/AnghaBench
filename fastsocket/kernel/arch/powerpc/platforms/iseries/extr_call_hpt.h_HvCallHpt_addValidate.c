
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hash_pte {int r; int v; } ;


 int HvCall4 (int ,int ,int ,int ,int ) ;
 int HvCallHptAddValidate ;

__attribute__((used)) static inline void HvCallHpt_addValidate(u32 hpteIndex, u32 hBit,
      struct hash_pte *hpte)
{
 HvCall4(HvCallHptAddValidate, hpteIndex, hBit, hpte->v, hpte->r);
}
