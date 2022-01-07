
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MGSLPC_INFO ;


 int BIT2 ;
 scalar_t__ STAR ;
 int read_reg (int *,unsigned char) ;
 int udelay (int) ;

__attribute__((used)) static bool wait_command_complete(MGSLPC_INFO *info, unsigned char channel)
{
 int i = 0;

 while (read_reg(info, (unsigned char)(channel+STAR)) & BIT2) {
  udelay(1);
  if (i++ == 1000)
   return 0;
 }
 return 1;
}
