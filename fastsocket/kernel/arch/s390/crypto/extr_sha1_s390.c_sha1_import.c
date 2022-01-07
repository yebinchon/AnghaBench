
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct sha1_state {int buffer; int state; int count; } ;
struct s390_sha_ctx {int func; int buf; int state; int count; } ;


 int KIMD_SHA_1 ;
 int memcpy (int ,int ,int) ;
 struct s390_sha_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha1_import(struct shash_desc *desc, const void *in)
{
 struct s390_sha_ctx *sctx = shash_desc_ctx(desc);
 const struct sha1_state *ictx = in;

 sctx->count = ictx->count;
 memcpy(sctx->state, ictx->state, sizeof(ictx->state));
 memcpy(sctx->buf, ictx->buffer, sizeof(ictx->buffer));
 sctx->func = KIMD_SHA_1;
 return 0;
}
