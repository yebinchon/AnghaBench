
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct niu {int dummy; } ;


 int BMAC_HASH_TBL (int) ;
 int nw64_mac (int ,int ) ;

__attribute__((used)) static void niu_load_hash_bmac(struct niu *np, u16 *hash)
{
 int i;

 for (i = 0; i < 16; i++)
  nw64_mac(BMAC_HASH_TBL(i), hash[i]);
}
