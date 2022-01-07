
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pluto {int i2cbug; } ;


 int REG_SLCS ;
 int SLCS_SCL ;
 int pluto_rw (struct pluto*,int ,int ,int ) ;
 int pluto_setsda (struct pluto*,int) ;

__attribute__((used)) static void pluto_setscl(void *data, int state)
{
 struct pluto *pluto = data;

 if (state)
  pluto_rw(pluto, REG_SLCS, SLCS_SCL, SLCS_SCL);
 else
  pluto_rw(pluto, REG_SLCS, SLCS_SCL, 0);



 if ((state) && (pluto->i2cbug == 0)) {
  pluto->i2cbug = 1;
 } else {
  if ((!state) && (pluto->i2cbug == 1))
   pluto_setsda(pluto, 1);
  pluto->i2cbug = 0;
 }
}
