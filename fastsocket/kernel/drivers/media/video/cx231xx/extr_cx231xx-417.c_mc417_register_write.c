
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct cx231xx {int dummy; } ;


 int ITVC_WRITE_DIR ;
 int MCI_MODE_REGISTER_WRITE ;
 int MCI_REGISTER_ADDRESS_BYTE0 ;
 int MCI_REGISTER_ADDRESS_BYTE1 ;
 int MCI_REGISTER_DATA_BYTE0 ;
 int MCI_REGISTER_DATA_BYTE1 ;
 int MCI_REGISTER_DATA_BYTE2 ;
 int MCI_REGISTER_DATA_BYTE3 ;
 int MCI_REGISTER_MODE ;
 int setITVCReg (struct cx231xx*,int ,int) ;
 int waitForMciComplete (struct cx231xx*) ;

__attribute__((used)) static int mc417_register_write(struct cx231xx *dev, u16 address, u32 value)
{
 u32 temp;
 int status = 0;

 temp = 0x82|MCI_REGISTER_DATA_BYTE0|((value&0x000000FF)<<8);
 temp = temp<<10;
 status = setITVCReg(dev, ITVC_WRITE_DIR, temp);
 if (status < 0)
  return status;
 temp = temp|((0x05)<<10);
 setITVCReg(dev, ITVC_WRITE_DIR, temp);


 temp = 0x82|MCI_REGISTER_DATA_BYTE1|(value&0x0000FF00);
 temp = temp<<10;
 setITVCReg(dev, ITVC_WRITE_DIR, temp);
 temp = temp|((0x05)<<10);
 setITVCReg(dev, ITVC_WRITE_DIR, temp);


 temp = 0x82|MCI_REGISTER_DATA_BYTE2|((value&0x00FF0000)>>8);
 temp = temp<<10;
 setITVCReg(dev, ITVC_WRITE_DIR, temp);
 temp = temp|((0x05)<<10);
 setITVCReg(dev, ITVC_WRITE_DIR, temp);


 temp = 0x82|MCI_REGISTER_DATA_BYTE3|((value&0xFF000000)>>16);
 temp = temp<<10;
 setITVCReg(dev, ITVC_WRITE_DIR, temp);
 temp = temp|((0x05)<<10);
 setITVCReg(dev, ITVC_WRITE_DIR, temp);


 temp = 0x82|MCI_REGISTER_ADDRESS_BYTE0|((address&0x000000FF)<<8);
 temp = temp<<10;
 setITVCReg(dev, ITVC_WRITE_DIR, temp);
 temp = temp|((0x05)<<10);
 setITVCReg(dev, ITVC_WRITE_DIR, temp);


 temp = 0x82|MCI_REGISTER_ADDRESS_BYTE1|(address&0x0000FF00);
 temp = temp<<10;
 setITVCReg(dev, ITVC_WRITE_DIR, temp);
 temp = temp|((0x05)<<10);
 setITVCReg(dev, ITVC_WRITE_DIR, temp);


 temp = 0x82 | MCI_REGISTER_MODE | MCI_MODE_REGISTER_WRITE;
 temp = temp<<10;
 setITVCReg(dev, ITVC_WRITE_DIR, temp);
 temp = temp|((0x05)<<10);
 setITVCReg(dev, ITVC_WRITE_DIR, temp);

 return waitForMciComplete(dev);
}
