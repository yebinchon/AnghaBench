
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_eckd_private {scalar_t__ init_cqr_status; } ;
struct dasd_block {TYPE_1__* base; } ;
struct TYPE_2__ {scalar_t__ private; } ;


 int dasd_eckd_end_analysis (struct dasd_block*) ;
 int dasd_eckd_start_analysis (struct dasd_block*) ;

__attribute__((used)) static int dasd_eckd_do_analysis(struct dasd_block *block)
{
 struct dasd_eckd_private *private;

 private = (struct dasd_eckd_private *) block->base->private;
 if (private->init_cqr_status < 0)
  return dasd_eckd_start_analysis(block);
 else
  return dasd_eckd_end_analysis(block);
}
