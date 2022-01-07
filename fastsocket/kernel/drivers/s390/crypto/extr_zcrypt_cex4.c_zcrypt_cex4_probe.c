
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_device {char* type_string; int short_crt; int online; void* ops; int reply; struct ap_device* ap_dev; int speed_rating; void* max_exp_bit_length; void* max_mod_size; int min_mod_size; int user_space_type; } ;
struct ap_device {int device_type; struct zcrypt_device* private; int * reply; int functions; } ;



 int AP_FUNC_ACCEL ;
 int AP_FUNC_COPRO ;
 int AP_FUNC_CRT4K ;
 int AP_FUNC_MEX4K ;
 int CEX4A_MAX_MESSAGE_SIZE ;
 void* CEX4A_MAX_MOD_SIZE_2K ;
 void* CEX4A_MAX_MOD_SIZE_4K ;
 int CEX4A_MIN_MOD_SIZE ;
 int CEX4A_SPEED_RATING ;
 int CEX4C_MAX_MESSAGE_SIZE ;
 void* CEX4C_MAX_MOD_SIZE ;
 int CEX4C_MIN_MOD_SIZE ;
 int CEX4C_SPEED_RATING ;
 int ENODEV ;
 int ENOMEM ;
 int MSGTYPE06_NAME ;
 int MSGTYPE06_VARIANT_DEFAULT ;
 int MSGTYPE50_NAME ;
 int MSGTYPE50_VARIANT_DEFAULT ;
 int ZCRYPT_CEX3A ;
 int ZCRYPT_CEX3C ;
 int ap_test_bit (int *,int ) ;
 struct zcrypt_device* zcrypt_device_alloc (int ) ;
 int zcrypt_device_free (struct zcrypt_device*) ;
 int zcrypt_device_register (struct zcrypt_device*) ;
 int zcrypt_msgtype_release (void*) ;
 void* zcrypt_msgtype_request (int ,int ) ;

__attribute__((used)) static int zcrypt_cex4_probe(struct ap_device *ap_dev)
{
 struct zcrypt_device *zdev = ((void*)0);
 int rc = 0;

 switch (ap_dev->device_type) {
 case 128:
  if (ap_test_bit(&ap_dev->functions, AP_FUNC_ACCEL)) {
   zdev = zcrypt_device_alloc(CEX4A_MAX_MESSAGE_SIZE);
   if (!zdev)
    return -ENOMEM;
   zdev->type_string = "CEX4A";
   zdev->user_space_type = ZCRYPT_CEX3A;
   zdev->min_mod_size = CEX4A_MIN_MOD_SIZE;
   if (ap_test_bit(&ap_dev->functions, AP_FUNC_MEX4K) &&
       ap_test_bit(&ap_dev->functions, AP_FUNC_CRT4K)) {
    zdev->max_mod_size =
     CEX4A_MAX_MOD_SIZE_4K;
    zdev->max_exp_bit_length =
     CEX4A_MAX_MOD_SIZE_4K;
   } else {
    zdev->max_mod_size =
     CEX4A_MAX_MOD_SIZE_2K;
    zdev->max_exp_bit_length =
     CEX4A_MAX_MOD_SIZE_2K;
   }
   zdev->short_crt = 1;
   zdev->speed_rating = CEX4A_SPEED_RATING;
   zdev->ops = zcrypt_msgtype_request(MSGTYPE50_NAME,
          MSGTYPE50_VARIANT_DEFAULT);
  } else if (ap_test_bit(&ap_dev->functions, AP_FUNC_COPRO)) {
   zdev = zcrypt_device_alloc(CEX4C_MAX_MESSAGE_SIZE);
   if (!zdev)
    return -ENOMEM;
   zdev->type_string = "CEX4C";
   zdev->user_space_type = ZCRYPT_CEX3C;
   zdev->min_mod_size = CEX4C_MIN_MOD_SIZE;
   zdev->max_mod_size = CEX4C_MAX_MOD_SIZE;
   zdev->max_exp_bit_length = CEX4C_MAX_MOD_SIZE;
   zdev->short_crt = 0;
   zdev->speed_rating = CEX4C_SPEED_RATING;
   zdev->ops = zcrypt_msgtype_request(MSGTYPE06_NAME,
          MSGTYPE06_VARIANT_DEFAULT);
  }
  break;
 }
 if (!zdev)
  return -ENODEV;
 zdev->ap_dev = ap_dev;
 zdev->online = 1;
 ap_dev->reply = &zdev->reply;
 ap_dev->private = zdev;
 rc = zcrypt_device_register(zdev);
 if (rc) {
  zcrypt_msgtype_release(zdev->ops);
  ap_dev->private = ((void*)0);
  zcrypt_device_free(zdev);
 }
 return rc;
}
