
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct hash_pte {int dummy; } ;


 int HvCall3Ret16 (int ,struct hash_pte*,int ,int ,int ) ;
 int HvCallHptFindNextValid ;

__attribute__((used)) static inline u64 HvCallHpt_findNextValid(struct hash_pte *hpte, u32 hpteIndex,
  u8 bitson, u8 bitsoff)
{
 return HvCall3Ret16(HvCallHptFindNextValid, hpte, hpteIndex,
   bitson, bitsoff);
}
