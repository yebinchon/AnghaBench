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
typedef  int /*<<< orphan*/  diva_os_spin_lock_magic_t ;

/* Variables and functions */
 int /*<<< orphan*/ * TraceFilter ; 
 int /*<<< orphan*/  dbg_q_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4 (int max_length, char* filter) {
  diva_os_spin_lock_magic_t old_irql;
  int len;

  FUNC0 (&dbg_q_lock, &old_irql, "read_filter");
  len = FUNC3 (&TraceFilter[0]) + 1;
  if (max_length >= len) {
    FUNC2 (filter, &TraceFilter[0], len);
  }
  FUNC1 (&dbg_q_lock, &old_irql, "read_filter");

  return (len);
}