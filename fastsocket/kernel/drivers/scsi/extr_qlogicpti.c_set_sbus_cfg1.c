
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct qlogicpti {int bursts; scalar_t__ qregs; } ;


 int DMA_BURST16 ;
 int DMA_BURST32 ;
 int DMA_BURST64 ;
 int DMA_BURST8 ;
 scalar_t__ SBUS_CFG1 ;
 int SBUS_CFG1_B16 ;
 int SBUS_CFG1_B32 ;
 int SBUS_CFG1_B64 ;
 int SBUS_CFG1_B8 ;
 int SBUS_CFG1_BENAB ;
 scalar_t__ sbus_can_burst64 () ;
 int sbus_writew (int,scalar_t__) ;

__attribute__((used)) static inline void set_sbus_cfg1(struct qlogicpti *qpti)
{
 u16 val;
 u8 bursts = qpti->bursts;
 if (bursts & DMA_BURST32) {
  val = (SBUS_CFG1_BENAB | SBUS_CFG1_B32);
 } else if (bursts & DMA_BURST16) {
  val = (SBUS_CFG1_BENAB | SBUS_CFG1_B16);
 } else if (bursts & DMA_BURST8) {
  val = (SBUS_CFG1_BENAB | SBUS_CFG1_B8);
 } else {
  val = 0;
 }
 sbus_writew(val, qpti->qregs + SBUS_CFG1);
}
