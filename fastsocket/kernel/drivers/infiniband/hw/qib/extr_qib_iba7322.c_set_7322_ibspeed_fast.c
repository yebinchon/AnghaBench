
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct qib_pportdata {int dd; TYPE_1__* cpspec; } ;
struct TYPE_2__ {int ibcctrl_b; } ;


 int IBA7322_IBC_IBTA_1_2_MASK ;
 int IBA7322_IBC_MAX_SPEED_MASK ;
 int IBA7322_IBC_SPEED_DDR ;
 int IBA7322_IBC_SPEED_LSB ;
 int IBA7322_IBC_SPEED_MASK ;
 int IBA7322_IBC_SPEED_QDR ;
 int IBA7322_IBC_SPEED_SDR ;
 int QIB_IB_DDR ;
 int QIB_IB_QDR ;
 int kr_scratch ;
 int krp_ibcctrl_b ;
 int qib_write_kreg (int ,int ,int ) ;
 int qib_write_kreg_port (struct qib_pportdata*,int ,int) ;

__attribute__((used)) static void set_7322_ibspeed_fast(struct qib_pportdata *ppd, u32 speed)
{
 u64 newctrlb;
 newctrlb = ppd->cpspec->ibcctrl_b & ~(IBA7322_IBC_SPEED_MASK |
        IBA7322_IBC_IBTA_1_2_MASK |
        IBA7322_IBC_MAX_SPEED_MASK);

 if (speed & (speed - 1))
  newctrlb |= (speed << IBA7322_IBC_SPEED_LSB) |
        IBA7322_IBC_IBTA_1_2_MASK |
        IBA7322_IBC_MAX_SPEED_MASK;
 else
  newctrlb |= speed == QIB_IB_QDR ?
   IBA7322_IBC_SPEED_QDR | IBA7322_IBC_IBTA_1_2_MASK :
   ((speed == QIB_IB_DDR ?
     IBA7322_IBC_SPEED_DDR : IBA7322_IBC_SPEED_SDR));

 if (newctrlb == ppd->cpspec->ibcctrl_b)
  return;

 ppd->cpspec->ibcctrl_b = newctrlb;
 qib_write_kreg_port(ppd, krp_ibcctrl_b, ppd->cpspec->ibcctrl_b);
 qib_write_kreg(ppd->dd, kr_scratch, 0);
}
