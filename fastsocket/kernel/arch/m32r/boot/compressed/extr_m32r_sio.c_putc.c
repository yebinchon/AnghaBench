
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* SIO0STS ;
 char* SIO0TXB ;
 int cpu_relax () ;

__attribute__((used)) static void putc(char c)
{
 while ((*SIO0STS & 0x1) == 0)
  cpu_relax();
 if (c == '\n') {
  *SIO0TXB = '\r';
  while ((*SIO0STS & 0x1) == 0)
   cpu_relax();
 }
 *SIO0TXB = c;
}
