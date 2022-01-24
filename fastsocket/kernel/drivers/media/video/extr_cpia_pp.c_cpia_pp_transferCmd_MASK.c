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
typedef  int u8 ;
struct pp_cam_entry {int dummy; } ;

/* Variables and functions */
 int DATA_IN ; 
 int DATA_OUT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int PACKET_LENGTH ; 
 int FUNC1 (struct pp_cam_entry*,int*,int) ; 
 int FUNC2 (struct pp_cam_entry*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 

__attribute__((used)) static int FUNC4(void *privdata, u8 *command, u8 *data)
{
	int err;
	int retval=0;
	int databytes;
	struct pp_cam_entry *cam = privdata;

	if(cam == NULL) {
		FUNC0("Internal driver error: cam is NULL\n");
		return -EINVAL;
	}
	if(command == NULL) {
		FUNC0("Internal driver error: command is NULL\n");
		return -EINVAL;
	}
	databytes = (((int)command[7])<<8) | command[6];
	if ((err = FUNC2(cam, command, PACKET_LENGTH)) < 0) {
		FUNC0("Error writing command\n");
		return err;
	}
	if(command[0] == DATA_IN) {
		u8 buffer[8];
		if(data == NULL) {
			FUNC0("Internal driver error: data is NULL\n");
			return -EINVAL;
		}
		if((err = FUNC1(cam, buffer, 8)) < 0) {
			FUNC0("Error reading command result\n");
		       return err;
		}
		FUNC3(data, buffer, databytes);
	} else if(command[0] == DATA_OUT) {
		if(databytes > 0) {
			if(data == NULL) {
				FUNC0("Internal driver error: data is NULL\n");
				retval = -EINVAL;
			} else {
				if((err=FUNC2(cam, data, databytes)) < 0){
					FUNC0("Error writing command data\n");
					return err;
				}
			}
		}
	} else {
		FUNC0("Unexpected first byte of command: %x\n", command[0]);
		retval = -EINVAL;
	}
	return retval;
}