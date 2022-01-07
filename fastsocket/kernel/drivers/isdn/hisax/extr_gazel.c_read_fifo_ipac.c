
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;


 int byteout (unsigned int,int ) ;
 int insb (unsigned int,int *,int) ;

__attribute__((used)) static inline void
read_fifo_ipac(unsigned int adr, u_short off, u_char * data, int size)
{
 byteout(adr, off);
 insb(adr + 4, data, size);
}
