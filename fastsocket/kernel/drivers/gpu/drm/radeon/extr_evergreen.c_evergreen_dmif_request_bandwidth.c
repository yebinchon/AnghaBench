
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct evergreen_wm_params {int disp_clk; } ;
struct TYPE_7__ {void* full; } ;
typedef TYPE_1__ fixed20_12 ;


 void* dfixed_const (int) ;
 void* dfixed_div (TYPE_1__,TYPE_1__) ;
 void* dfixed_mul (TYPE_1__,TYPE_1__) ;
 int dfixed_trunc (TYPE_1__) ;

__attribute__((used)) static u32 evergreen_dmif_request_bandwidth(struct evergreen_wm_params *wm)
{

 fixed20_12 disp_clk_request_efficiency;
 fixed20_12 disp_clk, bandwidth;
 fixed20_12 a;

 a.full = dfixed_const(1000);
 disp_clk.full = dfixed_const(wm->disp_clk);
 disp_clk.full = dfixed_div(disp_clk, a);
 a.full = dfixed_const(10);
 disp_clk_request_efficiency.full = dfixed_const(8);
 disp_clk_request_efficiency.full = dfixed_div(disp_clk_request_efficiency, a);
 a.full = dfixed_const(32);
 bandwidth.full = dfixed_mul(a, disp_clk);
 bandwidth.full = dfixed_mul(bandwidth, disp_clk_request_efficiency);

 return dfixed_trunc(bandwidth);
}
