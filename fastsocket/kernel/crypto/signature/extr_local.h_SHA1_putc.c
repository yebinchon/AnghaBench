
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct shash_desc {int dummy; } ;


 int crypto_shash_update (struct shash_desc*,int *,int) ;

__attribute__((used)) static inline void SHA1_putc(struct shash_desc *digest, uint8_t ch)
{
 crypto_shash_update(digest, &ch, 1);
}
