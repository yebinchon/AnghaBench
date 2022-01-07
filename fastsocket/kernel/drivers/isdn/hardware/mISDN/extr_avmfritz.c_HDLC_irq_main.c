
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fritzcard {int name; } ;
struct bchannel {int dummy; } ;


 int HDLC_INT_MASK ;
 int HDLC_irq (struct bchannel*,int) ;
 struct bchannel* Sel_BCS (struct fritzcard*,int) ;
 int pr_debug (char*,int ) ;
 int read_status (struct fritzcard*,int) ;

__attribute__((used)) static inline void
HDLC_irq_main(struct fritzcard *fc)
{
 u32 stat;
 struct bchannel *bch;

 stat = read_status(fc, 1);
 if (stat & HDLC_INT_MASK) {
  bch = Sel_BCS(fc, 1);
  if (bch)
   HDLC_irq(bch, stat);
  else
   pr_debug("%s: spurious ch1 IRQ\n", fc->name);
 }
 stat = read_status(fc, 2);
 if (stat & HDLC_INT_MASK) {
  bch = Sel_BCS(fc, 2);
  if (bch)
   HDLC_irq(bch, stat);
  else
   pr_debug("%s: spurious ch2 IRQ\n", fc->name);
 }
}
