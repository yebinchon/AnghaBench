
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int insb (unsigned int,int *,int) ;

__attribute__((used)) static inline void
read_fifo(unsigned int adr, u_char * data, int size)
{
 insb(adr, data, size);
}
