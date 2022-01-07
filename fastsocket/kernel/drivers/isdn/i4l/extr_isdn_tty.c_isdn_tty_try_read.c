
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct sk_buff {int len; unsigned char* data; } ;
struct TYPE_4__ {int* mdmreg; } ;
struct TYPE_5__ {int mcr; TYPE_1__ emu; struct tty_struct* tty; scalar_t__ online; } ;
typedef TYPE_2__ modem_info ;


 int BIT_CPPP ;
 unsigned char DLE ;
 int ISDN_AUDIO_SKB_DLECOUNT (struct sk_buff*) ;
 size_t REG_CPPP ;
 int TTY_NORMAL ;
 int UART_MCR_RTS ;
 int kfree_skb (struct sk_buff*) ;
 int tty_buffer_request_room (struct tty_struct*,int) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_char (struct tty_struct*,char,int) ;
 int tty_insert_flip_string (struct tty_struct*,unsigned char*,int) ;

__attribute__((used)) static int
isdn_tty_try_read(modem_info * info, struct sk_buff *skb)
{
 int c;
 int len;
 struct tty_struct *tty;
 char last;

 if (info->online) {
  if ((tty = info->tty)) {
   if (info->mcr & UART_MCR_RTS) {
    len = skb->len



     ;

    c = tty_buffer_request_room(tty, len);
    if (c >= len) {
      if(len > 1)
       tty_insert_flip_string(tty, skb->data, len - 1);
      last = skb->data[len - 1];



     if (info->emu.mdmreg[REG_CPPP] & BIT_CPPP)
      tty_insert_flip_char(tty, last, 0xFF);
     else
      tty_insert_flip_char(tty, last, TTY_NORMAL);
     tty_flip_buffer_push(tty);
     kfree_skb(skb);
     return 1;
    }
   }
  }
 }
 return 0;
}
