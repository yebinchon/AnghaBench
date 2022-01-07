
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int WP256_DIGEST_SIZE ;
 int WP512_DIGEST_SIZE ;
 int memcpy (int *,int *,int ) ;
 int memset (int *,int ,int ) ;
 int wp512_final (struct shash_desc*,int *) ;

__attribute__((used)) static int wp256_final(struct shash_desc *desc, u8 *out)
{
 u8 D[64];

 wp512_final(desc, D);
 memcpy (out, D, WP256_DIGEST_SIZE);
 memset (D, 0, WP512_DIGEST_SIZE);

 return 0;
}
