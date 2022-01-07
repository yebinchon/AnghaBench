
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hash_pte {int dummy; } ;


 int HvCall2Ret16 (int ,struct hash_pte*,int ,int ) ;
 int HvCallHptGet ;

__attribute__((used)) static inline void HvCallHpt_get(struct hash_pte *hpte, u32 hpteIndex)
{
 HvCall2Ret16(HvCallHptGet, hpte, hpteIndex, 0);
}
