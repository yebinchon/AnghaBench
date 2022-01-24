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
struct pcie_link_state {struct pcie_link_state* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcie_link_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcie_link_state*) ; 

__attribute__((used)) static void FUNC2(struct pcie_link_state *link)
{
	while (link) {
		FUNC0(link, FUNC1(link));
		link = link->parent;
	}
}