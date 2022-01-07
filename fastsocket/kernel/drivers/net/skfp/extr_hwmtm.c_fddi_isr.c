
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_short ;
typedef int u_long ;
struct TYPE_11__ {int detec_count; void* isr_flag; void* leave_isr; scalar_t__ rx_break; } ;
struct TYPE_12__ {TYPE_5__ hwm; } ;
struct TYPE_10__ {scalar_t__ ev_get; scalar_t__ ev_put; } ;
struct TYPE_8__ {TYPE_1__* rx_q; } ;
struct TYPE_9__ {TYPE_2__ fp; } ;
struct s_smc {TYPE_6__ os; TYPE_4__ q; TYPE_3__ hw; } ;
struct TYPE_7__ {scalar_t__ rx_used; } ;
typedef int SMbuf ;


 int ADDR (int ) ;
 int B4_R1_CSR ;
 int B5_XA_CSR ;
 int B5_XS_CSR ;
 int CSR_IRQ_CL_C ;
 int CSR_IRQ_CL_F ;
 int CSR_IRQ_CL_P ;
 int DB_GEN (char*,int,int,int) ;
 void* FALSE ;
 int FM_A (int ) ;
 int FM_ST1L ;
 int FM_ST1U ;
 int FM_ST2L ;
 int FM_ST2U ;
 int FM_ST3L ;
 int FM_ST3U ;
 int GET_ISR () ;
 int HWM_E0004 ;
 int HWM_E0004_MSG ;
 int HWM_E0005 ;
 int HWM_E0005_MSG ;
 int HWM_E0006 ;
 int HWM_E0006_MSG ;
 int HWM_E0007 ;
 int HWM_E0007_MSG ;
 int IMASK_SLOW ;
 int ISR_MASK ;
 int IS_MINTR1 ;
 int IS_MINTR2 ;
 int IS_MINTR3 ;
 int IS_PLINT1 ;
 int IS_PLINT2 ;
 int IS_R1_C ;
 int IS_R1_F ;
 int IS_R1_P ;
 int IS_TIMINT ;
 int IS_TOKEN ;
 int IS_XA_C ;
 int IS_XA_F ;
 int IS_XS_C ;
 int IS_XS_F ;
 int NDD_TRACE (char*,int,int ,int ) ;
 size_t QUEUE_R1 ;
 int SMT_PANIC (struct s_smc*,int ,int ) ;
 void* TRUE ;
 int ev_dispatcher (struct s_smc*) ;
 scalar_t__ force_irq_pending ;
 int * get_llc_rx (struct s_smc*) ;
 int inpw (int ) ;
 int llc_restart_tx (struct s_smc*) ;
 int mac1_irq (struct s_smc*,int,int) ;
 int mac2_irq (struct s_smc*,int,int) ;
 int mac3_irq (struct s_smc*,int,int) ;
 int mac_drv_clear_txd (struct s_smc*) ;
 int mac_drv_fill_rxd (struct s_smc*) ;
 scalar_t__ offDepth ;
 int outpd (int ,int ) ;
 int plc1_irq (struct s_smc*) ;
 int plc2_irq (struct s_smc*) ;
 int post_proc () ;
 int process_receive (struct s_smc*) ;
 int rtm_irq (struct s_smc*) ;
 int smt_force_irq (struct s_smc*) ;
 int smt_to_llc (struct s_smc*,int *) ;
 int timer_irq (struct s_smc*) ;

void fddi_isr(struct s_smc *smc)
{
 u_long is ;
 u_short stu, stl ;
 SMbuf *mb ;
 smc->os.hwm.isr_flag = TRUE ;
 while ((is = GET_ISR() & ISR_MASK)) {
  NDD_TRACE("CH0B",is,0,0) ;
  DB_GEN("ISA = 0x%x",is,0,7) ;

  if (is & IMASK_SLOW) {
   NDD_TRACE("CH1b",is,0,0) ;
   if (is & IS_PLINT1) {
    plc1_irq(smc) ;
   }
   if (is & IS_PLINT2) {
    plc2_irq(smc) ;
   }
   if (is & IS_MINTR1) {
    stu = inpw(FM_A(FM_ST1U)) ;
    stl = inpw(FM_A(FM_ST1L)) ;
    DB_GEN("Slow transmit complete",0,0,6) ;
    mac1_irq(smc,stu,stl) ;
   }
   if (is & IS_MINTR2) {
    stu= inpw(FM_A(FM_ST2U)) ;
    stl= inpw(FM_A(FM_ST2L)) ;
    DB_GEN("Slow receive complete",0,0,6) ;
    DB_GEN("stl = %x : stu = %x",stl,stu,7) ;
    mac2_irq(smc,stu,stl) ;
   }
   if (is & IS_MINTR3) {
    stu= inpw(FM_A(FM_ST3U)) ;
    stl= inpw(FM_A(FM_ST3L)) ;
    DB_GEN("FORMAC Mode Register 3",0,0,6) ;
    mac3_irq(smc,stu,stl) ;
   }
   if (is & IS_TIMINT) {
    timer_irq(smc) ;






    if (++smc->os.hwm.detec_count > 4) {



      process_receive(smc) ;
    }
   }
   if (is & IS_TOKEN) {
    rtm_irq(smc) ;
   }
   if (is & IS_R1_P) {

    outpd(ADDR(B4_R1_CSR),CSR_IRQ_CL_P) ;
    SMT_PANIC(smc,HWM_E0004,HWM_E0004_MSG) ;
   }
   if (is & IS_R1_C) {

    outpd(ADDR(B4_R1_CSR),CSR_IRQ_CL_C) ;
    SMT_PANIC(smc,HWM_E0005,HWM_E0005_MSG) ;
   }
   if (is & IS_XA_C) {

    outpd(ADDR(B5_XA_CSR),CSR_IRQ_CL_C) ;
    SMT_PANIC(smc,HWM_E0006,HWM_E0006_MSG) ;
   }
   if (is & IS_XS_C) {

    outpd(ADDR(B5_XS_CSR),CSR_IRQ_CL_C) ;
    SMT_PANIC(smc,HWM_E0007,HWM_E0007_MSG) ;
   }
  }




  if (is & (IS_XS_F|IS_XA_F)) {
   DB_GEN("Fast tx complete queue",0,0,6) ;




   outpd(ADDR(B5_XS_CSR),CSR_IRQ_CL_F) ;
   outpd(ADDR(B5_XA_CSR),CSR_IRQ_CL_F) ;
   mac_drv_clear_txd(smc) ;
   llc_restart_tx(smc) ;
  }




  if (is & IS_R1_F) {
   DB_GEN("Fast receive complete",0,0,6) ;


   outpd(ADDR(B4_R1_CSR),CSR_IRQ_CL_F) ;
   process_receive(smc) ;
  }


  while ((mb = get_llc_rx(smc))) {
   smt_to_llc(smc,mb) ;
  }
  if (smc->q.ev_get != smc->q.ev_put) {
   NDD_TRACE("CH2a",0,0,0) ;
   ev_dispatcher(smc) ;
  }
 }






 smc->os.hwm.isr_flag = FALSE ;
 NDD_TRACE("CH0E",0,0,0) ;
}
