
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct h3600_dev {unsigned char event; unsigned char len; size_t idx; unsigned char chksum; unsigned char* buf; } ;
typedef int irqreturn_t ;


 unsigned char CHAR_EOF ;
 unsigned char CHAR_SOF ;
 int IRQ_HANDLED ;
 unsigned char MAX_ID ;




 int h3600ts_process_packet (struct h3600_dev*) ;
 int printk (char*) ;
 struct h3600_dev* serio_get_drvdata (struct serio*) ;
 int state ;

__attribute__((used)) static irqreturn_t h3600ts_interrupt(struct serio *serio, unsigned char data,
                                     unsigned int flags)
{
 struct h3600_dev *ts = serio_get_drvdata(serio);




 switch (state) {
  case 128:
   if (data == CHAR_SOF)
    state = 129;
   break;
  case 129:
   ts->event = (data & 0xf0) >> 4;
   ts->len = (data & 0xf);
   ts->idx = 0;
   if (ts->event >= MAX_ID) {
    state = 128;
    break;
   }
   ts->chksum = data;
   state = (ts->len > 0) ? 131 : 130;
   break;
  case 131:
   ts->chksum += data;
   ts->buf[ts->idx]= data;
   if (++ts->idx == ts->len)
    state = 130;
   break;
  case 130:
   state = 128;
   if (data == CHAR_EOF || data == ts->chksum)
    h3600ts_process_packet(ts);
   break;
  default:
   printk("Error3\n");
   break;
 }

 return IRQ_HANDLED;
}
