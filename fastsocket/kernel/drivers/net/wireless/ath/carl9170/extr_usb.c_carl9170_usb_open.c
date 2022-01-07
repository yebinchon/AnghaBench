
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar9170 {int tx_anch; } ;


 int CARL9170_IDLE ;
 int CARL9170_STOPPED ;
 int carl9170_set_state_when (struct ar9170*,int ,int ) ;
 int usb_unpoison_anchored_urbs (int *) ;

int carl9170_usb_open(struct ar9170 *ar)
{
 usb_unpoison_anchored_urbs(&ar->tx_anch);

 carl9170_set_state_when(ar, CARL9170_STOPPED, CARL9170_IDLE);
 return 0;
}
