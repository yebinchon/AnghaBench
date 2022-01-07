
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct budget {int dummy; } ;
typedef int fe_sec_voltage_t ;
struct TYPE_2__ {scalar_t__ priv; } ;


 int SetVoltage_Activy (struct budget*,int ) ;

__attribute__((used)) static int siemens_budget_set_voltage(struct dvb_frontend* fe, fe_sec_voltage_t voltage)
{
 struct budget* budget = (struct budget*) fe->dvb->priv;

 return SetVoltage_Activy (budget, voltage);
}
