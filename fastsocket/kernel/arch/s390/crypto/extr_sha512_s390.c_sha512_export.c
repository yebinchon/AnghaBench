
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct sha512_state {int buf; int state; scalar_t__* count; } ;
struct s390_sha_ctx {int buf; int state; scalar_t__ count; } ;


 int memcpy (int ,int ,int) ;
 struct s390_sha_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha512_export(struct shash_desc *desc, void *out)
{
 struct s390_sha_ctx *sctx = shash_desc_ctx(desc);
 struct sha512_state *octx = out;

 octx->count[0] = sctx->count;
 octx->count[1] = 0;
 memcpy(octx->state, sctx->state, sizeof(octx->state));
 memcpy(octx->buf, sctx->buf, sizeof(octx->buf));
 return 0;
}
