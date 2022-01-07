
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct r3964_info {size_t tx_position; int flags; scalar_t__ bcc; int tmr; int state; struct r3964_block_header* tx_first; struct tty_struct* tty; } ;
struct r3964_block_header {size_t length; scalar_t__* data; } ;


 scalar_t__ DLE ;
 scalar_t__ ETX ;
 int R3964_BCC ;
 scalar_t__ R3964_TO_QVZ ;
 int R3964_WAIT_FOR_TX_ACK ;
 int TRACE_PS (char*,struct r3964_block_header*,int,size_t) ;
 int flush (struct r3964_info*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int put_char (struct r3964_info*,scalar_t__) ;
 int tty_write_room (struct tty_struct*) ;

__attribute__((used)) static void transmit_block(struct r3964_info *pInfo)
{
 struct tty_struct *tty = pInfo->tty;
 struct r3964_block_header *pBlock = pInfo->tx_first;
 int room = 0;

 if (tty == ((void*)0) || pBlock == ((void*)0)) {
  return;
 }

 room = tty_write_room(tty);

 TRACE_PS("transmit_block %p, room %d, length %d",
   pBlock, room, pBlock->length);

 while (pInfo->tx_position < pBlock->length) {
  if (room < 2)
   break;

  if (pBlock->data[pInfo->tx_position] == DLE) {

   put_char(pInfo, DLE);
  }
  put_char(pInfo, pBlock->data[pInfo->tx_position++]);

  room--;
 }

 if ((pInfo->tx_position == pBlock->length) && (room >= 3)) {
  put_char(pInfo, DLE);
  put_char(pInfo, ETX);
  if (pInfo->flags & R3964_BCC) {
   put_char(pInfo, pInfo->bcc);
  }
  pInfo->state = R3964_WAIT_FOR_TX_ACK;
  mod_timer(&pInfo->tmr, jiffies + R3964_TO_QVZ);
 }
 flush(pInfo);
}
