
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bt3c_address (unsigned int,unsigned short) ;
 unsigned short bt3c_get (unsigned int) ;

__attribute__((used)) static inline unsigned short bt3c_read(unsigned int iobase, unsigned short addr)
{
 bt3c_address(iobase, addr);

 return bt3c_get(iobase);
}
