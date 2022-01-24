#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * Completion; TYPE_1__* Controller; } ;
struct TYPE_5__ {int /*<<< orphan*/  queue_lock; } ;
typedef  TYPE_1__ DAC960_Controller_T ;
typedef  TYPE_2__ DAC960_Command_T ;

/* Variables and functions */
 int /*<<< orphan*/  Completion ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(DAC960_Command_T *Command)
{
  DAC960_Controller_T *Controller = Command->Controller;
  FUNC1(Completion);
  unsigned long flags;
  Command->Completion = &Completion;

  FUNC3(&Controller->queue_lock, flags);
  FUNC0(Command);
  FUNC4(&Controller->queue_lock, flags);
 
  if (FUNC2())
	  return;
  FUNC5(&Completion);
}