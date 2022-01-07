
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct dm_target {char* error; struct crypt_config* private; } ;
struct crypt_config {char* cipher_mode; TYPE_1__* iv_gen_ops; scalar_t__ iv_size; int tfm; void* cipher; } ;
struct TYPE_6__ {int (* ctr ) (struct crypt_config*,struct dm_target*,char*) ;int (* init ) (struct crypt_config*) ;} ;


 int CRYPTO_MAX_ALG_NAME ;
 int DMWARN (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 TYPE_1__ crypt_iv_benbi_ops ;
 TYPE_1__ crypt_iv_essiv_ops ;
 TYPE_1__ crypt_iv_null_ops ;
 TYPE_1__ crypt_iv_plain64_ops ;
 TYPE_1__ crypt_iv_plain_ops ;
 int crypt_set_key (struct crypt_config*,char*) ;
 scalar_t__ crypto_ablkcipher_ivsize (int ) ;
 int crypto_alloc_ablkcipher (char*,int ,int ) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 void* kstrdup (char*,int ) ;
 scalar_t__ max (scalar_t__,unsigned int) ;
 int snprintf (char*,int ,char*,char*,char*) ;
 scalar_t__ strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strsep (char**,char*) ;
 int stub1 (struct crypt_config*,struct dm_target*,char*) ;
 int stub2 (struct crypt_config*) ;

__attribute__((used)) static int crypt_ctr_cipher(struct dm_target *ti,
       char *cipher_in, char *key)
{
 struct crypt_config *cc = ti->private;
 char *tmp, *cipher, *chainmode, *ivmode, *ivopts;
 char *cipher_api = ((void*)0);
 int ret = -EINVAL;


 if (strchr(cipher_in, '(')) {
  ti->error = "Bad cipher specification";
  return -EINVAL;
 }





 tmp = cipher_in;
 cipher = strsep(&tmp, "-");

 cc->cipher = kstrdup(cipher, GFP_KERNEL);
 if (!cc->cipher)
  goto bad_mem;

 if (tmp) {
  cc->cipher_mode = kstrdup(tmp, GFP_KERNEL);
  if (!cc->cipher_mode)
   goto bad_mem;
 }

 chainmode = strsep(&tmp, "-");
 ivopts = strsep(&tmp, "-");
 ivmode = strsep(&ivopts, ":");

 if (tmp)
  DMWARN("Ignoring unexpected additional cipher options");


 if (!chainmode || (!strcmp(chainmode, "plain") && !ivmode)) {
  kfree(cc->cipher_mode);
  cc->cipher_mode = kstrdup("cbc-plain", GFP_KERNEL);
  chainmode = "cbc";
  ivmode = "plain";
 }

 if (strcmp(chainmode, "ecb") && !ivmode) {
  ti->error = "IV mechanism required";
  return -EINVAL;
 }

 cipher_api = kmalloc(CRYPTO_MAX_ALG_NAME, GFP_KERNEL);
 if (!cipher_api)
  goto bad_mem;

 ret = snprintf(cipher_api, CRYPTO_MAX_ALG_NAME,
         "%s(%s)", chainmode, cipher);
 if (ret < 0) {
  kfree(cipher_api);
  goto bad_mem;
 }


 cc->tfm = crypto_alloc_ablkcipher(cipher_api, 0, 0);
 if (IS_ERR(cc->tfm)) {
  ret = PTR_ERR(cc->tfm);
  ti->error = "Error allocating crypto tfm";
  goto bad;
 }


 ret = crypt_set_key(cc, key);
 if (ret < 0) {
  ti->error = "Error decoding and setting key";
  goto bad;
 }


 cc->iv_size = crypto_ablkcipher_ivsize(cc->tfm);
 if (cc->iv_size)

  cc->iv_size = max(cc->iv_size,
      (unsigned int)(sizeof(u64) / sizeof(u8)));
 else if (ivmode) {
  DMWARN("Selected cipher does not support IVs");
  ivmode = ((void*)0);
 }


 if (ivmode == ((void*)0))
  cc->iv_gen_ops = ((void*)0);
 else if (strcmp(ivmode, "plain") == 0)
  cc->iv_gen_ops = &crypt_iv_plain_ops;
 else if (strcmp(ivmode, "plain64") == 0)
  cc->iv_gen_ops = &crypt_iv_plain64_ops;
 else if (strcmp(ivmode, "essiv") == 0)
  cc->iv_gen_ops = &crypt_iv_essiv_ops;
 else if (strcmp(ivmode, "benbi") == 0)
  cc->iv_gen_ops = &crypt_iv_benbi_ops;
 else if (strcmp(ivmode, "null") == 0)
  cc->iv_gen_ops = &crypt_iv_null_ops;
 else {
  ret = -EINVAL;
  ti->error = "Invalid IV mode";
  goto bad;
 }


 if (cc->iv_gen_ops && cc->iv_gen_ops->ctr) {
  ret = cc->iv_gen_ops->ctr(cc, ti, ivopts);
  if (ret < 0) {
   ti->error = "Error creating IV";
   goto bad;
  }
 }


 if (cc->iv_gen_ops && cc->iv_gen_ops->init) {
  ret = cc->iv_gen_ops->init(cc);
  if (ret < 0) {
   ti->error = "Error initialising IV";
   goto bad;
  }
 }

 ret = 0;
bad:
 kfree(cipher_api);
 return ret;

bad_mem:
 ti->error = "Cannot allocate cipher strings";
 return -ENOMEM;
}
