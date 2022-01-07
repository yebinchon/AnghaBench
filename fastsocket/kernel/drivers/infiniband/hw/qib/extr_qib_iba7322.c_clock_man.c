
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {int hw_pidx; int dd; } ;


 int IBSD (int ) ;
 int ahb_mod (int ,int ,int,int,int,int) ;

__attribute__((used)) static void clock_man(struct qib_pportdata *ppd, int chan)
{
 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), (chan + (chan >> 1)),
  4, 0x4000, 0x4000);
 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), (chan + (chan >> 1)),
  4, 0, 0x4000);
 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), (chan + (chan >> 1)),
  4, 0x4000, 0x4000);
 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), (chan + (chan >> 1)),
  4, 0, 0x4000);
}
