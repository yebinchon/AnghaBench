
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u_int ;
struct TYPE_3__ {scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__ elsa; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int * ModemIn ;
 int debugl1 (struct IsdnCardState*,char*,int ,unsigned int) ;
 unsigned int inb (scalar_t__) ;
 unsigned int inb_p (scalar_t__) ;

__attribute__((used)) static inline unsigned int serial_inp(struct IsdnCardState *cs, int offset)
{
 return inb_p(cs->hw.elsa.base + 8 + offset);


}
