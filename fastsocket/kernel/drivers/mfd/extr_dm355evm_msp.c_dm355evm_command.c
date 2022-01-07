
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;


 int DM355EVM_MSP_COMMAND ;
 int dev_err (int *,char*,unsigned int,int) ;
 int dm355evm_msp_write (unsigned int,int ) ;
 TYPE_1__* msp430 ;

__attribute__((used)) static void dm355evm_command(unsigned command)
{
 int status;

 status = dm355evm_msp_write(command, DM355EVM_MSP_COMMAND);
 if (status < 0)
  dev_err(&msp430->dev, "command %d failure %d\n",
    command, status);
}
