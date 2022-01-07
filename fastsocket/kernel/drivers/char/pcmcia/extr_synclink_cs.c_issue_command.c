
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MGSLPC_INFO ;


 scalar_t__ CMDR ;
 int wait_command_complete (int *,unsigned char) ;
 int write_reg (int *,unsigned char,unsigned char) ;

__attribute__((used)) static void issue_command(MGSLPC_INFO *info, unsigned char channel, unsigned char cmd)
{
 wait_command_complete(info, channel);
 write_reg(info, (unsigned char) (channel + CMDR), cmd);
}
