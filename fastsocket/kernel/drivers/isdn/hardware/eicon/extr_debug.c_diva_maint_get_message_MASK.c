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
typedef  int /*<<< orphan*/  word ;
typedef  int /*<<< orphan*/  diva_os_spin_lock_magic_t ;
typedef  int /*<<< orphan*/  diva_dbg_entry_head_t ;

/* Variables and functions */
 int dbg_q_busy ; 
 int /*<<< orphan*/  dbg_q_lock ; 
 int /*<<< orphan*/  dbg_queue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

diva_dbg_entry_head_t* FUNC3 (word* size,
                                               diva_os_spin_lock_magic_t* old_irql) {
  diva_dbg_entry_head_t*     pmsg = NULL;

  FUNC0 (&dbg_q_lock, old_irql, "read");
  if (dbg_q_busy) {
    FUNC1 (&dbg_q_lock, old_irql, "read_busy");
    return NULL;
  }
  dbg_q_busy = 1;

  if (!(pmsg = (diva_dbg_entry_head_t*)FUNC2 (dbg_queue, size))) {
    dbg_q_busy = 0;
    FUNC1 (&dbg_q_lock, old_irql, "read_empty");
  }

  return (pmsg);
}