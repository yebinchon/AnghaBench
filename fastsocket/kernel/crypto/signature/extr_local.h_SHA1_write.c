
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;


 int crypto_shash_update (struct shash_desc*,void const*,size_t) ;

__attribute__((used)) static inline void SHA1_write(struct shash_desc *digest, const void *s, size_t n)
{
 crypto_shash_update(digest, s, n);
}
