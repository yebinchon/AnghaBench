
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ev7_pal_io_subpacket {unsigned long po7_error_sum; TYPE_1__* ports; int po7_err_pkt1; int po7_err_pkt0; int po7_ugbge_sym; int po7_crrct_sym; int po7_uncrr_sym; } ;
struct ev7_lf_subpackets {unsigned long io_pid; struct ev7_pal_io_subpacket* io; int logout; } ;
struct TYPE_2__ {unsigned long pox_err_sum; unsigned long pox_first_err; } ;


 int IO7_NUM_PORTS ;
 int IO7__PO7_ERRSUM__ERR_MASK ;
 int MARVEL_IO_ERR_VALID (unsigned long) ;
 int MCHK_DISPOSITION_REPORT ;
 int MCHK_DISPOSITION_UNKNOWN_ERROR ;
 int err_print_prefix ;
 int marvel_find_io7_with_error (struct ev7_lf_subpackets*) ;
 int marvel_print_po7_err_sum (struct ev7_pal_io_subpacket*) ;
 int marvel_print_pox_err (unsigned long,TYPE_1__*) ;
 int printk (char*,int ,unsigned long,...) ;

__attribute__((used)) static int
marvel_process_io_error(struct ev7_lf_subpackets *lf_subpackets, int print)
{
 int status = MCHK_DISPOSITION_UNKNOWN_ERROR;
 if (!lf_subpackets->logout || !lf_subpackets->io)
  return status;
 if ((lf_subpackets->io->po7_error_sum & (1UL << 32)) ||
     ((lf_subpackets->io->po7_error_sum |
       lf_subpackets->io->ports[0].pox_err_sum |
       lf_subpackets->io->ports[1].pox_err_sum |
       lf_subpackets->io->ports[2].pox_err_sum |
       lf_subpackets->io->ports[3].pox_err_sum) & (1UL << 63))) {





  if (!marvel_find_io7_with_error(lf_subpackets))
   return status;
 }




 status = MCHK_DISPOSITION_REPORT;
 return status;
}
