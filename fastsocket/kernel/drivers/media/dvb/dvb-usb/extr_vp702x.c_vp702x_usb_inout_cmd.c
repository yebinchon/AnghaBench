
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int memcpy (int*,int*,int) ;
 int vp702x_usb_inout_op (struct dvb_usb_device*,int*,int,int*,int,int) ;

__attribute__((used)) static int vp702x_usb_inout_cmd(struct dvb_usb_device *d, u8 cmd, u8 *o,
    int olen, u8 *i, int ilen, int msec)
{
 u8 bout[olen+2];
 u8 bin[ilen+1];
 int ret = 0;

 bout[0] = 0x00;
 bout[1] = cmd;
 memcpy(&bout[2],o,olen);

 ret = vp702x_usb_inout_op(d, bout, olen+2, bin, ilen+1,msec);

 if (ret == 0)
  memcpy(i,&bin[1],ilen);

 return ret;
}
