
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dme1737_data {int has_fan; int has_pwm; } ;


 int ENODEV ;
 int dme1737_sio_enter (int) ;
 int dme1737_sio_exit (int) ;
 int dme1737_sio_inb (int,int) ;
 int dme1737_sio_outb (int,int,int) ;
 int force_id ;
 int inb (int) ;

__attribute__((used)) static int dme1737_i2c_get_features(int sio_cip, struct dme1737_data *data)
{
 int err = 0, reg;
 u16 addr;

 dme1737_sio_enter(sio_cip);




 reg = force_id ? force_id : dme1737_sio_inb(sio_cip, 0x20);
 if (!(reg == 0x77 || reg == 0x78 || reg == 0x89)) {
  err = -ENODEV;
  goto exit;
 }


 dme1737_sio_outb(sio_cip, 0x07, 0x0a);


 if (!(addr = (dme1737_sio_inb(sio_cip, 0x60) << 8) |
        dme1737_sio_inb(sio_cip, 0x61))) {
  err = -ENODEV;
  goto exit;
 }




 if ((inb(addr + 0x43) & 0x0c) == 0x08) {
  data->has_fan |= (1 << 5);
 }
 if ((inb(addr + 0x44) & 0x0c) == 0x08) {
  data->has_pwm |= (1 << 5);
 }
 if ((inb(addr + 0x45) & 0x0c) == 0x08) {
  data->has_fan |= (1 << 4);
 }
 if ((inb(addr + 0x46) & 0x0c) == 0x08) {
  data->has_pwm |= (1 << 4);
 }

exit:
 dme1737_sio_exit(sio_cip);

 return err;
}
