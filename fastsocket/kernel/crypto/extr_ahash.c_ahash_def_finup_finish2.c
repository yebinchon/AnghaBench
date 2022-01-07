
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request_priv {int result; } ;
struct ahash_request {int result; struct ahash_request_priv* priv; } ;


 int EINPROGRESS ;
 int crypto_ahash_digestsize (int ) ;
 int crypto_ahash_reqtfm (struct ahash_request*) ;
 int kzfree (struct ahash_request_priv*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void ahash_def_finup_finish2(struct ahash_request *req, int err)
{
 struct ahash_request_priv *priv = req->priv;

 if (err == -EINPROGRESS)
  return;

 if (!err)
  memcpy(priv->result, req->result,
         crypto_ahash_digestsize(crypto_ahash_reqtfm(req)));

 kzfree(priv);
}
