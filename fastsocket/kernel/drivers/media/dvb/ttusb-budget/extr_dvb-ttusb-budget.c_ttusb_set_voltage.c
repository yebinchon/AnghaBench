
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttusb {int voltage; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
typedef int fe_sec_voltage_t ;
struct TYPE_2__ {scalar_t__ priv; } ;


 int ttusb_update_lnb (struct ttusb*) ;

__attribute__((used)) static int ttusb_set_voltage(struct dvb_frontend* fe, fe_sec_voltage_t voltage)
{
 struct ttusb* ttusb = (struct ttusb*) fe->dvb->priv;

 ttusb->voltage = voltage;
 return ttusb_update_lnb(ttusb);
}
