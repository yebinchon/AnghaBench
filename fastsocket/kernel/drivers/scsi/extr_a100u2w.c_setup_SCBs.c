
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct orc_scb {int scbidx; struct orc_extended_scb* escb; void* sense_addr; void* sg_addr; } ;
struct orc_host {scalar_t__ escb_phys; struct orc_extended_scb* escb_virt; struct orc_scb* scb_virt; scalar_t__ base; int scb_phys; } ;
struct orc_extended_scb {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int ORC_MAXQUEUE ;
 scalar_t__ ORC_SCBBASE0 ;
 scalar_t__ ORC_SCBBASE1 ;
 scalar_t__ ORC_SCBSIZE ;
 void* cpu_to_le32 (int ) ;
 int outb (int,scalar_t__) ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static void setup_SCBs(struct orc_host * host)
{
 struct orc_scb *scb;
 int i;
 struct orc_extended_scb *escb;
 dma_addr_t escb_phys;


 outb(ORC_MAXQUEUE, host->base + ORC_SCBSIZE);

 outl(host->scb_phys, host->base + ORC_SCBBASE0);

 outl(host->scb_phys, host->base + ORC_SCBBASE1);


 scb = host->scb_virt;
 escb = host->escb_virt;

 for (i = 0; i < ORC_MAXQUEUE; i++) {
  escb_phys = (host->escb_phys + (sizeof(struct orc_extended_scb) * i));
  scb->sg_addr = cpu_to_le32((u32) escb_phys);
  scb->sense_addr = cpu_to_le32((u32) escb_phys);
  scb->escb = escb;
  scb->scbidx = i;
  scb++;
  escb++;
 }
}
