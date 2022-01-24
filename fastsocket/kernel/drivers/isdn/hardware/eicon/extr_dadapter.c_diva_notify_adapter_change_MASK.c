#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nfy ;
typedef  int /*<<< orphan*/  diva_os_spin_lock_magic_t ;
struct TYPE_5__ {int /*<<< orphan*/  context; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_1__ didd_adapter_change_notification_t ;
struct TYPE_6__ {scalar_t__ callback; } ;
typedef  int /*<<< orphan*/  DESCRIPTOR ;

/* Variables and functions */
 int DIVA_DIDD_MAX_NOTIFICATIONS ; 
 TYPE_3__* NotificationTable ; 
 int /*<<< orphan*/  didd_spin ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4 (DESCRIPTOR* d, int removal) {
 int i, do_notify;
 didd_adapter_change_notification_t nfy;
 diva_os_spin_lock_magic_t irql;
 for (i = 0; i < DIVA_DIDD_MAX_NOTIFICATIONS; i++) {
  do_notify = 0;
  FUNC0 (&didd_spin, &irql, "didd_nfy");
  if (NotificationTable[i].callback) {
   FUNC2 (&nfy, &NotificationTable[i], sizeof(nfy));
   do_notify = 1;
  }
  FUNC1 (&didd_spin, &irql, "didd_nfy");
  if (do_notify) {
   (*(nfy.callback))(nfy.context, d, removal);
  }
 }
}