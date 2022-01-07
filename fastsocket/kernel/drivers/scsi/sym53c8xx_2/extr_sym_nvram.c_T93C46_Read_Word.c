
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sym_device {int dummy; } ;


 int T93C46_Read_Bit (struct sym_device*,int*,unsigned char*) ;

__attribute__((used)) static void T93C46_Read_Word(struct sym_device *np,
  unsigned short *nvram_data, unsigned char *gpreg)
{
 int x;
 u_char read_bit;

 *nvram_data = 0;
 for (x = 0; x < 16; x++) {
  T93C46_Read_Bit(np, &read_bit, gpreg);

  if (read_bit & 0x01)
   *nvram_data |= (0x01 << (15 - x));
  else
   *nvram_data &= ~(0x01 << (15 - x));
 }
}
