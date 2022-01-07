
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct isi_port {int channel; int status; struct isi_board* card; } ;
struct isi_board {unsigned long base; int shift_count; } ;


 int ISI_DTR ;
 int InterruptTheCard (unsigned long) ;
 scalar_t__ WaitTillCardIsFree (unsigned long) ;
 int outw (int,unsigned long) ;

__attribute__((used)) static inline void drop_dtr(struct isi_port *port)
{
 struct isi_board *card = port->card;
 unsigned long base = card->base;
 u16 channel = port->channel;

 if (WaitTillCardIsFree(base))
  return;

 outw(0x8000 | (channel << card->shift_count) | 0x02, base);
 outw(0x0404, base);
 InterruptTheCard(base);
 port->status &= ~ISI_DTR;
}
