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
struct TYPE_2__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct zfcp_fsf_req {TYPE_1__ timer; scalar_t__ adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  zfcp_fsf_request_timeout_handler ; 

__attribute__((used)) static void FUNC1(struct zfcp_fsf_req *fsf_req,
				 unsigned long timeout)
{
	fsf_req->timer.function = zfcp_fsf_request_timeout_handler;
	fsf_req->timer.data = (unsigned long) fsf_req->adapter;
	fsf_req->timer.expires = jiffies + timeout;
	FUNC0(&fsf_req->timer);
}