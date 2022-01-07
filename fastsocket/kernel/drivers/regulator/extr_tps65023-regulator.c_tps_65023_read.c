
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tps_pmic {int client; } ;


 int i2c_smbus_read_byte_data (int ,int ) ;

__attribute__((used)) static inline int tps_65023_read(struct tps_pmic *tps, u8 reg)
{
 return i2c_smbus_read_byte_data(tps->client, reg);
}
