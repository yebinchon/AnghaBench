
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int * dm6446evm_msp ;

__attribute__((used)) static int dm6446evm_msp_remove(struct i2c_client *client)
{
 dm6446evm_msp = ((void*)0);
 return 0;
}
