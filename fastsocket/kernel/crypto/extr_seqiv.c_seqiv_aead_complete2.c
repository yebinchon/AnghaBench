
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct aead_request {int iv; } ;
struct TYPE_2__ {int iv; } ;
struct aead_givcrypt_request {TYPE_1__ areq; } ;


 int EINPROGRESS ;
 struct aead_request* aead_givcrypt_reqctx (struct aead_givcrypt_request*) ;
 struct crypto_aead* aead_givcrypt_reqtfm (struct aead_givcrypt_request*) ;
 int crypto_aead_ivsize (struct crypto_aead*) ;
 int kfree (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void seqiv_aead_complete2(struct aead_givcrypt_request *req, int err)
{
 struct aead_request *subreq = aead_givcrypt_reqctx(req);
 struct crypto_aead *geniv;

 if (err == -EINPROGRESS)
  return;

 if (err)
  goto out;

 geniv = aead_givcrypt_reqtfm(req);
 memcpy(req->areq.iv, subreq->iv, crypto_aead_ivsize(geniv));

out:
 kfree(subreq->iv);
}
