
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct cx23885_dev {int dummy; } ;


 int MC417_MICS ;
 int MC417_MIDATA ;
 int MC417_MIRD ;
 int MC417_MIRDY ;
 int MC417_MIWR ;
 int MC417_OEN ;
 int MC417_RWD ;
 int MCI_MODE_REGISTER_READ ;
 int MCI_REGISTER_ADDRESS_BYTE0 ;
 int MCI_REGISTER_ADDRESS_BYTE1 ;
 int MCI_REGISTER_DATA_BYTE0 ;
 int MCI_REGISTER_DATA_BYTE1 ;
 int MCI_REGISTER_DATA_BYTE2 ;
 int MCI_REGISTER_DATA_BYTE3 ;
 int MCI_REGISTER_MODE ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;
 int mc417_wait_ready (struct cx23885_dev*) ;

int mc417_register_read(struct cx23885_dev *dev, u16 address, u32 *value)
{
 int retval;
 u32 regval;
 u32 tempval;
 u32 dataval;




 cx_write(MC417_OEN, MC417_MIRDY);


 regval = MC417_MIRD | MC417_MIRDY | MCI_REGISTER_ADDRESS_BYTE0 |
  ((address & 0x00FF));
 cx_write(MC417_RWD, regval);
 regval |= MC417_MICS | MC417_MIWR;
 cx_write(MC417_RWD, regval);


 regval = MC417_MIRD | MC417_MIRDY | MCI_REGISTER_ADDRESS_BYTE1 |
  ((address >> 8) & 0xFF);
 cx_write(MC417_RWD, regval);
 regval |= MC417_MICS | MC417_MIWR;
 cx_write(MC417_RWD, regval);


 regval = MC417_MIRD | MC417_MIRDY | MCI_REGISTER_MODE |
  MCI_MODE_REGISTER_READ;
 cx_write(MC417_RWD, regval);
 regval |= MC417_MICS | MC417_MIWR;
 cx_write(MC417_RWD, regval);


 retval = mc417_wait_ready(dev);


 cx_write(MC417_OEN, MC417_MIRDY | MC417_MIDATA);


 regval = MC417_MIRD | MC417_MIRDY | MCI_REGISTER_DATA_BYTE0;
 cx_write(MC417_RWD, regval);






 regval = MC417_MIWR | MC417_MIRDY | MCI_REGISTER_DATA_BYTE0;
 cx_write(MC417_RWD, regval);


 tempval = cx_read(MC417_RWD);
 dataval = tempval & 0x000000FF;


 regval = MC417_MIWR | MC417_MIRD | MC417_MICS | MC417_MIRDY;
 cx_write(MC417_RWD, regval);


 regval = MC417_MIRD | MC417_MIRDY | MCI_REGISTER_DATA_BYTE1;
 cx_write(MC417_RWD, regval);
 regval = MC417_MIWR | MC417_MIRDY | MCI_REGISTER_DATA_BYTE1;
 cx_write(MC417_RWD, regval);
 tempval = cx_read(MC417_RWD);
 dataval |= ((tempval & 0x000000FF) << 8);
 regval = MC417_MIWR | MC417_MIRD | MC417_MICS | MC417_MIRDY;
 cx_write(MC417_RWD, regval);


 regval = MC417_MIRD | MC417_MIRDY | MCI_REGISTER_DATA_BYTE2;
 cx_write(MC417_RWD, regval);
 regval = MC417_MIWR | MC417_MIRDY | MCI_REGISTER_DATA_BYTE2;
 cx_write(MC417_RWD, regval);
 tempval = cx_read(MC417_RWD);
 dataval |= ((tempval & 0x000000FF) << 16);
 regval = MC417_MIWR | MC417_MIRD | MC417_MICS | MC417_MIRDY;
 cx_write(MC417_RWD, regval);


 regval = MC417_MIRD | MC417_MIRDY | MCI_REGISTER_DATA_BYTE3;
 cx_write(MC417_RWD, regval);
 regval = MC417_MIWR | MC417_MIRDY | MCI_REGISTER_DATA_BYTE3;
 cx_write(MC417_RWD, regval);
 tempval = cx_read(MC417_RWD);
 dataval |= ((tempval & 0x000000FF) << 24);
 regval = MC417_MIWR | MC417_MIRD | MC417_MICS | MC417_MIRDY;
 cx_write(MC417_RWD, regval);

 *value = dataval;

 return retval;
}
