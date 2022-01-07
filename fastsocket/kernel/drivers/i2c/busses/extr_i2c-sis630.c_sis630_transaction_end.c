
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_adapter {int dev; } ;


 int SMB_CNT ;
 int SMB_STS ;
 int dev_dbg (int *,char*,int) ;
 scalar_t__ high_clock ;
 int sis630_read (int ) ;
 int sis630_write (int ,int) ;

__attribute__((used)) static void sis630_transaction_end(struct i2c_adapter *adap, u8 oldclock)
{
 int temp = 0;


 sis630_write(SMB_STS, temp);

 dev_dbg(&adap->dev, "SMB_CNT before clock restore 0x%02x\n", sis630_read(SMB_CNT));





 if (high_clock && !(oldclock & 0x20))
  sis630_write(SMB_CNT,(sis630_read(SMB_CNT) & ~0x20));

 dev_dbg(&adap->dev, "SMB_CNT after clock restore 0x%02x\n", sis630_read(SMB_CNT));
}
