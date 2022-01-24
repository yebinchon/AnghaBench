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
struct zs_scc {int /*<<< orphan*/  zlock; } ;
struct zs_port {struct zs_scc* scc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct zs_port*) ; 

__attribute__((used)) static void FUNC3(struct zs_port *zport)
{
	struct zs_scc *scc = zport->scc;

	FUNC0(&scc->zlock);
	FUNC2(zport);
	FUNC1(&scc->zlock);
}