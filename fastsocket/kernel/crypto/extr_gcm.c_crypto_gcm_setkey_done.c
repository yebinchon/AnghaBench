
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_gcm_setkey_result {int err; int completion; } ;
struct crypto_async_request {struct crypto_gcm_setkey_result* data; } ;


 int EINPROGRESS ;
 int complete (int *) ;

__attribute__((used)) static void crypto_gcm_setkey_done(struct crypto_async_request *req, int err)
{
 struct crypto_gcm_setkey_result *result = req->data;

 if (err == -EINPROGRESS)
  return;

 result->err = err;
 complete(&result->completion);
}
