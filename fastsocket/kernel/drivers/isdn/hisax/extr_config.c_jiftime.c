
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int jiftime(char *s, long mark)
{
 s += 8;

 *s-- = '\0';
 *s-- = mark % 10 + '0';
 mark /= 10;
 *s-- = mark % 10 + '0';
 mark /= 10;
 *s-- = '.';
 *s-- = mark % 10 + '0';
 mark /= 10;
 *s-- = mark % 6 + '0';
 mark /= 6;
 *s-- = ':';
 *s-- = mark % 10 + '0';
 mark /= 10;
 *s-- = mark % 10 + '0';
 return 8;
}
