
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct i2c_client {int dummy; } ;


 int sil164_write (struct i2c_client*,int,int ) ;

__attribute__((used)) static void
sil164_restore_state(struct i2c_client *client, uint8_t *state)
{
 int i;

 for (i = 0x8; i <= 0xe; i++)
  sil164_write(client, i, state[i]);
}
