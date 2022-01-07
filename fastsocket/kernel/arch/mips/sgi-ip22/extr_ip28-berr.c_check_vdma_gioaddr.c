
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int gio_dma_trans; int gmaddronly; int gio_dma_sbits; } ;


 int GIO_ERRMASK ;
 int gio_err_addr ;
 int gio_err_stat ;
 TYPE_1__* sgimc ;

__attribute__((used)) static int check_vdma_gioaddr(void)
{
 if (gio_err_stat & GIO_ERRMASK) {
  u32 a = sgimc->gio_dma_trans;
  a = (sgimc->gmaddronly & ~a) | (sgimc->gio_dma_sbits & a);
  return (gio_err_addr == a);
 }
 return 0;
}
