
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dummy; } ;


 int cx25840_set_audclk_freq (struct i2c_client*,int ) ;

__attribute__((used)) static inline int cx25836_set_audclk_freq(struct i2c_client *client, u32 freq)
{
 return cx25840_set_audclk_freq(client, freq);
}
