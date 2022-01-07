
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; int adap; } ;
struct tda18271_priv {unsigned char* tda18271_regs; int id; TYPE_1__ i2c_props; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 size_t R_CD1 ;
 size_t R_CD2 ;
 size_t R_CD3 ;
 size_t R_CPD ;
 size_t R_EB1 ;
 size_t R_EB10 ;
 size_t R_EB11 ;
 size_t R_EB12 ;
 size_t R_EB13 ;
 size_t R_EB14 ;
 size_t R_EB15 ;
 size_t R_EB16 ;
 size_t R_EB17 ;
 size_t R_EB18 ;
 size_t R_EB19 ;
 size_t R_EB2 ;
 size_t R_EB20 ;
 size_t R_EB21 ;
 size_t R_EB22 ;
 size_t R_EB23 ;
 size_t R_EB3 ;
 size_t R_EB4 ;
 size_t R_EB5 ;
 size_t R_EB6 ;
 size_t R_EB7 ;
 size_t R_EB8 ;
 size_t R_EB9 ;
 size_t R_EP1 ;
 size_t R_EP2 ;
 size_t R_EP3 ;
 size_t R_EP4 ;
 size_t R_EP5 ;
 size_t R_ID ;
 size_t R_MD1 ;
 size_t R_MD2 ;
 size_t R_MD3 ;
 size_t R_MPD ;
 size_t R_PL ;
 size_t R_TM ;


 int TDA18271_MAIN_PLL ;
 int TDA18271_NUM_REGS ;
 int i2c_adapter_id (int ) ;
 int msleep (int) ;
 int tda18271_charge_pump_source (struct dvb_frontend*,int ,int) ;
 int tda18271_write_regs (struct dvb_frontend*,size_t,int) ;
 int tda_dbg (char*,int ,int ) ;

int tda18271_init_regs(struct dvb_frontend *fe)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 unsigned char *regs = priv->tda18271_regs;

 tda_dbg("initializing registers for device @ %d-%04x\n",
  i2c_adapter_id(priv->i2c_props.adap),
  priv->i2c_props.addr);


 switch (priv->id) {
 case 129:
  regs[R_ID] = 0x83;
  break;
 case 128:
  regs[R_ID] = 0x84;
  break;
 };

 regs[R_TM] = 0x08;
 regs[R_PL] = 0x80;
 regs[R_EP1] = 0xc6;
 regs[R_EP2] = 0xdf;
 regs[R_EP3] = 0x16;
 regs[R_EP4] = 0x60;
 regs[R_EP5] = 0x80;
 regs[R_CPD] = 0x80;
 regs[R_CD1] = 0x00;
 regs[R_CD2] = 0x00;
 regs[R_CD3] = 0x00;
 regs[R_MPD] = 0x00;
 regs[R_MD1] = 0x00;
 regs[R_MD2] = 0x00;
 regs[R_MD3] = 0x00;

 switch (priv->id) {
 case 129:
  regs[R_EB1] = 0xff;
  break;
 case 128:
  regs[R_EB1] = 0xfc;
  break;
 };

 regs[R_EB2] = 0x01;
 regs[R_EB3] = 0x84;
 regs[R_EB4] = 0x41;
 regs[R_EB5] = 0x01;
 regs[R_EB6] = 0x84;
 regs[R_EB7] = 0x40;
 regs[R_EB8] = 0x07;
 regs[R_EB9] = 0x00;
 regs[R_EB10] = 0x00;
 regs[R_EB11] = 0x96;

 switch (priv->id) {
 case 129:
  regs[R_EB12] = 0x0f;
  break;
 case 128:
  regs[R_EB12] = 0x33;
  break;
 };

 regs[R_EB13] = 0xc1;
 regs[R_EB14] = 0x00;
 regs[R_EB15] = 0x8f;
 regs[R_EB16] = 0x00;
 regs[R_EB17] = 0x00;

 switch (priv->id) {
 case 129:
  regs[R_EB18] = 0x00;
  break;
 case 128:
  regs[R_EB18] = 0x8c;
  break;
 };

 regs[R_EB19] = 0x00;
 regs[R_EB20] = 0x20;

