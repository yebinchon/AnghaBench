
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_device_t {int dummy; } ;
struct sms_board {int led_hi; int led_lo; } ;



 int SMS_LED_HI ;
 int SMS_LED_LO ;
 struct sms_board* sms_get_board (int) ;
 int sms_set_gpio (struct smscore_device_t*,int ,int) ;
 int smscore_get_board_id (struct smscore_device_t*) ;
 int smscore_led_state (struct smscore_device_t*,int) ;

int sms_board_led_feedback(struct smscore_device_t *coredev, int led)
{
 int board_id = smscore_get_board_id(coredev);
 struct sms_board *board = sms_get_board(board_id);


 if (smscore_led_state(coredev, -1) == led)
  return 0;

 switch (board_id) {
 case 128:
  sms_set_gpio(coredev,
        board->led_lo, (led & SMS_LED_LO) ? 1 : 0);
  sms_set_gpio(coredev,
        board->led_hi, (led & SMS_LED_HI) ? 1 : 0);

  smscore_led_state(coredev, led);
  break;
 }
 return 0;
}
