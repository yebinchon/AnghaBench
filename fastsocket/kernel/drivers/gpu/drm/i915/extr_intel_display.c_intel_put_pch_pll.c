
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pch_pll {scalar_t__ refcount; } ;
struct intel_crtc {struct intel_pch_pll* pch_pll; } ;


 int WARN (int,char*) ;

__attribute__((used)) static void intel_put_pch_pll(struct intel_crtc *intel_crtc)
{
 struct intel_pch_pll *pll = intel_crtc->pch_pll;

 if (pll == ((void*)0))
  return;

 if (pll->refcount == 0) {
  WARN(1, "bad PCH PLL refcount\n");
  return;
 }

 --pll->refcount;
 intel_crtc->pch_pll = ((void*)0);
}
