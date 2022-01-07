
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int outsb (unsigned int,int *,int) ;

__attribute__((used)) static void
write_fifo(unsigned int adr, u_char * data, int size)
{
 outsb(adr, data, size);
}
