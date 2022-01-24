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
struct hostap_cmd_queue {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  cmdlock; } ;
typedef  TYPE_1__ local_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct hostap_cmd_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(local_info_t *local,
					 struct hostap_cmd_queue *entry,
					 int del_req)
{
	unsigned long flags;

	FUNC1(&local->cmdlock, flags);
	FUNC0(local, entry, del_req);
	FUNC2(&local->cmdlock, flags);
}