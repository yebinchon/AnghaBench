
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


 int NXT2002_DEFAULT_FIRMWARE ;
 int nxt2002_load_firmware (struct dvb_frontend*,struct firmware const*) ;
 int nxt200x_microcontroller_stop (struct nxt200x_state*) ;
 int nxt200x_writebytes (struct nxt200x_state*,int,int*,int) ;
 int printk (char*,...) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int ) ;

__attribute__((used)) static int nxt2002_init(struct dvb_frontend* fe)
{
 struct nxt200x_state* state = fe->demodulator_priv;
 const struct firmware *fw;
 int ret;
 u8 buf[2];


 printk("nxt2002: Waiting for firmware upload (%s)...\n", NXT2002_DEFAULT_FIRMWARE);
 ret = request_firmware(&fw, NXT2002_DEFAULT_FIRMWARE,
          state->i2c->dev.parent);
 printk("nxt2002: Waiting for firmware upload(2)...\n");
 if (ret) {
  printk("nxt2002: No firmware uploaded (timeout or file not found?)\n");
  return ret;
 }

 ret = nxt2002_load_firmware(fe, fw);
 release_firmware(fw);
 if (ret) {
  printk("nxt2002: Writing firmware to device failed\n");
  return ret;
 }
 printk("nxt2002: Firmware upload complete\n");


 nxt200x_microcontroller_stop(state);


 buf[0]=0x00;
 nxt200x_writebytes(state, 0x2B, buf, 1);


 nxt200x_microcontroller_stop(state);


 buf[0] = 0x0F;
 nxt200x_writebytes(state, 0x08, buf, 1);
 buf[0] = 0x00;
 nxt200x_writebytes(state, 0x08, buf, 1);


 buf[0] = 0xF1;
 nxt200x_writebytes(state, 0x57, buf, 1);


 buf[0] = 0x20;
 nxt200x_writebytes(state, 0x09, buf, 1);


 buf[0] = 0x7E;
 buf[1] = 0x00;
 nxt200x_writebytes(state, 0xE9, buf, 2);


 buf[0] = 0x00;
 nxt200x_writebytes(state, 0xCC, buf, 1);

 return 0;
}
