
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_device {int online; char* type_string; int reply; void* max_exp_bit_length; int speed_rating; void* max_mod_size; int min_mod_size; int user_space_type; int * ops; struct ap_device* ap_dev; } ;
struct ap_device {struct zcrypt_device* private; int * reply; } ;


 int ENOMEM ;
 void* PCICC_MAX_MOD_SIZE ;
 int PCICC_MAX_RESPONSE_SIZE ;
 int PCICC_MIN_MOD_SIZE ;
 int PCICC_SPEED_RATING ;
 int ZCRYPT_PCICC ;
 struct zcrypt_device* zcrypt_device_alloc (int ) ;
 int zcrypt_device_free (struct zcrypt_device*) ;
 int zcrypt_device_register (struct zcrypt_device*) ;
 int zcrypt_pcicc_ops ;

__attribute__((used)) static int zcrypt_pcicc_probe(struct ap_device *ap_dev)
{
 struct zcrypt_device *zdev;
 int rc;

 zdev = zcrypt_device_alloc(PCICC_MAX_RESPONSE_SIZE);
 if (!zdev)
  return -ENOMEM;
 zdev->ap_dev = ap_dev;
 zdev->ops = &zcrypt_pcicc_ops;
 zdev->online = 1;
 zdev->user_space_type = ZCRYPT_PCICC;
 zdev->type_string = "PCICC";
 zdev->min_mod_size = PCICC_MIN_MOD_SIZE;
 zdev->max_mod_size = PCICC_MAX_MOD_SIZE;
 zdev->speed_rating = PCICC_SPEED_RATING;
 zdev->max_exp_bit_length = PCICC_MAX_MOD_SIZE;
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
