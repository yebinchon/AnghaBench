
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct sony_laptop_keypress {int dev; int key; } ;
typedef int kp ;
struct TYPE_2__ {int fifo; } ;


 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;
 int kfifo_get (int ,unsigned char*,int) ;
 int msleep (int) ;
 TYPE_1__ sony_laptop_input ;

__attribute__((used)) static void do_sony_laptop_release_key(struct work_struct *work)
{
 struct sony_laptop_keypress kp;

 while (kfifo_get(sony_laptop_input.fifo, (unsigned char *)&kp,
    sizeof(kp)) == sizeof(kp)) {
  msleep(10);
  input_report_key(kp.dev, kp.key, 0);
  input_sync(kp.dev);
 }
}
