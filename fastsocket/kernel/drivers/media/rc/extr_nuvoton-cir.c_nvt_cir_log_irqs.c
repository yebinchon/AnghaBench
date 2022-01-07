
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CIR_IRSTS_GH ;
 int CIR_IRSTS_PE ;
 int CIR_IRSTS_RDR ;
 int CIR_IRSTS_RFO ;
 int CIR_IRSTS_RTR ;
 int CIR_IRSTS_TE ;
 int CIR_IRSTS_TFU ;
 int CIR_IRSTS_TTR ;
 int KERN_INFO ;
 int nvt_pr (int ,char*,int,int,char*,char*,char*,char*,char*,char*,char*,char*,char*) ;

__attribute__((used)) static void nvt_cir_log_irqs(u8 status, u8 iren)
{
 nvt_pr(KERN_INFO, "IRQ 0x%02x (IREN 0x%02x) :%s%s%s%s%s%s%s%s%s",
  status, iren,
  status & CIR_IRSTS_RDR ? " RDR" : "",
  status & CIR_IRSTS_RTR ? " RTR" : "",
  status & CIR_IRSTS_PE ? " PE" : "",
  status & CIR_IRSTS_RFO ? " RFO" : "",
  status & CIR_IRSTS_TE ? " TE" : "",
  status & CIR_IRSTS_TTR ? " TTR" : "",
  status & CIR_IRSTS_TFU ? " TFU" : "",
  status & CIR_IRSTS_GH ? " GH" : "",
  status & ~(CIR_IRSTS_RDR | CIR_IRSTS_RTR | CIR_IRSTS_PE |
      CIR_IRSTS_RFO | CIR_IRSTS_TE | CIR_IRSTS_TTR |
      CIR_IRSTS_TFU | CIR_IRSTS_GH) ? " ?" : "");
}
