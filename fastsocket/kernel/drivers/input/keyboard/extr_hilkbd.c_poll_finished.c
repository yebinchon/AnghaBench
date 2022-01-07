
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* data; scalar_t__ curdev; int dev; } ;


 TYPE_1__ hil_dev ;
 int* hphilkeyb_keycode ;
 int input_report_key (int ,int,int) ;

__attribute__((used)) static void poll_finished(void)
{
 int down;
 int key;
 unsigned char scode;

 switch (hil_dev.data[0]) {
 case 0x40:
  down = (hil_dev.data[1] & 1) == 0;
  scode = hil_dev.data[1] >> 1;
  key = hphilkeyb_keycode[scode];
  input_report_key(hil_dev.dev, key, down);
  break;
 }
 hil_dev.curdev = 0;
}
