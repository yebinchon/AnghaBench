
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl; } ;
struct hdlc_hw {TYPE_1__ ctrl; } ;
struct fritzcard {int type; int name; struct hdlc_hw* hdlc; } ;
struct bchannel {int nr; struct fritzcard* hw; } ;




 int __write_ctrl_pci (struct fritzcard*,struct hdlc_hw*,char) ;
 int __write_ctrl_pciv2 (struct fritzcard*,struct hdlc_hw*,char) ;
 int pr_debug (char*,int ,char,int,int ) ;

void
write_ctrl(struct bchannel *bch, int which) {
 struct fritzcard *fc = bch->hw;
 struct hdlc_hw *hdlc;

 hdlc = &fc->hdlc[(bch->nr - 1) & 1];
 pr_debug("%s: hdlc %c wr%x ctrl %x\n", fc->name, '@' + bch->nr,
  which, hdlc->ctrl.ctrl);
 switch (fc->type) {
 case 128:
  __write_ctrl_pciv2(fc, hdlc, bch->nr);
  break;
 case 129:
  __write_ctrl_pci(fc, hdlc, bch->nr);
  break;
 }
}
