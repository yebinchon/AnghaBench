
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int pm3386_port_reg_read (int,int,int) ;
 int pm3386_port_reg_write (int,int,int,int) ;
 int pm3386_reg_read (int,int) ;
 int pm3386_reg_write (int,int,int) ;
 int swaph (int) ;
 int udelay (int) ;

void pm3386_init_port(int port)
{
 int pm = port >> 1;





 if (pm3386_port_reg_read(port, 0x30a, 0x100) == 0x0000 &&
     (pm3386_port_reg_read(port, 0x309, 0x100) & 0xff00) == 0x5000) {
  u16 temp[3];

  temp[0] = pm3386_port_reg_read(port, 0x308, 0x100);
  temp[1] = pm3386_port_reg_read(port, 0x309, 0x100);
  temp[2] = pm3386_port_reg_read(port, 0x30a, 0x100);
  pm3386_port_reg_write(port, 0x308, 0x100, swaph(temp[2]));
  pm3386_port_reg_write(port, 0x309, 0x100, swaph(temp[1]));
  pm3386_port_reg_write(port, 0x30a, 0x100, swaph(temp[0]));
 }






 pm3386_port_reg_write(port, 0x708, 0x10, 0xd055);
 udelay(500);
 pm3386_port_reg_write(port, 0x708, 0x10, 0x5055);





 pm3386_port_reg_write(port, 0x122, 0x20, 0x0002);





 pm3386_reg_write(pm, 0x103, 0x0003);
 while (!(pm3386_reg_read(pm, 0x103) & 0x80))
  ;






 pm3386_port_reg_write(port, 0x221, 0x20, 0x0007);





 pm3386_reg_write(pm, 0x203, 0x000d & ~(4 << (port & 1)));
 while ((pm3386_reg_read(pm, 0x203) & 0x000c) != 0x000c)
  ;







 pm3386_port_reg_write(port, 0x302, 0x100, 0x0113);




 pm3386_port_reg_write(port, 0x301, 0x100, 0x8000);
 pm3386_port_reg_write(port, 0x301, 0x100, 0x0000);




 pm3386_port_reg_write(port, 0x306, 0x100, 0x0100);




 pm3386_port_reg_write(port, 0x310, 0x100, 9018);




 pm3386_port_reg_write(port, 0x336, 0x100, 9018);






 pm3386_port_reg_write(port, 0x31c, 0x100, 0x0020);




 pm3386_port_reg_write(port, 0x318, 0x100, 0x0003);
 pm3386_port_reg_write(port, 0x318, 0x100, 0x0002);
}
