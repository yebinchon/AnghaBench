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
struct pppol2tp_tunnel {int /*<<< orphan*/  list; int /*<<< orphan*/  pppol2tp_net; } ;
struct pppol2tp_net {int /*<<< orphan*/  pppol2tp_tunnel_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pppol2tp_tunnel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct pppol2tp_net* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pppol2tp_tunnel_count ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct pppol2tp_tunnel *tunnel)
{
	struct pppol2tp_net *pn = FUNC3(tunnel->pppol2tp_net);

	/* Remove from socket list */
	FUNC4(&pn->pppol2tp_tunnel_list_lock);
	FUNC2(&tunnel->list);
	FUNC5(&pn->pppol2tp_tunnel_list_lock);

	FUNC0(&pppol2tp_tunnel_count);
	FUNC1(tunnel);
}