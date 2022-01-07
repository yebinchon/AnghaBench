
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_opcode(unsigned char *addr, unsigned int *opcode)
{
 int len;

 if (*addr == 0x0F) {

  *opcode = *(unsigned short *)addr;
  len = 2;
 } else {
  *opcode = *addr;
  len = 1;
 }

 return len;
}
