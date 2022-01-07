
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__ elsa; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int * ModemOut ;
 int debugl1 (struct IsdnCardState*,char*,int ,int) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static inline void serial_out(struct IsdnCardState *cs, int offset, int value)
{



 outb(value, cs->hw.elsa.base + 8 + offset);
}
