
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct sha256_state {int count; int * buf; int state; } ;


 int memcpy (int *,int const*,unsigned int) ;
 int sha256_transform (int ,int const*) ;
 struct sha256_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha256_update(struct shash_desc *desc, const u8 *data,
     unsigned int len)
{
 struct sha256_state *sctx = shash_desc_ctx(desc);
 unsigned int partial, done;
 const u8 *src;

 partial = sctx->count & 0x3f;
 sctx->count += len;
 done = 0;
 src = data;

 if ((partial + len) > 63) {
  if (partial) {
   done = -partial;
   memcpy(sctx->buf + partial, data, done + 64);
   src = sctx->buf;
  }

  do {
   sha256_transform(sctx->state, src);
   done += 64;
   src = data + done;
  } while (done + 63 < len);

  partial = 0;
 }
 memcpy(sctx->buf + partial, src, len - done);

 return 0;
}
