
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_device {int dummy; } ;


 int T93C46_Read_Word (struct sym_device*,unsigned short*,unsigned char*) ;
 int T93C46_Send_Command (struct sym_device*,int,unsigned char*,unsigned char*) ;
 int T93C46_Stop (struct sym_device*,unsigned char*) ;

__attribute__((used)) static int T93C46_Read_Data(struct sym_device *np, unsigned short *data,
  int len, unsigned char *gpreg)
{
 int x;

 for (x = 0; x < len; x++) {
  unsigned char read_bit;

  T93C46_Send_Command(np, 0x180 | x, &read_bit, gpreg);
  if (read_bit & 0x01)
   return 1;
  T93C46_Read_Word(np, &data[x], gpreg);
  T93C46_Stop(np, gpreg);
 }

 return 0;
}
