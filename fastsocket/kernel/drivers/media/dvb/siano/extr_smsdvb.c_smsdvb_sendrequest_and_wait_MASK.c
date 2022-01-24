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
struct smsdvb_client_t {int /*<<< orphan*/  smsclient; } ;
struct completion {int dummy; } ;
struct SmsMsgHdr_ST {int dummy; } ;

/* Variables and functions */
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct SmsMsgHdr_ST*) ; 
 scalar_t__ FUNC3 (struct completion*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct smsdvb_client_t *client,
					void *buffer, size_t size,
					struct completion *completion)
{
	int rc;

	FUNC2((struct SmsMsgHdr_ST *)buffer);
	rc = FUNC1(client->smsclient, buffer, size);
	if (rc < 0)
		return rc;

	return FUNC3(completion,
					   FUNC0(2000)) ?
						0 : -ETIME;
}