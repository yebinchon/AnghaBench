
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct i2c_client {int dummy; } ;


 int SIL164_CONTROL0 ;
 int SIL164_CONTROL0_POWER_ON ;
 int sil164_read (struct i2c_client*,int ) ;
 int sil164_write (struct i2c_client*,int ,int ) ;

__attribute__((used)) static void
sil164_set_power_state(struct i2c_client *client, bool on)
{
 uint8_t control0 = sil164_read(client, SIL164_CONTROL0);

 if (on)
  control0 |= SIL164_CONTROL0_POWER_ON;
 else
  control0 &= ~SIL164_CONTROL0_POWER_ON;

 sil164_write(client, SIL164_CONTROL0, control0);
}
