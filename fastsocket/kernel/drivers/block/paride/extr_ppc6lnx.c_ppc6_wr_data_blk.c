
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int mode; int lpt_addr; int cur_ctrl; } ;
typedef TYPE_1__ Interface ;


 int CMD_PREFIX_RESET ;
 int CMD_PREFIX_SET ;







 int PREFIX_FASTWR ;
 int data_stb ;
 int outb (int ,int ) ;
 int outl (int ,int ) ;
 int outw (int ,int ) ;
 int port_stb ;
 int ppc6_send_cmd (TYPE_1__*,int) ;
 int ppc6_wait_for_fifo (TYPE_1__*) ;

__attribute__((used)) static void ppc6_wr_data_blk(Interface *ppc, u8 *data, long count)
{
 switch(ppc->mode)
 {
  case 128 :
  case 133 :
  {
   while(count--)
   {
    outb(*data++, ppc->lpt_addr);

    ppc->cur_ctrl ^= data_stb;

    outb(ppc->cur_ctrl, ppc->lpt_addr + 2);
   }

   break;
  }

  case 129 :
  case 134 :
  {
   u8 this, last;

   ppc6_send_cmd(ppc,(CMD_PREFIX_SET | PREFIX_FASTWR));

   ppc->cur_ctrl |= port_stb;

   outb(ppc->cur_ctrl, ppc->lpt_addr + 2);

   last = *data;

   outb(last, ppc->lpt_addr);

   while(count)
   {
    this = *data++;
    count--;

    if (this == last)
    {
     ppc->cur_ctrl ^= data_stb;

     outb(ppc->cur_ctrl, ppc->lpt_addr + 2);
    }
    else
    {
     outb(this, ppc->lpt_addr);

     last = this;
    }
   }

   ppc->cur_ctrl &= ~port_stb;

   outb(ppc->cur_ctrl, ppc->lpt_addr + 2);

   ppc6_send_cmd(ppc,(CMD_PREFIX_RESET | PREFIX_FASTWR));

   break;
  }

  case 132 :
  {
   while(count)
   {
    outb(*data++,ppc->lpt_addr + 4);
    count--;
   }

   ppc6_wait_for_fifo(ppc);

   break;
  }

  case 130 :
  {
   while(count > 1)
   {
    outw(*((u16 *)data),ppc->lpt_addr + 4);
    data += 2;
    count -= 2;
   }

   while(count)
   {
    outb(*data++,ppc->lpt_addr + 4);
    count--;
   }

   ppc6_wait_for_fifo(ppc);

   break;
  }

  case 131 :
  {
   while(count > 3)
   {
    outl(*((u32 *)data),ppc->lpt_addr + 4);
    data += 4;
    count -= 4;
   }

   while(count)
   {
    outb(*data++,ppc->lpt_addr + 4);
    count--;
   }

   ppc6_wait_for_fifo(ppc);

   break;
  }
 }
}