 switch (priv->id) {
 case 129:
  regs[R_EB21] = 0x33;
  break;
 case 128:
  regs[R_EB21] = 0xb3;
  break;
 };

 regs[R_EB22] = 0x48;
 regs[R_EB23] = 0xb0;

 tda18271_write_regs(fe, 0x00, TDA18271_NUM_REGS);


 regs[R_EB17] = 0x00;
 tda18271_write_regs(fe, R_EB17, 1);
 regs[R_EB17] = 0x03;
 tda18271_write_regs(fe, R_EB17, 1);
 regs[R_EB17] = 0x43;
 tda18271_write_regs(fe, R_EB17, 1);
 regs[R_EB17] = 0x4c;
 tda18271_write_regs(fe, R_EB17, 1);


 if ((priv->id) == 129) {
  regs[R_EB20] = 0xa0;
  tda18271_write_regs(fe, R_EB20, 1);
  regs[R_EB20] = 0xa7;
  tda18271_write_regs(fe, R_EB20, 1);
  regs[R_EB20] = 0xe7;
  tda18271_write_regs(fe, R_EB20, 1);
  regs[R_EB20] = 0xec;
  tda18271_write_regs(fe, R_EB20, 1);
 }




 regs[R_EP3] = 0x1f;
 regs[R_EP4] = 0x66;
 regs[R_EP5] = 0x81;
 regs[R_CPD] = 0xcc;
 regs[R_CD1] = 0x6c;
 regs[R_CD2] = 0x00;
 regs[R_CD3] = 0x00;
 regs[R_MPD] = 0xcd;
 regs[R_MD1] = 0x77;
 regs[R_MD2] = 0x08;
 regs[R_MD3] = 0x00;

 tda18271_write_regs(fe, R_EP3, 11);

 if ((priv->id) == 128) {

  tda18271_charge_pump_source(fe, TDA18271_MAIN_PLL, 1);
  msleep(1);


  tda18271_charge_pump_source(fe, TDA18271_MAIN_PLL, 0);
 }

 msleep(5);


 tda18271_write_regs(fe, R_EP1, 1);
 msleep(5);

 regs[R_EP5] = 0x85;
 regs[R_CPD] = 0xcb;
 regs[R_CD1] = 0x66;
 regs[R_CD2] = 0x70;

 tda18271_write_regs(fe, R_EP3, 7);
 msleep(5);


 tda18271_write_regs(fe, R_EP2, 1);
 msleep(30);


 regs[R_EP5] = 0x82;
 regs[R_CPD] = 0xa8;
 regs[R_CD2] = 0x00;
 regs[R_MPD] = 0xa9;
 regs[R_MD1] = 0x73;
 regs[R_MD2] = 0x1a;

 tda18271_write_regs(fe, R_EP3, 11);
 msleep(5);


 tda18271_write_regs(fe, R_EP1, 1);
 msleep(5);

 regs[R_EP5] = 0x86;
 regs[R_CPD] = 0xa8;
 regs[R_CD1] = 0x66;
 regs[R_CD2] = 0xa0;

 tda18271_write_regs(fe, R_EP3, 7);
 msleep(5);


 tda18271_write_regs(fe, R_EP2, 1);
 msleep(30);


 regs[R_EP5] = 0x83;
 regs[R_CPD] = 0x98;
 regs[R_CD1] = 0x65;
 regs[R_CD2] = 0x00;
 regs[R_MPD] = 0x99;
 regs[R_MD1] = 0x71;
 regs[R_MD2] = 0xcd;

 tda18271_write_regs(fe, R_EP3, 11);
 msleep(5);


 tda18271_write_regs(fe, R_EP1, 1);
 msleep(5);

 regs[R_EP5] = 0x87;
 regs[R_CD1] = 0x65;
 regs[R_CD2] = 0x50;

 tda18271_write_regs(fe, R_EP3, 7);
 msleep(5);


 tda18271_write_regs(fe, R_EP2, 1);
 msleep(30);


 regs[R_EP4] = 0x64;
 tda18271_write_regs(fe, R_EP4, 1);


 tda18271_write_regs(fe, R_EP1, 1);

 return 0;
}
