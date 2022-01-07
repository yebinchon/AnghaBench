
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx231xx {int dummy; } ;


 int ITVC_WRITE_DIR ;
 int MCI_MEMORY_ADDRESS_BYTE0 ;
 int MCI_MEMORY_ADDRESS_BYTE1 ;
 int MCI_MEMORY_ADDRESS_BYTE2 ;
 int MCI_MEMORY_DATA_BYTE0 ;
 int MCI_MEMORY_DATA_BYTE1 ;
 int MCI_MEMORY_DATA_BYTE2 ;
 int MCI_MEMORY_DATA_BYTE3 ;
 int MCI_MODE_MEMORY_WRITE ;
 int setITVCReg (struct cx231xx*,int ,int) ;
 int waitForMciComplete (struct cx231xx*) ;

__attribute__((used)) static int mc417_memory_write(struct cx231xx *dev, u32 address, u32 value)
{


 u32 temp;
 int ret = 0;

 temp = 0x82 | MCI_MEMORY_DATA_BYTE0|((value & 0x000000FF) << 8);
 temp = temp << 10;
 ret = setITVCReg(dev, ITVC_WRITE_DIR, temp);
 if (ret < 0)
  return ret;
 temp = temp | ((0x05) << 10);
 setITVCReg(dev, ITVC_WRITE_DIR, temp);


 temp = 0x82 | MCI_MEMORY_DATA_BYTE1 | (value & 0x0000FF00);
 temp = temp << 10;
 setITVCReg(dev, ITVC_WRITE_DIR, temp);
 temp = temp | ((0x05) << 10);
 setITVCReg(dev, ITVC_WRITE_DIR, temp);


 temp = 0x82|MCI_MEMORY_DATA_BYTE2|((value&0x00FF0000)>>8);
 temp = temp<<10;
 setITVCReg(dev, ITVC_WRITE_DIR, temp);
 temp = temp|((0x05)<<10);
 setITVCReg(dev, ITVC_WRITE_DIR, temp);


 temp = 0x82|MCI_MEMORY_DATA_BYTE3|((value&0xFF000000)>>16);
 temp = temp<<10;
 setITVCReg(dev, ITVC_WRITE_DIR, temp);
 temp = temp|((0x05)<<10);
 setITVCReg(dev, ITVC_WRITE_DIR, temp);


 temp = 0x82|MCI_MEMORY_ADDRESS_BYTE2 | MCI_MODE_MEMORY_WRITE |
  ((address & 0x003F0000)>>8);
 temp = temp<<10;
 setITVCReg(dev, ITVC_WRITE_DIR, temp);
 temp = temp|((0x05)<<10);
 setITVCReg(dev, ITVC_WRITE_DIR, temp);


 temp = 0x82|MCI_MEMORY_ADDRESS_BYTE1 | (address & 0xFF00);
 temp = temp<<10;
 setITVCReg(dev, ITVC_WRITE_DIR, temp);
 temp = temp|((0x05)<<10);
 setITVCReg(dev, ITVC_WRITE_DIR, temp);


 temp = 0x82|MCI_MEMORY_ADDRESS_BYTE0|((address & 0x00FF)<<8);
 temp = temp<<10;
 setITVCReg(dev, ITVC_WRITE_DIR, temp);
 temp = temp|((0x05)<<10);
 setITVCReg(dev, ITVC_WRITE_DIR, temp);


 waitForMciComplete(dev);

 return 0;
}
