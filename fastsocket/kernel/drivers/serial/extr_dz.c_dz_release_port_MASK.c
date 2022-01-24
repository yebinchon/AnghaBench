#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int /*<<< orphan*/  mapbase; int /*<<< orphan*/ * membase; } ;
struct dz_mux {int /*<<< orphan*/  map_guard; } ;
struct TYPE_2__ {struct dz_mux* mux; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dec_kn_slot_size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static void FUNC4(struct uart_port *uport)
{
	struct dz_mux *mux = FUNC3(uport)->mux;
	int map_guard;

	FUNC1(uport->membase);
	uport->membase = NULL;

	map_guard = FUNC0(-1, &mux->map_guard);
	if (!map_guard)
		FUNC2(uport->mapbase, dec_kn_slot_size);
}