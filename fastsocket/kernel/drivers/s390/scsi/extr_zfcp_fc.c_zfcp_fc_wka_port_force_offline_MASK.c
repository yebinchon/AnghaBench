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
struct zfcp_wka_port {int /*<<< orphan*/  mutex; int /*<<< orphan*/  status; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_WKA_PORT_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct zfcp_wka_port *wka)
{
	FUNC0(&wka->work);
	FUNC1(&wka->mutex);
	wka->status = ZFCP_WKA_PORT_OFFLINE;
	FUNC2(&wka->mutex);
}