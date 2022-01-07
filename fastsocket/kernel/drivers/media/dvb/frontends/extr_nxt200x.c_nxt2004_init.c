
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nxt200x_state {TYPE_2__* i2c; } ;
struct firmware {int dummy; } ;
struct dvb_frontend {struct nxt200x_state* demodulator_priv; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int NXT2004_DEFAULT_FIRMWARE ;
 int nxt2004_load_firmware (struct dvb_frontend*,struct firmware const*) ;
 int nxt2004_microcontroller_init (struct nxt200x_state*) ;
 int nxt200x_microcontroller_stop (struct nxt200x_state*) ;
 int nxt200x_readbytes (struct nxt200x_state*,int,int*,int) ;
 int nxt200x_readreg_multibyte (struct nxt200x_state*,int,int*,int) ;
 int nxt200x_writebytes (struct nxt200x_state*,int,int*,int) ;
 int nxt200x_writereg_multibyte (struct nxt200x_state*,int,int*,int) ;
 int printk (char*,...) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int ) ;

__attribute__((used)) static int nxt2004_init(struct dvb_frontend* fe)
{
 struct nxt200x_state* state = fe->demodulator_priv;
 const struct firmware *fw;
 int ret;
 u8 buf[3];


 buf[0]=0x00;
 nxt200x_writebytes(state, 0x1E, buf, 1);


 printk("nxt2004: Waiting for firmware upload (%s)...\n", NXT2004_DEFAULT_FIRMWARE);
 ret = request_firmware(&fw, NXT2004_DEFAULT_FIRMWARE,
          state->i2c->dev.parent);
 printk("nxt2004: Waiting for firmware upload(2)...\n");
 if (ret) {
  printk("nxt2004: No firmware uploaded (timeout or file not found?)\n");
  return ret;
 }

 ret = nxt2004_load_firmware(fe, fw);
 release_firmware(fw);
 if (ret) {
  printk("nxt2004: Writing firmware to device failed\n");
  return ret;
 }
 printk("nxt2004: Firmware upload complete\n");


 buf[0] = 0x01;
 nxt200x_writebytes(state, 0x19, buf, 1);

 nxt2004_microcontroller_init(state);
 nxt200x_microcontroller_stop(state);
 nxt200x_microcontroller_stop(state);
 nxt2004_microcontroller_init(state);
 nxt200x_microcontroller_stop(state);


 buf[0] = 0xFF;
 nxt200x_writereg_multibyte(state, 0x08, buf, 1);
 buf[0] = 0x00;
 nxt200x_writereg_multibyte(state, 0x08, buf, 1);


 buf[0] = 0xD7;
 nxt200x_writebytes(state, 0x57, buf, 1);


 buf[0] = 0x07;
 buf[1] = 0xfe;
 nxt200x_writebytes(state, 0x35, buf, 2);
 buf[0] = 0x12;
 nxt200x_writebytes(state, 0x34, buf, 1);
 buf[0] = 0x80;
 nxt200x_writebytes(state, 0x21, buf, 1);


 buf[0] = 0x21;
 nxt200x_writebytes(state, 0x0A, buf, 1);


 buf[0] = 0x01;
 nxt200x_writereg_multibyte(state, 0x80, buf, 1);


 buf[0] = 0x7E;
 buf[1] = 0x00;
 nxt200x_writebytes(state, 0xE9, buf, 2);


 buf[0] = 0x00;
 nxt200x_writebytes(state, 0xCC, buf, 1);


 nxt200x_readreg_multibyte(state, 0x80, buf, 1);
 buf[0] = 0x00;
 nxt200x_writereg_multibyte(state, 0x80, buf, 1);


 nxt200x_readreg_multibyte(state, 0x08, buf, 1);
 buf[0] = 0x10;
 nxt200x_writereg_multibyte(state, 0x08, buf, 1);
 nxt200x_readreg_multibyte(state, 0x08, buf, 1);
 buf[0] = 0x00;
 nxt200x_writereg_multibyte(state, 0x08, buf, 1);


 nxt200x_readreg_multibyte(state, 0x80, buf, 1);
 buf[0] = 0x01;
 nxt200x_writereg_multibyte(state, 0x80, buf, 1);
 buf[0] = 0x70;
 nxt200x_writereg_multibyte(state, 0x81, buf, 1);
 buf[0] = 0x31; buf[1] = 0x5E; buf[2] = 0x66;
 nxt200x_writereg_multibyte(state, 0x82, buf, 3);

 nxt200x_readreg_multibyte(state, 0x88, buf, 1);
 buf[0] = 0x11;
 nxt200x_writereg_multibyte(state, 0x88, buf, 1);
 nxt200x_readreg_multibyte(state, 0x80, buf, 1);
 buf[0] = 0x40;
 nxt200x_writereg_multibyte(state, 0x80, buf, 1);

 nxt200x_readbytes(state, 0x10, buf, 1);
 buf[0] = 0x10;
 nxt200x_writebytes(state, 0x10, buf, 1);
 nxt200x_readbytes(state, 0x0A, buf, 1);
 buf[0] = 0x21;
 nxt200x_writebytes(state, 0x0A, buf, 1);

 nxt2004_microcontroller_init(state);

 buf[0] = 0x21;
 nxt200x_writebytes(state, 0x0A, buf, 1);
 buf[0] = 0x7E;
 nxt200x_writebytes(state, 0xE9, buf, 1);
 buf[0] = 0x00;
 nxt200x_writebytes(state, 0xEA, buf, 1);

 nxt200x_readreg_multibyte(state, 0x80, buf, 1);
 buf[0] = 0x00;
 nxt200x_writereg_multibyte(state, 0x80, buf, 1);
 nxt200x_readreg_multibyte(state, 0x80, buf, 1);
 buf[0] = 0x00;
 nxt200x_writereg_multibyte(state, 0x80, buf, 1);


 nxt200x_readreg_multibyte(state, 0x08, buf, 1);
 buf[0] = 0x10;
 nxt200x_writereg_multibyte(state, 0x08, buf, 1);
 nxt200x_readreg_multibyte(state, 0x08, buf, 1);
 buf[0] = 0x00;
 nxt200x_writereg_multibyte(state, 0x08, buf, 1);

 nxt200x_readreg_multibyte(state, 0x80, buf, 1);
 buf[0] = 0x04;
 nxt200x_writereg_multibyte(state, 0x80, buf, 1);
 buf[0] = 0x00;
 nxt200x_writereg_multibyte(state, 0x81, buf, 1);
 buf[0] = 0x80; buf[1] = 0x00; buf[2] = 0x00;
 nxt200x_writereg_multibyte(state, 0x82, buf, 3);

 nxt200x_readreg_multibyte(state, 0x88, buf, 1);
 buf[0] = 0x11;
 nxt200x_writereg_multibyte(state, 0x88, buf, 1);

 nxt200x_readreg_multibyte(state, 0x80, buf, 1);
 buf[0] = 0x44;
 nxt200x_writereg_multibyte(state, 0x80, buf, 1);


 nxt200x_readbytes(state, 0x10, buf, 1);
 buf[0] = 0x12;
 nxt200x_writebytes(state, 0x10, buf, 1);
 buf[0] = 0x04;
 nxt200x_writebytes(state, 0x13, buf, 1);
 buf[0] = 0x00;
 nxt200x_writebytes(state, 0x16, buf, 1);
 buf[0] = 0x04;
 nxt200x_writebytes(state, 0x14, buf, 1);
 buf[0] = 0x00;
 nxt200x_writebytes(state, 0x14, buf, 1);
 nxt200x_writebytes(state, 0x17, buf, 1);
 nxt200x_writebytes(state, 0x14, buf, 1);
 nxt200x_writebytes(state, 0x17, buf, 1);

 return 0;
}
