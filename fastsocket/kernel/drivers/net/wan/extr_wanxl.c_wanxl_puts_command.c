
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ plx; } ;
typedef TYPE_1__ card_t ;


 int HZ ;
 scalar_t__ PLX_MAILBOX_1 ;
 int jiffies ;
 scalar_t__ readl (scalar_t__) ;
 int schedule () ;
 scalar_t__ time_after (unsigned long,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int wanxl_puts_command(card_t *card, u32 cmd)
{
 unsigned long timeout = jiffies + 5 * HZ;

 writel(cmd, card->plx + PLX_MAILBOX_1);
 do {
  if (readl(card->plx + PLX_MAILBOX_1) == 0)
   return 0;

  schedule();
 }while (time_after(timeout, jiffies));

 return -1;
}
