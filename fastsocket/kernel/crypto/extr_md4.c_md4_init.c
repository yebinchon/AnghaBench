
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct md4_ctx {int* hash; scalar_t__ byte_count; } ;


 struct md4_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int md4_init(struct shash_desc *desc)
{
 struct md4_ctx *mctx = shash_desc_ctx(desc);

 mctx->hash[0] = 0x67452301;
 mctx->hash[1] = 0xefcdab89;
 mctx->hash[2] = 0x98badcfe;
 mctx->hash[3] = 0x10325476;
 mctx->byte_count = 0;

 return 0;
}
