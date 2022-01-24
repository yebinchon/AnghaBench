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
struct ibmvfc_target {int /*<<< orphan*/  kref; } ;
struct ibmvfc_host {int /*<<< orphan*/  work_wait_q; int /*<<< orphan*/  abort_threads; } ;
struct ibmvfc_event {struct ibmvfc_target* tgt; struct ibmvfc_host* vhost; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibmvfc_event*) ; 
 int /*<<< orphan*/  ibmvfc_release_tgt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvfc_target*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ibmvfc_event *evt)
{
	struct ibmvfc_host *vhost = evt->vhost;
	struct ibmvfc_target *tgt = evt->tgt;

	FUNC2(tgt, "ADISC cancel complete\n");
	vhost->abort_threads--;
	FUNC0(evt);
	FUNC1(&tgt->kref, ibmvfc_release_tgt);
	FUNC3(&vhost->work_wait_q);
}