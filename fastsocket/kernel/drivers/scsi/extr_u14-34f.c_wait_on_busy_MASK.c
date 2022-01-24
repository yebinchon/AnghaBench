#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int BSY_ASSERTED ; 
 int FALSE ; 
 scalar_t__ REG_LCL_INTR ; 
 int TRUE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (long) ; 

__attribute__((used)) static int FUNC2(unsigned long iobase, unsigned int loop) {

   while (FUNC0(iobase + REG_LCL_INTR) & BSY_ASSERTED) {
      FUNC1(1L);
      if (--loop == 0) return TRUE;
      }

   return FALSE;
}