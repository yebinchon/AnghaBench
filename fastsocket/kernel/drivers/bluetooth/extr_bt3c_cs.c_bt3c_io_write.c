
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bt3c_address (unsigned int,unsigned short) ;
 int bt3c_put (unsigned int,unsigned short) ;

__attribute__((used)) static inline void bt3c_io_write(unsigned int iobase, unsigned short addr, unsigned short value)
{
 bt3c_address(iobase, addr);
 bt3c_put(iobase, value);
}
