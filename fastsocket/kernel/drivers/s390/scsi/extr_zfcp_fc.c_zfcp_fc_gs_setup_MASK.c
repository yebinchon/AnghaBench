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
struct zfcp_wka_ports {int /*<<< orphan*/  ks; int /*<<< orphan*/  as; int /*<<< orphan*/  ds; int /*<<< orphan*/  ts; int /*<<< orphan*/  ms; } ;
struct zfcp_adapter {struct zfcp_wka_ports* gs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FC_FID_ALIASES ; 
 int /*<<< orphan*/  FC_FID_DIR_SERV ; 
 int /*<<< orphan*/  FC_FID_MGMT_SERV ; 
 int /*<<< orphan*/  FC_FID_SEC_KEY ; 
 int /*<<< orphan*/  FC_FID_TIME_SERV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct zfcp_wka_ports* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct zfcp_adapter*) ; 

int FUNC2(struct zfcp_adapter *adapter)
{
	struct zfcp_wka_ports *wka_ports;

	wka_ports = FUNC0(sizeof(struct zfcp_wka_ports), GFP_KERNEL);
	if (!wka_ports)
		return -ENOMEM;

	adapter->gs = wka_ports;
	FUNC1(&wka_ports->ms, FC_FID_MGMT_SERV, adapter);
	FUNC1(&wka_ports->ts, FC_FID_TIME_SERV, adapter);
	FUNC1(&wka_ports->ds, FC_FID_DIR_SERV, adapter);
	FUNC1(&wka_ports->as, FC_FID_ALIASES, adapter);
	FUNC1(&wka_ports->ks, FC_FID_SEC_KEY, adapter);

	return 0;
}