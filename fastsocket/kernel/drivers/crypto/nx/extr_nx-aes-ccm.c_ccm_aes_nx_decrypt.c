
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_blkcipher {int dummy; } ;
struct blkcipher_desc {int info; struct crypto_blkcipher* tfm; } ;
struct TYPE_2__ {scalar_t__ tfm; } ;
struct aead_request {TYPE_1__ base; int iv; } ;


 int ccm_nx_decrypt (struct aead_request*,struct blkcipher_desc*) ;
 int crypto_ccm_check_iv (int ) ;

__attribute__((used)) static int ccm_aes_nx_decrypt(struct aead_request *req)
{
 struct blkcipher_desc desc;
 int rc;

 desc.info = req->iv;
 desc.tfm = (struct crypto_blkcipher *)req->base.tfm;

 rc = crypto_ccm_check_iv(desc.info);
 if (rc)
  return rc;

 return ccm_nx_decrypt(req, &desc);
}
