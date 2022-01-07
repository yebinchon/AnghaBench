
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int nr; } ;
struct hscx_hw {TYPE_1__ bch; TYPE_2__* ip; } ;
struct TYPE_4__ {int name; } ;


 int IPAC_STARB ;
 int ReadHSCX (struct hscx_hw*,int ) ;
 int pr_debug (char*,int ,int ,int) ;
 int pr_info (char*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void
waitforCEC(struct hscx_hw *hx)
{
 u8 starb, to = 50;

 while (to) {
  starb = ReadHSCX(hx, IPAC_STARB);
  if (!(starb & 0x04))
   break;
  udelay(1);
  to--;
 }
 if (to < 50)
  pr_debug("%s: B%1d CEC %d us\n", hx->ip->name, hx->bch.nr,
   50 - to);
 if (!to)
  pr_info("%s: B%1d CEC timeout\n", hx->ip->name, hx->bch.nr);
}
