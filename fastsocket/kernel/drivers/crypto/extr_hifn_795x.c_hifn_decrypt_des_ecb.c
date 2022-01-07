
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_request {int dummy; } ;


 int ACRYPTO_MODE_ECB ;
 int ACRYPTO_OP_DECRYPT ;
 int ACRYPTO_TYPE_DES ;
 int hifn_setup_crypto (struct ablkcipher_request*,int ,int ,int ) ;

__attribute__((used)) static inline int hifn_decrypt_des_ecb(struct ablkcipher_request *req)
{
 return hifn_setup_crypto(req, ACRYPTO_OP_DECRYPT,
   ACRYPTO_TYPE_DES, ACRYPTO_MODE_ECB);
}
