
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nx_stats {int dummy; } ;
struct TYPE_4__ {scalar_t__ flags; int status; } ;
struct TYPE_5__ {TYPE_1__ of; int stats; } ;


 int NX_DEBUGFS_INIT (TYPE_2__*) ;
 scalar_t__ NX_OF_FLAG_MASK_READY ;
 int NX_OKAY ;
 int crypto_register_alg (int *) ;
 int crypto_register_shash (int *) ;
 int crypto_unregister_alg (int *) ;
 int crypto_unregister_shash (int *) ;
 int memset (int *,int ,int) ;
 int nx_cbc_aes_alg ;
 int nx_ccm4309_aes_alg ;
 int nx_ccm_aes_alg ;
 int nx_ctr3686_aes_alg ;
 int nx_ctr_aes_alg ;
 TYPE_2__ nx_driver ;
 int nx_ecb_aes_alg ;
 int nx_gcm4106_aes_alg ;
 int nx_gcm_aes_alg ;
 int nx_shash_aes_xcbc_alg ;
 int nx_shash_sha256_alg ;
 int nx_shash_sha512_alg ;

__attribute__((used)) static int nx_register_algs(void)
{
 int rc = -1;

 if (nx_driver.of.flags != NX_OF_FLAG_MASK_READY)
  goto out;

 memset(&nx_driver.stats, 0, sizeof(struct nx_stats));

 rc = NX_DEBUGFS_INIT(&nx_driver);
 if (rc)
  goto out;

 nx_driver.of.status = NX_OKAY;

 rc = crypto_register_alg(&nx_ecb_aes_alg);
 if (rc)
  goto out;

 rc = crypto_register_alg(&nx_cbc_aes_alg);
 if (rc)
  goto out_unreg_ecb;

 rc = crypto_register_alg(&nx_ctr_aes_alg);
 if (rc)
  goto out_unreg_cbc;

 rc = crypto_register_alg(&nx_ctr3686_aes_alg);
 if (rc)
  goto out_unreg_ctr;

 rc = crypto_register_alg(&nx_gcm_aes_alg);
 if (rc)
  goto out_unreg_ctr3686;

 rc = crypto_register_alg(&nx_gcm4106_aes_alg);
 if (rc)
  goto out_unreg_gcm;

 rc = crypto_register_alg(&nx_ccm_aes_alg);
 if (rc)
  goto out_unreg_gcm4106;

 rc = crypto_register_alg(&nx_ccm4309_aes_alg);
 if (rc)
  goto out_unreg_ccm;

 rc = crypto_register_shash(&nx_shash_sha256_alg);
 if (rc)
  goto out_unreg_ccm4309;

 rc = crypto_register_shash(&nx_shash_sha512_alg);
 if (rc)
  goto out_unreg_s256;

 rc = crypto_register_shash(&nx_shash_aes_xcbc_alg);
 if (rc)
  goto out_unreg_s512;

 goto out;

out_unreg_s512:
 crypto_unregister_shash(&nx_shash_sha512_alg);
out_unreg_s256:
 crypto_unregister_shash(&nx_shash_sha256_alg);
out_unreg_ccm4309:
 crypto_unregister_alg(&nx_ccm4309_aes_alg);
out_unreg_ccm:
 crypto_unregister_alg(&nx_ccm_aes_alg);
out_unreg_gcm4106:
 crypto_unregister_alg(&nx_gcm4106_aes_alg);
out_unreg_gcm:
 crypto_unregister_alg(&nx_gcm_aes_alg);
out_unreg_ctr3686:
 crypto_unregister_alg(&nx_ctr3686_aes_alg);
out_unreg_ctr:
 crypto_unregister_alg(&nx_ctr_aes_alg);
out_unreg_cbc:
 crypto_unregister_alg(&nx_cbc_aes_alg);
out_unreg_ecb:
 crypto_unregister_alg(&nx_ecb_aes_alg);
out:
 return rc;
}
