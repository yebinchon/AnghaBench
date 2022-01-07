
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tgr192_ctx {int nblocks; int count; int* hash; int c; int b; int a; } ;
struct shash_desc {int dummy; } ;
typedef int __le32 ;
typedef int __be64 ;


 int cpu_to_be64 (int ) ;
 int cpu_to_le32 (int) ;
 int memset (int*,int ,int) ;
 struct tgr192_ctx* shash_desc_ctx (struct shash_desc*) ;
 int tgr192_transform (struct tgr192_ctx*,int*) ;
 int tgr192_update (struct shash_desc*,int *,int ) ;

__attribute__((used)) static int tgr192_final(struct shash_desc *desc, u8 * out)
{
 struct tgr192_ctx *tctx = shash_desc_ctx(desc);
 __be64 *dst = (__be64 *)out;
 __be64 *be64p;
 __le32 *le32p;
 u32 t, msb, lsb;

 tgr192_update(desc, ((void*)0), 0); ;

 msb = 0;
 t = tctx->nblocks;
 if ((lsb = t << 6) < t) {
  msb++;
 }
 msb += t >> 26;
 t = lsb;
 if ((lsb = t + tctx->count) < t) {
  msb++;
 }
 t = lsb;
 if ((lsb = t << 3) < t) {
  msb++;
 }
 msb += t >> 29;

 if (tctx->count < 56) {
  tctx->hash[tctx->count++] = 0x01;
  while (tctx->count < 56) {
   tctx->hash[tctx->count++] = 0;
  }
 } else {
  tctx->hash[tctx->count++] = 0x01;
  while (tctx->count < 64) {
   tctx->hash[tctx->count++] = 0;
  }
  tgr192_update(desc, ((void*)0), 0); ;
  memset(tctx->hash, 0, 56);
 }

 le32p = (__le32 *)&tctx->hash[56];
 le32p[0] = cpu_to_le32(lsb);
 le32p[1] = cpu_to_le32(msb);

 tgr192_transform(tctx, tctx->hash);

 be64p = (__be64 *)tctx->hash;
 dst[0] = be64p[0] = cpu_to_be64(tctx->a);
 dst[1] = be64p[1] = cpu_to_be64(tctx->b);
 dst[2] = be64p[2] = cpu_to_be64(tctx->c);

 return 0;
}
