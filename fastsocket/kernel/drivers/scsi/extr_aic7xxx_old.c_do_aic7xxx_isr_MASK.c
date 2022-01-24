#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct aic7xxx_host {TYPE_1__* host; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHC_IN_ISR ; 
 int /*<<< orphan*/  INTSTAT ; 
 int INT_PEND ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct aic7xxx_host*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct aic7xxx_host*) ; 
 int FUNC3 (struct aic7xxx_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static irqreturn_t
FUNC6(int irq, void *dev_id)
{
  unsigned long cpu_flags;
  struct aic7xxx_host *p;
  
  p = dev_id;
  if(!p)
    return IRQ_NONE;
  FUNC4(p->host->host_lock, cpu_flags);
  p->flags |= AHC_IN_ISR;
  do
  {
    FUNC1(dev_id);
  } while ( (FUNC3(p, INTSTAT) & INT_PEND) );
  FUNC0(p);
  FUNC2(p);
  p->flags &= ~AHC_IN_ISR;
  FUNC5(p->host->host_lock, cpu_flags);

  return IRQ_HANDLED;
}