
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* iv; } ;
struct TYPE_6__ {TYPE_2__ gcm; } ;
struct nx_crypto_ctx {TYPE_3__ priv; } ;
struct TYPE_4__ {int tfm; } ;
struct aead_request {int iv; TYPE_1__ base; } ;


 struct nx_crypto_ctx* crypto_tfm_ctx (int ) ;
 int gcm_aes_nx_crypt (struct aead_request*,int ) ;
 int memcpy (char*,int ,int) ;

__attribute__((used)) static int gcm_aes_nx_decrypt(struct aead_request *req)
{
 struct nx_crypto_ctx *nx_ctx = crypto_tfm_ctx(req->base.tfm);
 char *iv = nx_ctx->priv.gcm.iv;

 memcpy(iv, req->iv, 12);

 return gcm_aes_nx_crypt(req, 0);
}
