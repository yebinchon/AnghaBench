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
struct binder_transaction_log_entry {int dummy; } ;
struct binder_transaction_log {size_t next; int full; struct binder_transaction_log_entry* entry; } ;

/* Variables and functions */
 size_t FUNC0 (struct binder_transaction_log_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct binder_transaction_log_entry*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct binder_transaction_log_entry *FUNC2(
	struct binder_transaction_log *log)
{
	struct binder_transaction_log_entry *e;
	e = &log->entry[log->next];
	FUNC1(e, 0, sizeof(*e));
	log->next++;
	if (log->next == FUNC0(log->entry)) {
		log->next = 0;
		log->full = 1;
	}
	return e;
}