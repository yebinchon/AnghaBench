
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_device {char* type_string; int short_crt; int online; int ops; int reply; struct ap_device* ap_dev; int speed_rating; void* max_exp_bit_length; void* max_mod_size; void* min_mod_size; int user_space_type; } ;
struct ap_device {int device_type; struct zcrypt_device* private; int * reply; int functions; } ;




 int AP_FUNC_CRT4K ;
 int AP_FUNC_MEX4K ;
 void* CEX2A_MAX_MOD_SIZE ;
 int CEX2A_MAX_RESPONSE_SIZE ;
 void* CEX2A_MIN_MOD_SIZE ;
 int CEX2A_SPEED_RATING ;
 void* CEX3A_MAX_MOD_SIZE ;
 int CEX3A_MAX_RESPONSE_SIZE ;
 int CEX3A_SPEED_RATING ;
 int ENODEV ;
 int ENOMEM ;
 int MSGTYPE50_NAME ;
 int MSGTYPE50_VARIANT_DEFAULT ;
 int ZCRYPT_CEX2A ;
 int ZCRYPT_CEX3A ;
 int ap_test_bit (int *,int ) ;
 struct zcrypt_device* zcrypt_device_alloc (int ) ;
 int zcrypt_device_free (struct zcrypt_device*) ;
 int zcrypt_device_register (struct zcrypt_device*) ;
 int zcrypt_msgtype_release (int ) ;
 int zcrypt_msgtype_request (int ,int ) ;

__attribute__((used)) static int zcrypt_cex2a_probe(struct ap_device *ap_dev)
{
 struct zcrypt_device *zdev = ((void*)0);
 int rc = 0;

 switch (ap_dev->device_type) {
 case 129:
  zdev = zcrypt_device_alloc(CEX2A_MAX_RESPONSE_SIZE);
  if (!zdev)
   return -ENOMEM;
  zdev->user_space_type = ZCRYPT_CEX2A;
  zdev->type_string = "CEX2A";
  zdev->min_mod_size = CEX2A_MIN_MOD_SIZE;
  zdev->max_mod_size = CEX2A_MAX_MOD_SIZE;
  zdev->short_crt = 1;
  zdev->speed_rating = CEX2A_SPEED_RATING;
  zdev->max_exp_bit_length = CEX2A_MAX_MOD_SIZE;
  break;
 case 128:
  zdev = zcrypt_device_alloc(CEX3A_MAX_RESPONSE_SIZE);
  if (!zdev)
   return -ENOMEM;
  zdev->user_space_type = ZCRYPT_CEX3A;
  zdev->type_string = "CEX3A";
  zdev->min_mod_size = CEX2A_MIN_MOD_SIZE;
  zdev->max_mod_size = CEX2A_MAX_MOD_SIZE;
  zdev->max_exp_bit_length = CEX2A_MAX_MOD_SIZE;
  if (ap_test_bit(&ap_dev->functions, AP_FUNC_MEX4K) &&
      ap_test_bit(&ap_dev->functions, AP_FUNC_CRT4K)) {
   zdev->max_mod_size = CEX3A_MAX_MOD_SIZE;
   zdev->max_exp_bit_length = CEX3A_MAX_MOD_SIZE;
  }
  zdev->short_crt = 1;
  zdev->speed_rating = CEX3A_SPEED_RATING;
  break;
 }
 if (!zdev)
  return -ENODEV;
 zdev->ops = zcrypt_msgtype_request(MSGTYPE50_NAME,
        MSGTYPE50_VARIANT_DEFAULT);
 zdev->ap_dev = ap_dev;
 zdev->online = 1;
 ap_dev->reply = &zdev->reply;
 ap_dev->private = zdev;
 rc = zcrypt_device_register(zdev);
 if (rc) {
  ap_dev->private = ((void*)0);
  zcrypt_msgtype_release(zdev->ops);
  zcrypt_device_free(zdev);
 }
 return rc;
}
