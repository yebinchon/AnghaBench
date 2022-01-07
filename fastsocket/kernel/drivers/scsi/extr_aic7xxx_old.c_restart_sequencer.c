
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {int dummy; } ;


 int FASTMODE ;
 int SEQADDR0 ;
 int SEQADDR1 ;
 int SEQCTL ;
 int aic_outb (struct aic7xxx_host*,int ,int ) ;

__attribute__((used)) static void
restart_sequencer(struct aic7xxx_host *p)
{
  aic_outb(p, 0, SEQADDR0);
  aic_outb(p, 0, SEQADDR1);
  aic_outb(p, FASTMODE, SEQCTL);
}
