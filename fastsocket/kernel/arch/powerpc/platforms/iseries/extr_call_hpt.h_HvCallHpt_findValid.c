
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hash_pte {int dummy; } ;


 int HvCall3Ret16 (int ,struct hash_pte*,int ,int ,int ) ;
 int HvCallHptFindValid ;

__attribute__((used)) static inline u64 HvCallHpt_findValid(struct hash_pte *hpte, u64 vpn)
{
 return HvCall3Ret16(HvCallHptFindValid, hpte, vpn, 0, 0);
}
