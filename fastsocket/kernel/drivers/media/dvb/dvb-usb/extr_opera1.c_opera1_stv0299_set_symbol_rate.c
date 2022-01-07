
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {int dummy; } ;
typedef int ratio ;


 int REG_1F_SYMBOLRATE_BYTE0 ;
 int REG_20_SYMBOLRATE_BYTE1 ;
 int REG_21_SYMBOLRATE_BYTE2 ;
 int stv0299_writereg (struct dvb_frontend*,int,int) ;

__attribute__((used)) static int opera1_stv0299_set_symbol_rate(struct dvb_frontend *fe, u32 srate,
       u32 ratio)
{
 stv0299_writereg(fe, 0x13, 0x98);
 stv0299_writereg(fe, 0x14, 0x95);
 stv0299_writereg(fe, REG_1F_SYMBOLRATE_BYTE0, (ratio >> 16) & 0xff);
 stv0299_writereg(fe, REG_20_SYMBOLRATE_BYTE1, (ratio >> 8) & 0xff);
 stv0299_writereg(fe, REG_21_SYMBOLRATE_BYTE2, (ratio) & 0xf0);
 return 0;

}
