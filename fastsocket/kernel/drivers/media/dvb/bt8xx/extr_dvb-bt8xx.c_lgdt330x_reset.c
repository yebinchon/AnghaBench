
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_bt8xx_card {int bttv_nr; } ;


 int bttv_write_gpio (int ,int,int) ;
 int msleep (int) ;

__attribute__((used)) static void lgdt330x_reset(struct dvb_bt8xx_card *bt)
{



 bttv_write_gpio(bt->bttv_nr, 0x00e00007, 0x00000001);
 bttv_write_gpio(bt->bttv_nr, 0x00e00007, 0x00000000);
 msleep(100);

 bttv_write_gpio(bt->bttv_nr, 0x00e00007, 0x00000001);
 msleep(100);
}
