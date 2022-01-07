
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hdr; } ;
struct talitos_edesc {TYPE_1__ desc; } ;
struct talitos_ctx {int desc_hdr_template; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int dummy; } ;


 int DESC_HDR_MODE0_ENCRYPT ;
 scalar_t__ IS_ERR (struct talitos_edesc*) ;
 int PTR_ERR (struct talitos_edesc*) ;
 int ablkcipher_done ;
 struct talitos_edesc* ablkcipher_edesc_alloc (struct ablkcipher_request*) ;
 int common_nonsnoop (struct talitos_edesc*,struct ablkcipher_request*,int *,int ) ;
 struct talitos_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;

__attribute__((used)) static int ablkcipher_encrypt(struct ablkcipher_request *areq)
{
 struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(areq);
 struct talitos_ctx *ctx = crypto_ablkcipher_ctx(cipher);
 struct talitos_edesc *edesc;


 edesc = ablkcipher_edesc_alloc(areq);
 if (IS_ERR(edesc))
  return PTR_ERR(edesc);


 edesc->desc.hdr = ctx->desc_hdr_template | DESC_HDR_MODE0_ENCRYPT;

 return common_nonsnoop(edesc, areq, ((void*)0), ablkcipher_done);
}
