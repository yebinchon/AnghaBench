#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct sas_port {TYPE_1__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct sas_phy {TYPE_2__ dev; } ;

/* Variables and functions */
 char* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC2(struct sas_port *port,
				 struct sas_phy *phy)
{
	FUNC1(&port->dev.kobj, FUNC0(&phy->dev));
	FUNC1(&phy->dev.kobj, "port");
}