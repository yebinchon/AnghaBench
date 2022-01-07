
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ev7_lf_subpackets {TYPE_2__* ev7; TYPE_1__* logout; } ;
struct TYPE_4__ {int c_stat; int c_sts; int c_addr; } ;
struct TYPE_3__ {int rbox_int; } ;


 int MCHK_DISPOSITION_DISMISS ;
 int MCHK_DISPOSITION_UNKNOWN_ERROR ;
 int marvel_process_io_error (struct ev7_lf_subpackets*,int) ;

__attribute__((used)) static int
marvel_process_logout_frame(struct ev7_lf_subpackets *lf_subpackets, int print)
{
 int status = MCHK_DISPOSITION_UNKNOWN_ERROR;





 if (lf_subpackets->logout &&
     (lf_subpackets->logout->rbox_int & 0x20000400ul))
  status = marvel_process_io_error(lf_subpackets, print);
 if (lf_subpackets->ev7 &&
     (lf_subpackets->ev7->c_stat == 0x14) &&
     !(lf_subpackets->ev7->c_sts & 0x8) &&
     ((lf_subpackets->ev7->c_addr & 0x400ff000000ul)
      == 0x400fe000000ul))
  status = MCHK_DISPOSITION_DISMISS;

 return status;
}
