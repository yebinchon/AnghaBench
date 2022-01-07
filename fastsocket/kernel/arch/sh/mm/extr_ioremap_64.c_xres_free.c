
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xresource {scalar_t__ xflag; } ;



__attribute__((used)) static void xres_free(struct xresource *xrp)
{
 xrp->xflag = 0;
}
