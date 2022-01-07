
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int status; int l2_err; int memio_err; } ;


 int A_BUS_L2_ERRORS ;
 int A_BUS_MEM_IO_ERRORS ;
 int A_SCD_BUS_ERR_STATUS ;
 int A_SCD_BUS_ERR_STATUS_DEBUG ;
 int IOADDR (int ) ;
 TYPE_1__ bw_stats ;
 int csr_in32 (int ) ;
 int print_summary (int,int,int) ;
 int printk (char*) ;

void check_bus_watcher(void)
{
 u32 status, l2_err, memio_err;






 status = csr_in32(IOADDR(A_SCD_BUS_ERR_STATUS_DEBUG));

 if (!(status & 0x7fffffff)) {
  printk("Using last values reaped by bus watcher driver\n");
  status = bw_stats.status;
  l2_err = bw_stats.l2_err;
  memio_err = bw_stats.memio_err;
 } else {
  l2_err = csr_in32(IOADDR(A_BUS_L2_ERRORS));
  memio_err = csr_in32(IOADDR(A_BUS_MEM_IO_ERRORS));
 }
 if (status & ~(1UL << 31))
  print_summary(status, l2_err, memio_err);
 else
  printk("Bus watcher indicates no error\n");
}
