#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ibmvfc_host {int /*<<< orphan*/  disc_buf_sz; int /*<<< orphan*/  disc_buf_dma; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  va; } ;
struct TYPE_5__ {int version; int length; int /*<<< orphan*/  opcode; } ;
struct ibmvfc_discover_targets {TYPE_3__ buffer; int /*<<< orphan*/  bufflen; TYPE_2__ common; } ;
struct TYPE_4__ {struct ibmvfc_discover_targets discover_targets; } ;
struct ibmvfc_event {TYPE_1__ iu; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBMVFC_DISC_TARGETS ; 
 int /*<<< orphan*/  IBMVFC_HOST_ACTION_INIT_WAIT ; 
 int /*<<< orphan*/  IBMVFC_LINK_DEAD ; 
 int /*<<< orphan*/  IBMVFC_MAD_FORMAT ; 
 int /*<<< orphan*/  default_timeout ; 
 int /*<<< orphan*/  FUNC0 (struct ibmvfc_host*,char*) ; 
 int /*<<< orphan*/  ibmvfc_discover_targets_done ; 
 struct ibmvfc_event* FUNC1 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvfc_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvfc_event*,struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvfc_discover_targets*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct ibmvfc_host *vhost)
{
	struct ibmvfc_discover_targets *mad;
	struct ibmvfc_event *evt = FUNC1(vhost);

	FUNC2(evt, ibmvfc_discover_targets_done, IBMVFC_MAD_FORMAT);
	mad = &evt->iu.discover_targets;
	FUNC6(mad, 0, sizeof(*mad));
	mad->common.version = 1;
	mad->common.opcode = IBMVFC_DISC_TARGETS;
	mad->common.length = sizeof(*mad);
	mad->bufflen = vhost->disc_buf_sz;
	mad->buffer.va = vhost->disc_buf_dma;
	mad->buffer.len = vhost->disc_buf_sz;
	FUNC5(vhost, IBMVFC_HOST_ACTION_INIT_WAIT);

	if (!FUNC4(evt, vhost, default_timeout))
		FUNC0(vhost, "Sent discover targets\n");
	else
		FUNC3(vhost, IBMVFC_LINK_DEAD);
}