
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct tsc2007 {TYPE_1__* client; } ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,scalar_t__,int) ;
 int dev_err (int *,char*,scalar_t__) ;
 scalar_t__ i2c_smbus_read_word_data (TYPE_1__*,int ) ;
 int swab16 (scalar_t__) ;

__attribute__((used)) static inline int tsc2007_xfer(struct tsc2007 *tsc, u8 cmd)
{
 s32 data;
 u16 val;

 data = i2c_smbus_read_word_data(tsc->client, cmd);
 if (data < 0) {
  dev_err(&tsc->client->dev, "i2c io error: %d\n", data);
  return data;
 }





 val = swab16(data) >> 4;

 dev_dbg(&tsc->client->dev, "data: 0x%x, val: 0x%x\n", data, val);

 return val;
}
