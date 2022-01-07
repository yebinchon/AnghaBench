
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xresource {int xflag; } ;


 int XNRES ;
 struct xresource* xresv ;

__attribute__((used)) static struct xresource *xres_alloc(void) {
 struct xresource *xrp;
 int n;

 xrp = xresv;
 for (n = 0; n < XNRES; n++) {
  if (xrp->xflag == 0) {
   xrp->xflag = 1;
   return xrp;
  }
  xrp++;
 }
 return ((void*)0);
}
