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
struct s921_isdb_t {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  ISDB_T_CMD_GET_STATUS 131 
#define  ISDB_T_CMD_INIT 130 
#define  ISDB_T_CMD_SET_PARAM 129 
#define  ISDB_T_CMD_TUNE 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct s921_isdb_t*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct s921_isdb_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct s921_isdb_t*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct s921_isdb_t*,void*) ; 

int FUNC5(struct s921_isdb_t *dev, u32 cmd, void *data) {
	switch(cmd) {
	case ISDB_T_CMD_INIT:
		FUNC2(dev);
		break;
	case ISDB_T_CMD_SET_PARAM:
		FUNC3(dev, data);
		break;
	case ISDB_T_CMD_TUNE:
		FUNC4(dev, data);
		break;
	case ISDB_T_CMD_GET_STATUS:
		FUNC1(dev, data);
		break;
	default:
		FUNC0("unhandled command\n");
		return -EINVAL;
	}
	return 0;
}