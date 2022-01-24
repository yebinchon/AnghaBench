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
struct resource_map {struct resource_map* next; } ;
struct socket_data {struct resource_map io_db; struct resource_map mem_db; } ;
struct pcmcia_socket {struct socket_data* resource_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct resource_map*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rsrc_mutex ; 

__attribute__((used)) static void FUNC3(struct pcmcia_socket *s)
{
	struct socket_data *data = s->resource_data;
	struct resource_map *p, *q;

	FUNC1(&rsrc_mutex);
	for (p = data->mem_db.next; p != &data->mem_db; p = q) {
		q = p->next;
		FUNC0(p);
	}
	for (p = data->io_db.next; p != &data->io_db; p = q) {
		q = p->next;
		FUNC0(p);
	}
	FUNC2(&rsrc_mutex);
}