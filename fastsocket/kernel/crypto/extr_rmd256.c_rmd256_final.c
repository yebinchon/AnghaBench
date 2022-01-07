
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct shash_desc {int dummy; } ;
struct rmd256_ctx {int byte_count; int * state; } ;
typedef int bits ;
typedef int __le64 ;
typedef int __le32 ;


 int cpu_to_le32p (int *) ;
 int cpu_to_le64 (int) ;
 int memset (struct rmd256_ctx*,int ,int) ;
 int rmd256_update (struct shash_desc*,int const*,int) ;
 struct rmd256_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int rmd256_final(struct shash_desc *desc, u8 *out)
{
 struct rmd256_ctx *rctx = shash_desc_ctx(desc);
 u32 i, index, padlen;
 __le64 bits;
 __le32 *dst = (__le32 *)out;
 static const u8 padding[64] = { 0x80, };

 bits = cpu_to_le64(rctx->byte_count << 3);


 index = rctx->byte_count & 0x3f;
 padlen = (index < 56) ? (56 - index) : ((64+56) - index);
 rmd256_update(desc, padding, padlen);


 rmd256_update(desc, (const u8 *)&bits, sizeof(bits));


 for (i = 0; i < 8; i++)
  dst[i] = cpu_to_le32p(&rctx->state[i]);


 memset(rctx, 0, sizeof(*rctx));

 return 0;
}
