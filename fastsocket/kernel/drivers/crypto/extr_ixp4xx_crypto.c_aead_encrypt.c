
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_request {int iv; int cryptlen; scalar_t__ assoclen; } ;


 int aead_perform (struct aead_request*,int,scalar_t__,int ,int ) ;
 unsigned int crypto_aead_ivsize (int ) ;
 int crypto_aead_reqtfm (struct aead_request*) ;

__attribute__((used)) static int aead_encrypt(struct aead_request *req)
{
 unsigned ivsize = crypto_aead_ivsize(crypto_aead_reqtfm(req));
 return aead_perform(req, 1, req->assoclen + ivsize,
   req->cryptlen, req->iv);
}
