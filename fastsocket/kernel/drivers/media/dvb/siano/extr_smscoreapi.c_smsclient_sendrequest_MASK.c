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
struct smscore_device_t {int (* sendrequest_handler ) (int /*<<< orphan*/ ,void*,size_t) ;int /*<<< orphan*/  context; } ;
struct smscore_client_t {struct smscore_device_t* coredev; } ;
struct SmsMsgHdr_ST {int /*<<< orphan*/  msgSrcId; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct smscore_device_t*,struct smscore_client_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,size_t) ; 

int FUNC3(struct smscore_client_t *client,
			  void *buffer, size_t size)
{
	struct smscore_device_t *coredev;
	struct SmsMsgHdr_ST *phdr = (struct SmsMsgHdr_ST *) buffer;
	int rc;

	if (client == NULL) {
		FUNC0("Got NULL client");
		return -EINVAL;
	}

	coredev = client->coredev;

	/* check that no other channel with same id exists */
	if (coredev == NULL) {
		FUNC0("Got NULL coredev");
		return -EINVAL;
	}

	rc = FUNC1(client->coredev, client, 0,
				     phdr->msgSrcId);
	if (rc < 0)
		return rc;

	return coredev->sendrequest_handler(coredev->context, buffer, size);
}