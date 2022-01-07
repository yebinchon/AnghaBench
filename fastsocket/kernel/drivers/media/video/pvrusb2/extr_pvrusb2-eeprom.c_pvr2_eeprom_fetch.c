
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u16 ;
struct pvr2_hdw {int eeprom_addr; int i2c_adap; } ;
struct i2c_msg {int addr; int len; int* buf; scalar_t__ flags; } ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 unsigned int EEPROM_SIZE ;
 int GFP_KERNEL ;
 scalar_t__ I2C_M_RD ;
 int PVR2_TRACE_ERROR_LEGS ;
 int i2c_transfer (int *,struct i2c_msg*,int ) ;
 int kfree (int*) ;
 int* kmalloc (unsigned int,int ) ;
 int memset (int*,int ,unsigned int) ;
 int pvr2_trace (int ,char*,...) ;
 int trace_eeprom (char*,unsigned int,...) ;

__attribute__((used)) static u8 *pvr2_eeprom_fetch(struct pvr2_hdw *hdw)
{
 struct i2c_msg msg[2];
 u8 *eeprom;
 u8 iadd[2];
 u8 addr;
 u16 eepromSize;
 unsigned int offs;
 int ret;
 int mode16 = 0;
 unsigned pcnt,tcnt;
 eeprom = kmalloc(EEPROM_SIZE,GFP_KERNEL);
 if (!eeprom) {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "Failed to allocate memory"
      " required to read eeprom");
  return ((void*)0);
 }

 trace_eeprom("Value for eeprom addr from controller was 0x%x",
       hdw->eeprom_addr);
 addr = hdw->eeprom_addr;



 if (addr & 0x80) addr >>= 1;




 mode16 = (addr & 1);
 eepromSize = (mode16 ? 4096 : 256);
 trace_eeprom("Examining %d byte eeprom at location 0x%x"
       " using %d bit addressing",eepromSize,addr,
       mode16 ? 16 : 8);

 msg[0].addr = addr;
 msg[0].flags = 0;
 msg[0].len = mode16 ? 2 : 1;
 msg[0].buf = iadd;
 msg[1].addr = addr;
 msg[1].flags = I2C_M_RD;





 memset(eeprom,0,EEPROM_SIZE);
 for (tcnt = 0; tcnt < EEPROM_SIZE; tcnt += pcnt) {
  pcnt = 16;
  if (pcnt + tcnt > EEPROM_SIZE) pcnt = EEPROM_SIZE-tcnt;
  offs = tcnt + (eepromSize - EEPROM_SIZE);
  if (mode16) {
   iadd[0] = offs >> 8;
   iadd[1] = offs;
  } else {
   iadd[0] = offs;
  }
  msg[1].len = pcnt;
  msg[1].buf = eeprom+tcnt;
  if ((ret = i2c_transfer(&hdw->i2c_adap,
     msg,ARRAY_SIZE(msg))) != 2) {
   pvr2_trace(PVR2_TRACE_ERROR_LEGS,
       "eeprom fetch set offs err=%d",ret);
   kfree(eeprom);
   return ((void*)0);
  }
 }
 return eeprom;
}
