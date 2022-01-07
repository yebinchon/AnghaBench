
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int padlock_sha256_finup (struct shash_desc*,int *,int ,int *) ;

__attribute__((used)) static int padlock_sha256_final(struct shash_desc *desc, u8 *out)
{
 u8 buf[4];

 return padlock_sha256_finup(desc, buf, 0, out);
}
