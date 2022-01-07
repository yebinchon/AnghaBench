
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int hwrng_register (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * zcrypt_rng_buffer ;
 scalar_t__ zcrypt_rng_buffer_index ;
 int zcrypt_rng_dev ;
 int zcrypt_rng_device_count ;
 int zcrypt_rng_mutex ;

__attribute__((used)) static int zcrypt_rng_device_add(void)
{
 int rc = 0;

 mutex_lock(&zcrypt_rng_mutex);
 if (zcrypt_rng_device_count == 0) {
  zcrypt_rng_buffer = (u32 *) get_zeroed_page(GFP_KERNEL);
  if (!zcrypt_rng_buffer) {
   rc = -ENOMEM;
   goto out;
  }
  zcrypt_rng_buffer_index = 0;
  rc = hwrng_register(&zcrypt_rng_dev);
  if (rc)
   goto out_free;
  zcrypt_rng_device_count = 1;
 } else
  zcrypt_rng_device_count++;
 mutex_unlock(&zcrypt_rng_mutex);
 return 0;

out_free:
 free_page((unsigned long) zcrypt_rng_buffer);
out:
 mutex_unlock(&zcrypt_rng_mutex);
 return rc;
}
