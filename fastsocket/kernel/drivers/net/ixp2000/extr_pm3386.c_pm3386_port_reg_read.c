
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int pm3386_reg_read (int,int) ;

__attribute__((used)) static u16 pm3386_port_reg_read(int port, int _reg, int spacing)
{
 int reg;

 reg = _reg;
 if (port & 1)
  reg += spacing;

 return pm3386_reg_read(port >> 1, reg);
}
