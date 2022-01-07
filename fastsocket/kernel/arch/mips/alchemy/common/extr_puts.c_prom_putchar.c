
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SER_CMD ;
 size_t SER_DATA ;
 int TIMEOUT ;
 unsigned char TX_BUSY ;
 unsigned char* com1 ;
 int slow_down () ;

void
prom_putchar(const unsigned char c)
{
 unsigned char ch;
 int i = 0;

 do {
  ch = com1[SER_CMD];
  slow_down();
  i++;
  if (i > TIMEOUT)
   break;
 } while (0 == (ch & TX_BUSY));

 com1[SER_DATA] = c;
}
