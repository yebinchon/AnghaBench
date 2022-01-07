
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cardinfo {TYPE_1__* dev; scalar_t__ csr_remap; } ;
struct TYPE_2__ {int dev; } ;


 unsigned char BATTERY_1_FAILURE ;
 unsigned char BATTERY_2_FAILURE ;
 int DEBUG_BATTERY_POLLING ;
 int KERN_DEBUG ;
 scalar_t__ MEMCTRLSTATUS_BATTERY ;
 int check_battery (struct cardinfo*,int,int) ;
 int debug ;
 int dev_printk (int ,int *,char*,char*,char*) ;
 unsigned char readb (scalar_t__) ;
 int set_fault_to_battery_status (struct cardinfo*) ;

__attribute__((used)) static void check_batteries(struct cardinfo *card)
{




 unsigned char status;
 int ret1, ret2;

 status = readb(card->csr_remap + MEMCTRLSTATUS_BATTERY);
 if (debug & DEBUG_BATTERY_POLLING)
  dev_printk(KERN_DEBUG, &card->dev->dev,
   "checking battery status, 1 = %s, 2 = %s\n",
         (status & BATTERY_1_FAILURE) ? "FAILURE" : "OK",
         (status & BATTERY_2_FAILURE) ? "FAILURE" : "OK");

 ret1 = check_battery(card, 0, !(status & BATTERY_1_FAILURE));
 ret2 = check_battery(card, 1, !(status & BATTERY_2_FAILURE));

 if (ret1 || ret2)
  set_fault_to_battery_status(card);
}
