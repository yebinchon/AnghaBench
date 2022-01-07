
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int i2c_data; } ;


 TYPE_1__* vino ;

__attribute__((used)) static void i2c_vino_wdata(void *data, unsigned val)
{
 vino->i2c_data = val;
}
