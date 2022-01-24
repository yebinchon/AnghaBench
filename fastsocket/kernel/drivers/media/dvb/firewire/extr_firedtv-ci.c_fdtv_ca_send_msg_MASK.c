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
struct firedtv {int ca_last_command; int /*<<< orphan*/  device; } ;
struct ca_msg {int* msg; } ;

/* Variables and functions */
 int EFAULT ; 
#define  EN50221_TAG_APP_INFO_ENQUIRY 131 
#define  EN50221_TAG_CA_INFO_ENQUIRY 130 
#define  EN50221_TAG_CA_PMT 129 
#define  EN50221_TAG_ENTER_MENU 128 
 int FUNC0 (struct firedtv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct firedtv*,void*) ; 

__attribute__((used)) static int FUNC3(struct firedtv *fdtv, void *arg)
{
	struct ca_msg *msg = arg;
	int err;

	/* Do we need a semaphore for this? */
	fdtv->ca_last_command =
		(msg->msg[0] << 16) + (msg->msg[1] << 8) + msg->msg[2];
	switch (fdtv->ca_last_command) {
	case EN50221_TAG_CA_PMT:
		err = FUNC2(fdtv, arg);
		break;
	case EN50221_TAG_APP_INFO_ENQUIRY:
		/* handled in ca_get_msg */
		err = 0;
		break;
	case EN50221_TAG_CA_INFO_ENQUIRY:
		/* handled in ca_get_msg */
		err = 0;
		break;
	case EN50221_TAG_ENTER_MENU:
		err = FUNC0(fdtv);
		break;
	default:
		FUNC1(fdtv->device, "unhandled CA message 0x%08x\n",
			fdtv->ca_last_command);
		err = -EFAULT;
	}
	return err;
}