
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int mdelay (int) ;
 int pm3386_get_mac (int,int *) ;
 int pm3386_reg_write (int,int,int) ;
 int pm3386_secondary_present () ;
 int pm3386_set_carrier (int,int ) ;
 int pm3386_set_mac (int,int *) ;

void pm3386_reset(void)
{
 u8 mac[3][6];
 int secondary;

 secondary = pm3386_secondary_present();


 pm3386_get_mac(0, mac[0]);
 pm3386_get_mac(1, mac[1]);
 if (secondary)
  pm3386_get_mac(2, mac[2]);


 pm3386_reg_write(0, 0x002, 0x0060);
 if (secondary)
  pm3386_reg_write(1, 0x002, 0x0060);
 mdelay(1);


 pm3386_reg_write(0, 0x002, 0x0062);
 if (secondary)
  pm3386_reg_write(1, 0x002, 0x0062);
 mdelay(10);


 pm3386_reg_write(0, 0x002, 0x0063);
 if (secondary)
  pm3386_reg_write(1, 0x002, 0x0063);
 mdelay(10);


 pm3386_set_mac(0, mac[0]);
 pm3386_set_mac(1, mac[1]);
 if (secondary)
  pm3386_set_mac(2, mac[2]);


 pm3386_set_carrier(0, 0);
 pm3386_set_carrier(1, 0);
 if (secondary)
  pm3386_set_carrier(2, 0);
}
