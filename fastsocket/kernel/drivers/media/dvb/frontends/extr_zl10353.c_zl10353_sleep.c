
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zl10353_softdown ;
typedef int u8 ;
struct dvb_frontend {int dummy; } ;


 int zl10353_write (struct dvb_frontend*,int*,int) ;

__attribute__((used)) static int zl10353_sleep(struct dvb_frontend *fe)
{
 static u8 zl10353_softdown[] = { 0x50, 0x0C, 0x44 };

 zl10353_write(fe, zl10353_softdown, sizeof(zl10353_softdown));
 return 0;
}
