
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gscps2port {scalar_t__ append; scalar_t__ act; int addr; } ;


 int GSC_STAT_RBNE ;
 int gscps2_readb_input (int ) ;
 int gscps2_readb_status (int ) ;

__attribute__((used)) static void gscps2_flush(struct gscps2port *ps2port)
{
 while (gscps2_readb_status(ps2port->addr) & GSC_STAT_RBNE)
  gscps2_readb_input(ps2port->addr);
 ps2port->act = ps2port->append = 0;
}
