
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int itac; int ale; } ;
struct TYPE_4__ {TYPE_1__ elsa; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int byteout (int ,int ) ;

__attribute__((used)) static inline void
writeitac(struct IsdnCardState *cs, u_char off, u_char data)
{
 byteout(cs->hw.elsa.ale, off);
 byteout(cs->hw.elsa.itac, data);
}
