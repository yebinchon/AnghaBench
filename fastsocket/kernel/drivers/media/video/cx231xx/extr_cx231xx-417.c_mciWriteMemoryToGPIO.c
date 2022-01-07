
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx231xx {int dummy; } ;


 int MCI_MEMORY_ADDRESS_BYTE0 ;
 int MCI_MEMORY_ADDRESS_BYTE1 ;
 int MCI_MEMORY_ADDRESS_BYTE2 ;
 int MCI_MEMORY_DATA_BYTE0 ;
 int MCI_MEMORY_DATA_BYTE1 ;
 int MCI_MEMORY_DATA_BYTE2 ;
 int MCI_MEMORY_DATA_BYTE3 ;
 int MCI_MODE_MEMORY_WRITE ;

__attribute__((used)) static void mciWriteMemoryToGPIO(struct cx231xx *dev, u32 address, u32 value,
  u32 *p_fw_image)
{

 u32 temp = 0;
 int i = 0;

 temp = 0x82|MCI_MEMORY_DATA_BYTE0|((value&0x000000FF)<<8);
 temp = temp<<10;
 *p_fw_image = temp;
 p_fw_image++;
 temp = temp|((0x05)<<10);
 *p_fw_image = temp;
 p_fw_image++;


 temp = 0x82|MCI_MEMORY_DATA_BYTE1|(value&0x0000FF00);
 temp = temp<<10;
 *p_fw_image = temp;
 p_fw_image++;
 temp = temp|((0x05)<<10);
 *p_fw_image = temp;
 p_fw_image++;


 temp = 0x82|MCI_MEMORY_DATA_BYTE2|((value&0x00FF0000)>>8);
 temp = temp<<10;
 *p_fw_image = temp;
 p_fw_image++;
 temp = temp|((0x05)<<10);
 *p_fw_image = temp;
 p_fw_image++;


 temp = 0x82|MCI_MEMORY_DATA_BYTE3|((value&0xFF000000)>>16);
 temp = temp<<10;
 *p_fw_image = temp;
 p_fw_image++;
 temp = temp|((0x05)<<10);
 *p_fw_image = temp;
 p_fw_image++;


 temp = 0x82|MCI_MEMORY_ADDRESS_BYTE2 | MCI_MODE_MEMORY_WRITE |
  ((address & 0x003F0000)>>8);
 temp = temp<<10;
 *p_fw_image = temp;
 p_fw_image++;
 temp = temp|((0x05)<<10);
 *p_fw_image = temp;
 p_fw_image++;


 temp = 0x82|MCI_MEMORY_ADDRESS_BYTE1 | (address & 0xFF00);
 temp = temp<<10;
 *p_fw_image = temp;
 p_fw_image++;
 temp = temp|((0x05)<<10);
 *p_fw_image = temp;
 p_fw_image++;


 temp = 0x82|MCI_MEMORY_ADDRESS_BYTE0|((address & 0x00FF)<<8);
 temp = temp<<10;
 *p_fw_image = temp;
 p_fw_image++;
 temp = temp|((0x05)<<10);
 *p_fw_image = temp;
 p_fw_image++;

 for (i = 0; i < 6; i++) {
  *p_fw_image = 0xFFFFFFFF;
  p_fw_image++;
 }
}
