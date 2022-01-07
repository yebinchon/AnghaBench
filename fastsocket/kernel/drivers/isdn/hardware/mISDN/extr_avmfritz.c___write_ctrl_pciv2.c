
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ctrl; } ;
struct hdlc_hw {TYPE_1__ ctrl; } ;
struct fritzcard {scalar_t__ addr; } ;


 scalar_t__ AVM_HDLC_STATUS_1 ;
 scalar_t__ AVM_HDLC_STATUS_2 ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static inline void
__write_ctrl_pciv2(struct fritzcard *fc, struct hdlc_hw *hdlc, u32 channel) {
 outl(hdlc->ctrl.ctrl, fc->addr + (channel == 2 ? AVM_HDLC_STATUS_2 :
  AVM_HDLC_STATUS_1));
}
