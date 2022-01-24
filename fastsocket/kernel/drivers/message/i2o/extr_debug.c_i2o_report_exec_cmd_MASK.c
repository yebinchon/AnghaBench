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

/* Variables and functions */
#define  I2O_CMD_ADAPTER_ASSIGN 160 
#define  I2O_CMD_ADAPTER_CLEAR 159 
#define  I2O_CMD_ADAPTER_CONNECT 158 
#define  I2O_CMD_ADAPTER_READ 157 
#define  I2O_CMD_ADAPTER_RELEASE 156 
#define  I2O_CMD_ADAPTER_RESET 155 
#define  I2O_CMD_BIOS_INFO_SET 154 
#define  I2O_CMD_BOOT_DEVICE_SET 153 
#define  I2O_CMD_CONFIG_VALIDATE 152 
#define  I2O_CMD_CONN_SETUP 151 
#define  I2O_CMD_DDM_DESTROY 150 
#define  I2O_CMD_DDM_ENABLE 149 
#define  I2O_CMD_DDM_QUIESCE 148 
#define  I2O_CMD_DDM_RESET 147 
#define  I2O_CMD_DDM_SUSPEND 146 
#define  I2O_CMD_DEVICE_ASSIGN 145 
#define  I2O_CMD_DEVICE_RELEASE 144 
#define  I2O_CMD_HRT_GET 143 
#define  I2O_CMD_LCT_NOTIFY 142 
#define  I2O_CMD_OUTBOUND_INIT 141 
#define  I2O_CMD_PATH_ENABLE 140 
#define  I2O_CMD_PATH_QUIESCE 139 
#define  I2O_CMD_PATH_RESET 138 
#define  I2O_CMD_STATIC_MF_CREATE 137 
#define  I2O_CMD_STATIC_MF_RELEASE 136 
#define  I2O_CMD_STATUS_GET 135 
#define  I2O_CMD_SW_DOWNLOAD 134 
#define  I2O_CMD_SW_REMOVE 133 
#define  I2O_CMD_SW_UPLOAD 132 
#define  I2O_CMD_SYS_ENABLE 131 
#define  I2O_CMD_SYS_MODIFY 130 
#define  I2O_CMD_SYS_QUIESCE 129 
#define  I2O_CMD_SYS_TAB_SET 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(u8 cmd)
{
	switch (cmd) {
	case I2O_CMD_ADAPTER_ASSIGN:
		FUNC0("EXEC_ADAPTER_ASSIGN, ");
		break;
	case I2O_CMD_ADAPTER_READ:
		FUNC0("EXEC_ADAPTER_READ, ");
		break;
	case I2O_CMD_ADAPTER_RELEASE:
		FUNC0("EXEC_ADAPTER_RELEASE, ");
		break;
	case I2O_CMD_BIOS_INFO_SET:
		FUNC0("EXEC_BIOS_INFO_SET, ");
		break;
	case I2O_CMD_BOOT_DEVICE_SET:
		FUNC0("EXEC_BOOT_DEVICE_SET, ");
		break;
	case I2O_CMD_CONFIG_VALIDATE:
		FUNC0("EXEC_CONFIG_VALIDATE, ");
		break;
	case I2O_CMD_CONN_SETUP:
		FUNC0("EXEC_CONN_SETUP, ");
		break;
	case I2O_CMD_DDM_DESTROY:
		FUNC0("EXEC_DDM_DESTROY, ");
		break;
	case I2O_CMD_DDM_ENABLE:
		FUNC0("EXEC_DDM_ENABLE, ");
		break;
	case I2O_CMD_DDM_QUIESCE:
		FUNC0("EXEC_DDM_QUIESCE, ");
		break;
	case I2O_CMD_DDM_RESET:
		FUNC0("EXEC_DDM_RESET, ");
		break;
	case I2O_CMD_DDM_SUSPEND:
		FUNC0("EXEC_DDM_SUSPEND, ");
		break;
	case I2O_CMD_DEVICE_ASSIGN:
		FUNC0("EXEC_DEVICE_ASSIGN, ");
		break;
	case I2O_CMD_DEVICE_RELEASE:
		FUNC0("EXEC_DEVICE_RELEASE, ");
		break;
	case I2O_CMD_HRT_GET:
		FUNC0("EXEC_HRT_GET, ");
		break;
	case I2O_CMD_ADAPTER_CLEAR:
		FUNC0("EXEC_IOP_CLEAR, ");
		break;
	case I2O_CMD_ADAPTER_CONNECT:
		FUNC0("EXEC_IOP_CONNECT, ");
		break;
	case I2O_CMD_ADAPTER_RESET:
		FUNC0("EXEC_IOP_RESET, ");
		break;
	case I2O_CMD_LCT_NOTIFY:
		FUNC0("EXEC_LCT_NOTIFY, ");
		break;
	case I2O_CMD_OUTBOUND_INIT:
		FUNC0("EXEC_OUTBOUND_INIT, ");
		break;
	case I2O_CMD_PATH_ENABLE:
		FUNC0("EXEC_PATH_ENABLE, ");
		break;
	case I2O_CMD_PATH_QUIESCE:
		FUNC0("EXEC_PATH_QUIESCE, ");
		break;
	case I2O_CMD_PATH_RESET:
		FUNC0("EXEC_PATH_RESET, ");
		break;
	case I2O_CMD_STATIC_MF_CREATE:
		FUNC0("EXEC_STATIC_MF_CREATE, ");
		break;
	case I2O_CMD_STATIC_MF_RELEASE:
		FUNC0("EXEC_STATIC_MF_RELEASE, ");
		break;
	case I2O_CMD_STATUS_GET:
		FUNC0("EXEC_STATUS_GET, ");
		break;
	case I2O_CMD_SW_DOWNLOAD:
		FUNC0("EXEC_SW_DOWNLOAD, ");
		break;
	case I2O_CMD_SW_UPLOAD:
		FUNC0("EXEC_SW_UPLOAD, ");
		break;
	case I2O_CMD_SW_REMOVE:
		FUNC0("EXEC_SW_REMOVE, ");
		break;
	case I2O_CMD_SYS_ENABLE:
		FUNC0("EXEC_SYS_ENABLE, ");
		break;
	case I2O_CMD_SYS_MODIFY:
		FUNC0("EXEC_SYS_MODIFY, ");
		break;
	case I2O_CMD_SYS_QUIESCE:
		FUNC0("EXEC_SYS_QUIESCE, ");
		break;
	case I2O_CMD_SYS_TAB_SET:
		FUNC0("EXEC_SYS_TAB_SET, ");
		break;
	default:
		FUNC0("Cmd = %#02x, ", cmd);
	}
}