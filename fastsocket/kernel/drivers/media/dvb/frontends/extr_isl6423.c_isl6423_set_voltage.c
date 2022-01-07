
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isl6423_dev {int reg_3; int reg_4; } ;
struct dvb_frontend {scalar_t__ sec_priv; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;


 int FE_ERROR ;



 int dprintk (int ,int,char*,int) ;
 int isl6423_write (struct isl6423_dev*,int) ;

__attribute__((used)) static int isl6423_set_voltage(struct dvb_frontend *fe,
          enum fe_sec_voltage voltage)
{
 struct isl6423_dev *isl6423 = (struct isl6423_dev *) fe->sec_priv;
 u8 reg_3 = isl6423->reg_3;
 u8 reg_4 = isl6423->reg_4;
 int err = 0;

 switch (voltage) {
 case 128:

  reg_4 &= ~(1 << 4);
  break;

 case 130:

  reg_4 |= (1 << 4);
  reg_4 &= ~0x3;
  reg_3 |= (1 << 3);
  break;

 case 129:

  reg_4 |= (1 << 4);
  reg_4 |= 0x2;
  reg_4 &= ~0x1;
  reg_3 |= (1 << 3);
  break;

 default:
  break;
 }
 err = isl6423_write(isl6423, reg_3);
 if (err < 0)
  goto exit;

 err = isl6423_write(isl6423, reg_4);
 if (err < 0)
  goto exit;

 isl6423->reg_3 = reg_3;
 isl6423->reg_4 = reg_4;

 return 0;
exit:
 dprintk(FE_ERROR, 1, "I/O error <%d>", err);
 return err;
}
