
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int membase; } ;
struct TYPE_4__ {TYPE_1__ teles0; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int readisac (int ,int ) ;

__attribute__((used)) static u_char
ReadISAC(struct IsdnCardState *cs, u_char offset)
{
 return (readisac(cs->hw.teles0.membase, offset));
}
