
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ avm; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 scalar_t__ ADDRREG_OFFSET ;
 scalar_t__ DATAREG_OFFSET ;
 int HSCX_CH_DIFF ;
 scalar_t__ HSCX_FIFO_OFFSET ;
 int byteout (scalar_t__,scalar_t__) ;
 int insb (scalar_t__,int *,int) ;

__attribute__((used)) static inline void
ReadHSCXfifo(struct IsdnCardState *cs, int hscx, u_char * data, int size)
{
 byteout(cs->hw.avm.cfg_reg+ADDRREG_OFFSET,
   HSCX_FIFO_OFFSET+hscx*HSCX_CH_DIFF);
 insb(cs->hw.avm.cfg_reg+DATAREG_OFFSET, data, size);
}
