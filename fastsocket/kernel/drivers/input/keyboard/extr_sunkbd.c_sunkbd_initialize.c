
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunkbd {int reset; int type; int layout; int wait; int serio; } ;


 int HZ ;
 int SUNKBD_CMD_LAYOUT ;
 int SUNKBD_CMD_RESET ;
 int SUNKBD_LAYOUT_5_MASK ;
 int serio_write (int ,int ) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

__attribute__((used)) static int sunkbd_initialize(struct sunkbd *sunkbd)
{
 sunkbd->reset = -2;
 serio_write(sunkbd->serio, SUNKBD_CMD_RESET);
 wait_event_interruptible_timeout(sunkbd->wait, sunkbd->reset >= 0, HZ);
 if (sunkbd->reset < 0)
  return -1;

 sunkbd->type = sunkbd->reset;

 if (sunkbd->type == 4) {
  sunkbd->layout = -2;
  serio_write(sunkbd->serio, SUNKBD_CMD_LAYOUT);
  wait_event_interruptible_timeout(sunkbd->wait,
       sunkbd->layout >= 0, HZ / 4);
  if (sunkbd->layout < 0)
   return -1;
  if (sunkbd->layout & SUNKBD_LAYOUT_5_MASK)
   sunkbd->type = 5;
 }

 return 0;
}
