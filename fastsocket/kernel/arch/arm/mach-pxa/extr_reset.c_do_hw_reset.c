
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OSCR ;
 scalar_t__ OSMR3 ;
 int OSSR ;
 int OSSR_M3 ;
 int OWER ;
 int OWER_WME ;

__attribute__((used)) static void do_hw_reset(void)
{

 OWER = OWER_WME;
 OSSR = OSSR_M3;
 OSMR3 = OSCR + 368640;
}
