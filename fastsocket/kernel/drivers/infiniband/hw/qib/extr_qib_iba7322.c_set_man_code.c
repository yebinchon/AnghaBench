
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {int hw_pidx; int dd; } ;


 int IBSD (int ) ;
 int ahb_mod (int ,int ,int,int,int,int) ;

__attribute__((used)) static void set_man_code(struct qib_pportdata *ppd, int chan, int code)
{
 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), (chan + (chan >> 1)),
  9, code << 9, 0x3f << 9);
}
