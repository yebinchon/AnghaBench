
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_async_request {struct aead_request* data; } ;
struct aead_request {int dummy; } ;


 int __gcm_hash_assoc_done (struct aead_request*,int) ;

__attribute__((used)) static void gcm_hash_assoc_done(struct crypto_async_request *areq, int err)
{
 struct aead_request *req = areq->data;

 __gcm_hash_assoc_done(req, err);
}
