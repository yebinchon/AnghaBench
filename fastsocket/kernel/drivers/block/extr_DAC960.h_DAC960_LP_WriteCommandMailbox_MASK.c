#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * Words; } ;
typedef  TYPE_1__ DAC960_V2_CommandMailbox_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline
void FUNC3(DAC960_V2_CommandMailbox_T
				     *MemoryCommandMailbox,
				   DAC960_V2_CommandMailbox_T
				     *CommandMailbox)
{
  FUNC1(&MemoryCommandMailbox->Words[1], &CommandMailbox->Words[1],
	 sizeof(DAC960_V2_CommandMailbox_T) - sizeof(unsigned int));
  FUNC2();
  MemoryCommandMailbox->Words[0] = CommandMailbox->Words[0];
  FUNC0();
}