
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct e100_serial {unsigned char* ioport; int line; int forced_eop; } ;
struct TYPE_2__ {int timeout_flush_cnt; } ;


 int DEBUG_LOG (int,char*,unsigned char) ;
 int FORCE_EOP (struct e100_serial*) ;
 int PROCSTAT (int ) ;
 size_t REG_DATA ;
 size_t REG_STATUS ;
 unsigned char SER_DATA_AVAIL_MASK ;
 unsigned char SER_ERROR_MASK ;
 int START_FLUSH_FAST_TIMER (struct e100_serial*,char*) ;
 int TIMERD (int ) ;
 TYPE_1__* ser_stat ;

__attribute__((used)) static int force_eop_if_needed(struct e100_serial *info)
{



 unsigned char rstat = info->ioport[REG_STATUS];


 if (rstat & SER_ERROR_MASK) {





  DEBUG_LOG(info->line, "timeout err: rstat 0x%03X\n",
            rstat | (info->line << 8));
  return 0;
 }

 if (rstat & SER_DATA_AVAIL_MASK) {

  TIMERD(DEBUG_LOG(info->line, "timeout: rstat 0x%03X\n",
            rstat | (info->line << 8)));

  (void)info->ioport[REG_DATA];

  info->forced_eop = 0;
  START_FLUSH_FAST_TIMER(info, "magic");
  return 0;
 }




 if (!info->forced_eop) {
  info->forced_eop = 1;
  PROCSTAT(ser_stat[info->line].timeout_flush_cnt++);
  TIMERD(DEBUG_LOG(info->line, "timeout EOP %i\n", info->line));
  FORCE_EOP(info);
 }

 return 1;
}
