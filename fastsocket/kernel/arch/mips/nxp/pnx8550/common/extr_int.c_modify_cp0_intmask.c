
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long read_c0_status () ;
 int write_c0_status (unsigned long) ;

__attribute__((used)) static inline void modify_cp0_intmask(unsigned clr_mask, unsigned set_mask)
{
 unsigned long status = read_c0_status();

 status &= ~((clr_mask & 0xFF) << 8);
 status |= (set_mask & 0xFF) << 8;

 write_c0_status(status);
}
