
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int at93c_read (int ) ;

int EEPROMRead(unsigned int pos, unsigned char *data, int len)
{
 int i;

 for (i = 0; i < len; i++)
  *data++ = at93c_read(pos++);

 return 0;
}
