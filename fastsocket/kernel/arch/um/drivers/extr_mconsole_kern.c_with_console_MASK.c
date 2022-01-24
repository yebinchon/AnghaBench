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
struct mconsole_output {int /*<<< orphan*/  list; struct mc_request* req; } ;
struct mc_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  client_lock ; 
 int /*<<< orphan*/  clients ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mc_request*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 void FUNC5 (void*) ; 

__attribute__((used)) static void FUNC6(struct mc_request *req, void (*proc)(void *),
			 void *arg)
{
	struct mconsole_output entry;
	unsigned long flags;

	entry.req = req;
	FUNC3(&client_lock, flags);
	FUNC0(&entry.list, &clients);
	FUNC4(&client_lock, flags);

	(*proc)(arg);

	FUNC2(req, "", 0, 0, 0);

	FUNC3(&client_lock, flags);
	FUNC1(&entry.list);
	FUNC4(&client_lock, flags);
}