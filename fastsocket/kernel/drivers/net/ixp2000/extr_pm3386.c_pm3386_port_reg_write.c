
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int pm3386_reg_write (int,int,int ) ;

__attribute__((used)) static void pm3386_port_reg_write(int port, int _reg, int spacing, u16 value)
{
 int reg;

 reg = _reg;
 if (port & 1)
  reg += spacing;

 pm3386_reg_write(port >> 1, reg, value);
}
