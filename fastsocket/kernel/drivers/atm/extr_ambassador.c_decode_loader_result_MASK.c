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
typedef  int u32 ;
typedef  size_t loader_command ;

/* Variables and functions */
#define  BAD_COMMAND 139 
#define  COMMAND_COMPLETE 138 
#define  COMMAND_FAILED_TEST 137 
#define  COMMAND_FLASH_ERASE_FAILURE 136 
#define  COMMAND_IN_PROGRESS 135 
#define  COMMAND_PASSED_TEST 134 
#define  COMMAND_READ_BAD_ADDRESS 133 
#define  COMMAND_READ_DATA_OK 132 
#define  COMMAND_WRITE_BAD_ADDRESS 131 
#define  COMMAND_WRITE_BAD_DATA 130 
#define  COMMAND_WRITE_DATA_OK 129 
#define  COMMAND_WRITE_FLASH_FAILURE 128 
 int DBG_ERR ; 
 int DBG_LOAD ; 
 int EINVAL ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int* command_successes ; 

__attribute__((used)) static  int FUNC2 (loader_command cmd, u32 result)
{
	int res;
	const char *msg;

	if (result == command_successes[cmd])
		return 0;

	switch (result) {
		case BAD_COMMAND:
			res = -EINVAL;
			msg = "bad command";
			break;
		case COMMAND_IN_PROGRESS:
			res = -ETIMEDOUT;
			msg = "command in progress";
			break;
		case COMMAND_PASSED_TEST:
			res = 0;
			msg = "command passed test";
			break;
		case COMMAND_FAILED_TEST:
			res = -EIO;
			msg = "command failed test";
			break;
		case COMMAND_READ_DATA_OK:
			res = 0;
			msg = "command read data ok";
			break;
		case COMMAND_READ_BAD_ADDRESS:
			res = -EINVAL;
			msg = "command read bad address";
			break;
		case COMMAND_WRITE_DATA_OK:
			res = 0;
			msg = "command write data ok";
			break;
		case COMMAND_WRITE_BAD_ADDRESS:
			res = -EINVAL;
			msg = "command write bad address";
			break;
		case COMMAND_WRITE_FLASH_FAILURE:
			res = -EIO;
			msg = "command write flash failure";
			break;
		case COMMAND_COMPLETE:
			res = 0;
			msg = "command complete";
			break;
		case COMMAND_FLASH_ERASE_FAILURE:
			res = -EIO;
			msg = "command flash erase failure";
			break;
		case COMMAND_WRITE_BAD_DATA:
			res = -EINVAL;
			msg = "command write bad data";
			break;
		default:
			res = -EINVAL;
			msg = "unknown error";
			FUNC0 (DBG_LOAD|DBG_ERR,
				"decode_loader_result got %d=%x !",
				result, result);
			break;
	}

	FUNC1 (KERN_ERR, "%s", msg);
	return res;
}