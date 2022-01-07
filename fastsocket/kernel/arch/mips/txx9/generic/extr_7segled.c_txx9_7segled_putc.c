
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 char map_to_seg7 (int *,char) ;
 unsigned int tx_7segled_num ;
 int tx_7segled_putc (unsigned int,char) ;
 int txx9_seg7map ;

int txx9_7segled_putc(unsigned int pos, char c)
{
 if (pos >= tx_7segled_num)
  return -EINVAL;
 c = map_to_seg7(&txx9_seg7map, c);
 if (c < 0)
  return c;
 tx_7segled_putc(pos, c);
 return 0;
}
