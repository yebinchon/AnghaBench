
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;
struct ax_drvdata {int spp_data; } ;


 struct ax_drvdata* pp_to_drv (struct parport*) ;
 int writeb (unsigned char,int ) ;

__attribute__((used)) static void
parport_ax88796_write_data(struct parport *p, unsigned char data)
{
 struct ax_drvdata *dd = pp_to_drv(p);

 writeb(data, dd->spp_data);
}
