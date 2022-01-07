
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;
struct scatter_walk {int sg; } ;
struct crypto_cipher {int dummy; } ;
struct crypto_ccm_req_priv_ctx {int ilen; int * idata; int * odata; int flags; } ;


 int compute_mac (struct crypto_cipher*,int *,int,struct crypto_ccm_req_priv_ctx*) ;
 int crypto_cipher_encrypt_one (struct crypto_cipher*,int *,int *) ;
 int crypto_xor (int *,int *,int) ;
 int crypto_yield (int ) ;
 int memset (int *,int ,int) ;
 int scatterwalk_advance (struct scatter_walk*,int) ;
 int scatterwalk_clamp (struct scatter_walk*,unsigned int) ;
 int scatterwalk_done (struct scatter_walk*,int ,unsigned int) ;
 int * scatterwalk_map (struct scatter_walk*,int ) ;
 int scatterwalk_start (struct scatter_walk*,struct scatterlist*) ;
 int scatterwalk_unmap (int *,int ) ;
 struct scatterlist* sg_next (int ) ;

__attribute__((used)) static void get_data_to_compute(struct crypto_cipher *tfm,
          struct crypto_ccm_req_priv_ctx *pctx,
          struct scatterlist *sg, unsigned int len)
{
 struct scatter_walk walk;
 u8 *data_src;
 int n;

 scatterwalk_start(&walk, sg);

 while (len) {
  n = scatterwalk_clamp(&walk, len);
  if (!n) {
   scatterwalk_start(&walk, sg_next(walk.sg));
   n = scatterwalk_clamp(&walk, len);
  }
  data_src = scatterwalk_map(&walk, 0);

  compute_mac(tfm, data_src, n, pctx);
  len -= n;

  scatterwalk_unmap(data_src, 0);
  scatterwalk_advance(&walk, n);
  scatterwalk_done(&walk, 0, len);
  if (len)
   crypto_yield(pctx->flags);
 }


 if (pctx->ilen) {
  int padlen;
  u8 *odata = pctx->odata;
  u8 *idata = pctx->idata;

  padlen = 16 - pctx->ilen;
  memset(idata + pctx->ilen, 0, padlen);
  crypto_xor(odata, idata, 16);
  crypto_cipher_encrypt_one(tfm, odata, odata);
  pctx->ilen = 0;
 }
}
