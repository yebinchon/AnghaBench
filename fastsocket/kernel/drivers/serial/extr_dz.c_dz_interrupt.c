
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dz_port {int dummy; } ;
struct dz_mux {struct dz_port* dport; } ;
typedef int irqreturn_t ;


 int DZ_CSR ;
 int DZ_RDONE ;
 int DZ_RIE ;
 int DZ_TIE ;
 int DZ_TRDY ;
 int IRQ_HANDLED ;
 int dz_in (struct dz_port*,int ) ;
 int dz_receive_chars (struct dz_mux*) ;
 int dz_transmit_chars (struct dz_mux*) ;

__attribute__((used)) static irqreturn_t dz_interrupt(int irq, void *dev_id)
{
 struct dz_mux *mux = dev_id;
 struct dz_port *dport = &mux->dport[0];
 u16 status;


 status = dz_in(dport, DZ_CSR);

 if ((status & (DZ_RDONE | DZ_RIE)) == (DZ_RDONE | DZ_RIE))
  dz_receive_chars(mux);

 if ((status & (DZ_TRDY | DZ_TIE)) == (DZ_TRDY | DZ_TIE))
  dz_transmit_chars(mux);

 return IRQ_HANDLED;
}
