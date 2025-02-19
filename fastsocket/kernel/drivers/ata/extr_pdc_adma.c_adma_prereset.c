
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {struct adma_port_priv* private_data; } ;
struct ata_link {struct ata_port* ap; } ;
struct adma_port_priv {scalar_t__ state; } ;


 int adma_reinit_engine (struct ata_port*) ;
 scalar_t__ adma_state_idle ;
 scalar_t__ adma_state_mmio ;
 int ata_sff_prereset (struct ata_link*,unsigned long) ;

__attribute__((used)) static int adma_prereset(struct ata_link *link, unsigned long deadline)
{
 struct ata_port *ap = link->ap;
 struct adma_port_priv *pp = ap->private_data;

 if (pp->state != adma_state_idle)
  pp->state = adma_state_mmio;
 adma_reinit_engine(ap);

 return ata_sff_prereset(link, deadline);
}
