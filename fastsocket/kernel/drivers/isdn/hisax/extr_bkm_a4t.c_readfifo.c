
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int readreg (unsigned int,unsigned long,int ) ;

__attribute__((used)) static inline void
readfifo(unsigned int ale, unsigned long adr, u_char off, u_char * data, int size)
{
 int i;
 for (i = 0; i < size; i++)
  *data++ = readreg(ale, adr, off);
}
