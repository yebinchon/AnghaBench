
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u_long ;


 unsigned long CFC_IOPORT_BASE ;
 unsigned long CFC_IO_MAPBASE_BYTE ;
 unsigned long CFC_IO_MAPBASE_WORD ;

__attribute__((used)) static inline u_long pcc_port2addr(unsigned long port, int size) {
 u_long addr = 0;
 u_long odd;

 if (size == 1) {
  odd = (port&1) << 11;
  port -= port & 1;
  addr = CFC_IO_MAPBASE_BYTE - CFC_IOPORT_BASE + odd + port;
 } else if (size == 2)
  addr = CFC_IO_MAPBASE_WORD - CFC_IOPORT_BASE + port;

 return addr;
}
