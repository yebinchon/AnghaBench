
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {int dummy; } ;


 scalar_t__ MXL_ControlWrite (struct dvb_frontend*,int ,int) ;
 int OVERRIDE_1 ;
 int OVERRIDE_2 ;
 int OVERRIDE_3 ;
 int OVERRIDE_4 ;

__attribute__((used)) static u16 MXL_OverwriteICDefault(struct dvb_frontend *fe)
{
 u16 status = 0;

 status += MXL_ControlWrite(fe, OVERRIDE_1, 1);
 status += MXL_ControlWrite(fe, OVERRIDE_2, 1);
 status += MXL_ControlWrite(fe, OVERRIDE_3, 1);
 status += MXL_ControlWrite(fe, OVERRIDE_4, 1);

 return status;
}
