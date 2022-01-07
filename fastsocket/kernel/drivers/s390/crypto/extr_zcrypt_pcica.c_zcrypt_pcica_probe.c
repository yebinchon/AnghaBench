
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_device {int online; char* type_string; int reply; void* max_exp_bit_length; int speed_rating; void* max_mod_size; int min_mod_size; int user_space_type; int * ops; struct ap_device* ap_dev; } ;
struct ap_device {struct zcrypt_device* private; int * reply; } ;


 int ENOMEM ;
 void* PCICA_MAX_MOD_SIZE ;
 int PCICA_MAX_RESPONSE_SIZE ;
 int PCICA_MIN_MOD_SIZE ;
 int PCICA_SPEED_RATING ;
 int ZCRYPT_PCICA ;
 struct zcrypt_device* zcrypt_device_alloc (int ) ;
 int zcrypt_device_free (struct zcrypt_device*) ;
 int zcrypt_device_register (struct zcrypt_device*) ;
 int zcrypt_pcica_ops ;

__attribute__((used)) static int zcrypt_pcica_probe(struct ap_device *ap_dev)
{
 struct zcrypt_device *zdev;
 int rc;

 zdev = zcrypt_device_alloc(PCICA_MAX_RESPONSE_SIZE);
 if (!zdev)
  return -ENOMEM;
 zdev->ap_dev = ap_dev;
 zdev->ops = &zcrypt_pcica_ops;
 zdev->online = 1;
 zdev->user_space_type = ZCRYPT_PCICA;
 zdev->type_string = "PCICA";
 zdev->min_mod_size = PCICA_MIN_MOD_SIZE;
 zdev->max_mod_size = PCICA_MAX_MOD_SIZE;
 zdev->speed_rating = PCICA_SPEED_RATING;
 zdev->max_exp_bit_length = PCICA_MAX_MOD_SIZE;
 ap_dev->reply = &zdev->reply;
 ap_dev->private = zdev;
 rc = zcrypt_device_register(zdev);
 if (rc)
  goto out_free;
 return 0;

out_free:
 ap_dev->private = ((void*)0);
 zcrypt_device_free(zdev);
 return rc;
}
