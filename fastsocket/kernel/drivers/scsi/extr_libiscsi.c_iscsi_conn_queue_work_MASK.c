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
struct iscsi_host {scalar_t__ workq; } ;
struct iscsi_conn {int /*<<< orphan*/  xmitwork; TYPE_1__* session; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 struct iscsi_host* FUNC1 (struct Scsi_Host*) ; 

inline void FUNC2(struct iscsi_conn *conn)
{
	struct Scsi_Host *shost = conn->session->host;
	struct iscsi_host *ihost = FUNC1(shost);

	if (ihost->workq)
		FUNC0(ihost->workq, &conn->xmitwork);
}