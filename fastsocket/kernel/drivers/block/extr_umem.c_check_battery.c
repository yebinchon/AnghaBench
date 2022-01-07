
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cardinfo {TYPE_2__* battery; TYPE_1__* dev; } ;
struct TYPE_4__ {int good; int warned; scalar_t__ last_change; } ;
struct TYPE_3__ {int dev; } ;


 int HZ ;
 int KERN_ERR ;
 int dev_printk (int ,int *,char*,int) ;
 scalar_t__ jiffies ;
 scalar_t__ time_after_eq (scalar_t__,scalar_t__) ;

__attribute__((used)) static int check_battery(struct cardinfo *card, int battery, int status)
{
 if (status != card->battery[battery].good) {
  card->battery[battery].good = !card->battery[battery].good;
  card->battery[battery].last_change = jiffies;

  if (card->battery[battery].good) {
   dev_printk(KERN_ERR, &card->dev->dev,
    "Battery %d now good\n", battery + 1);
   card->battery[battery].warned = 0;
  } else
   dev_printk(KERN_ERR, &card->dev->dev,
    "Battery %d now FAILED\n", battery + 1);

  return 1;
 } else if (!card->battery[battery].good &&
     !card->battery[battery].warned &&
     time_after_eq(jiffies, card->battery[battery].last_change +
     (HZ * 60 * 60 * 5))) {
  dev_printk(KERN_ERR, &card->dev->dev,
   "Battery %d still FAILED after 5 hours\n", battery + 1);
  card->battery[battery].warned = 1;

  return 1;
 }

 return 0;
}
