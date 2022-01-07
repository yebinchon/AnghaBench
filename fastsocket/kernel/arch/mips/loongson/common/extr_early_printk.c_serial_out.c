
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int PORT (int ,int) ;
 int writeb (int,int ) ;

__attribute__((used)) static inline void serial_out(phys_addr_t base, int offset, int value)
{
 writeb(value, PORT(base, offset));
}
