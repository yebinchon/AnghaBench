
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_4__ {int cpic_civr; int cpic_cimr; int cpic_cisr; } ;
struct TYPE_5__ {TYPE_1__ im_cpic; } ;
typedef TYPE_2__ immap_t ;
struct TYPE_6__ {int dev_id; int (* handler ) (int ) ;} ;


 scalar_t__ IMAP_ADDR ;
 TYPE_3__* cpm_vecs ;
 int stub1 (int ) ;
 int vec ;

__attribute__((used)) static void
cpm_interrupt(int irq, void * dev, struct pt_regs * regs)
{
}
