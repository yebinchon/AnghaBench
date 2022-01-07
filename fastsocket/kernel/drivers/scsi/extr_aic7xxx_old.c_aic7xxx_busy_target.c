
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aic7xxx_scb {TYPE_1__* hscb; } ;
struct aic7xxx_host {int * untagged_scbs; } ;
struct TYPE_2__ {size_t target_channel_lun; int tag; } ;



__attribute__((used)) static inline void
aic7xxx_busy_target(struct aic7xxx_host *p, struct aic7xxx_scb *scb)
{
  p->untagged_scbs[scb->hscb->target_channel_lun] = scb->hscb->tag;
}
