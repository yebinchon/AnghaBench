
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jsm_board {scalar_t__ re_map_membase; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static inline void neo_pci_posting_flush(struct jsm_board *bd)
{
      readb(bd->re_map_membase + 0x8D);
}
