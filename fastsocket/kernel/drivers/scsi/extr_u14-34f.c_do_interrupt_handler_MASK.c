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
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int num_boards ; 
 TYPE_1__** sh ; 
 char* sha ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *shap) {
   unsigned int j;
   unsigned long spin_flags;
   irqreturn_t ret;

   /* Check if the interrupt must be processed by this handler */
   if ((j = (unsigned int)((char *)shap - sha)) >= num_boards) return IRQ_NONE;

   FUNC1(sh[j]->host_lock, spin_flags);
   ret = FUNC0(j);
   FUNC2(sh[j]->host_lock, spin_flags);
   return ret;
}