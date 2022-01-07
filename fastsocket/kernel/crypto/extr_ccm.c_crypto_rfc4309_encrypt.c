
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_request {int dummy; } ;


 int crypto_aead_encrypt (struct aead_request*) ;
 struct aead_request* crypto_rfc4309_crypt (struct aead_request*) ;

__attribute__((used)) static int crypto_rfc4309_encrypt(struct aead_request *req)
{
 req = crypto_rfc4309_crypt(req);

 return crypto_aead_encrypt(req);
}
