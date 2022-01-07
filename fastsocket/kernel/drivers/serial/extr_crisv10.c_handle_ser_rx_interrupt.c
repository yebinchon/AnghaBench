
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frame; int overrun; int parity; int brk; } ;
struct e100_serial {unsigned char* ioport; size_t line; unsigned long last_rx_active_usec; unsigned long last_rx_active; char break_detected_cnt; scalar_t__ errorcode; int char_time_usec; int * icmdadr; TYPE_1__ icount; int uses_dma_in; } ;
struct TYPE_4__ {int ser_ints_ok_cnt; int early_errors_cnt; } ;


 int DEBUG_LOG (size_t,char*,unsigned char) ;
 int DFLOW (int ) ;
 int DINTR1 (int ) ;
 int DINTR2 (int ) ;
 scalar_t__ ERRCODE_INSERT_BREAK ;
 scalar_t__ ERRCODE_SET_BREAK ;
 void* GET_JIFFIES_USEC () ;
 int HZ ;
 unsigned char IO_MASK (int ,int ) ;
 int IO_STATE (int ,int ,int ) ;
 int PROCSTAT (int ) ;
 size_t REG_DATA ;
 size_t REG_STATUS ;
 int R_DMA_CH6_CMD ;
 int R_SERIAL0_STATUS ;
 unsigned char SER_ERROR_MASK ;
 unsigned char SER_FRAMING_ERR_MASK ;
 unsigned char SER_OVERRUN_MASK ;
 unsigned char SER_PAR_ERR_MASK ;
 unsigned char SER_RXD_MASK ;
 int START_FLUSH_FAST_TIMER (struct e100_serial*,char*) ;
 int TTY_BREAK ;
 int TTY_FRAME ;
 int TTY_OVERRUN ;
 int TTY_PARITY ;
 int add_char_and_flag (struct e100_serial*,unsigned char,int ) ;
 int cmd ;
 int e100_disable_serial_data_irq (struct e100_serial*) ;
 struct e100_serial* handle_ser_rx_interrupt_no_dma (struct e100_serial*) ;
 int i ;
 void* jiffies ;
 int printk (char*,...) ;
 int restart ;
 TYPE_2__* ser_stat ;
 int xoff_detect ;

__attribute__((used)) static struct e100_serial* handle_ser_rx_interrupt(struct e100_serial *info)
{
 unsigned char rstat;





 if (!info->uses_dma_in) {
  return handle_ser_rx_interrupt_no_dma(info);
 }

 rstat = info->ioport[REG_STATUS];
 if (rstat & IO_MASK(R_SERIAL0_STATUS, xoff_detect) ) {
  DFLOW(DEBUG_LOG(info->line, "XOFF detect\n", 0));
 }

 if (rstat & SER_ERROR_MASK) {
  unsigned char data;

  info->last_rx_active_usec = GET_JIFFIES_USEC();
  info->last_rx_active = jiffies;



  data = info->ioport[REG_DATA];
  DINTR1(DEBUG_LOG(info->line, "ser_rx!  %c\n", data));
  DINTR1(DEBUG_LOG(info->line, "ser_rx err stat %02X\n", rstat));
  if (!data && (rstat & SER_FRAMING_ERR_MASK)) {




   if (!info->break_detected_cnt) {
    DEBUG_LOG(info->line, "#BRK start\n", 0);
   }
   if (rstat & SER_RXD_MASK) {







    DEBUG_LOG(info->line, "# BL BRK\n", 0);
    info->errorcode = ERRCODE_INSERT_BREAK;
   }
   info->break_detected_cnt++;
  } else {



   if (info->break_detected_cnt) {
    DEBUG_LOG(info->line, "EBRK %i\n", info->break_detected_cnt);
    info->errorcode = ERRCODE_INSERT_BREAK;
   } else {
    if (info->errorcode == ERRCODE_INSERT_BREAK) {
     info->icount.brk++;
     add_char_and_flag(info, '\0', TTY_BREAK);
    }

    if (rstat & SER_PAR_ERR_MASK) {
     info->icount.parity++;
     add_char_and_flag(info, data, TTY_PARITY);
    } else if (rstat & SER_OVERRUN_MASK) {
     info->icount.overrun++;
     add_char_and_flag(info, data, TTY_OVERRUN);
    } else if (rstat & SER_FRAMING_ERR_MASK) {
     info->icount.frame++;
     add_char_and_flag(info, data, TTY_FRAME);
    }

    info->errorcode = 0;
   }
   info->break_detected_cnt = 0;
   DEBUG_LOG(info->line, "#iERR s d %04X\n",
             ((rstat & SER_ERROR_MASK) << 8) | data);
  }
  PROCSTAT(ser_stat[info->line].early_errors_cnt++);
 } else {
  unsigned long curr_time_u = GET_JIFFIES_USEC();
  unsigned long curr_time = jiffies;

  if (info->break_detected_cnt) {





   long elapsed_usec =
     (curr_time - info->last_rx_active) * (1000000/HZ) +
     curr_time_u - info->last_rx_active_usec;
   if (elapsed_usec < 2*info->char_time_usec) {
    DEBUG_LOG(info->line, "FBRK %i\n", info->line);



    info->errorcode = ERRCODE_SET_BREAK;
   } else {
    DEBUG_LOG(info->line, "Not end of BRK (V)%i\n", info->line);
   }
   DEBUG_LOG(info->line, "num brk %i\n", info->break_detected_cnt);
  }




  e100_disable_serial_data_irq(info);
  DINTR2(DEBUG_LOG(info->line, "ser_rx OK %d\n", info->line));
  info->break_detected_cnt = 0;

  PROCSTAT(ser_stat[info->line].ser_ints_ok_cnt++);
 }

 *info->icmdadr = IO_STATE(R_DMA_CH6_CMD, cmd, restart);
 START_FLUSH_FAST_TIMER(info, "ser_int");
 return info;
}
