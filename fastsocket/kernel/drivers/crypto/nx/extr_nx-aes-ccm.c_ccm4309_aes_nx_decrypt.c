
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int* iv; int nonce; } ;
struct TYPE_6__ {TYPE_2__ ccm; } ;
struct nx_crypto_ctx {TYPE_3__ priv; } ;
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_desc {int* info; struct crypto_blkcipher* tfm; } ;
struct TYPE_4__ {scalar_t__ tfm; } ;
struct aead_request {TYPE_1__ base; int iv; } ;


 int ccm_nx_decrypt (struct aead_request*,struct blkcipher_desc*) ;
 struct nx_crypto_ctx* crypto_tfm_ctx (scalar_t__) ;
 int memcpy (int*,int ,int) ;

__attribute__((used)) static int ccm4309_aes_nx_decrypt(struct aead_request *req)
{
 struct nx_crypto_ctx *nx_ctx = crypto_tfm_ctx(req->base.tfm);
 struct blkcipher_desc desc;
 u8 *iv = nx_ctx->priv.ccm.iv;

 iv[0] = 3;
 memcpy(iv + 1, nx_ctx->priv.ccm.nonce, 3);
 memcpy(iv + 4, req->iv, 8);

 desc.info = iv;
 desc.tfm = (struct crypto_blkcipher *)req->base.tfm;

 return ccm_nx_decrypt(req, &desc);
}
