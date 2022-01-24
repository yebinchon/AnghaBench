#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_3__ {size_t msg_id; } ;
struct bfi_mbmsg_s {TYPE_1__ mh; } ;
struct bfi_flash_write_rsp_s {size_t status; } ;
struct bfi_flash_read_rsp_s {size_t status; size_t length; } ;
struct bfi_flash_query_rsp_s {size_t status; } ;
struct bfi_flash_event_s {size_t status; size_t param; } ;
struct bfi_flash_erase_rsp_s {size_t status; } ;
struct bfa_flash_s {size_t ubuf; size_t status; size_t residue; size_t offset; int /*<<< orphan*/  ioc; scalar_t__ dbuf_kva; int /*<<< orphan*/  op_busy; } ;
struct bfa_flash_attr_s {size_t status; size_t npart; TYPE_2__* part; } ;
struct TYPE_4__ {size_t part_type; size_t part_instance; size_t part_off; size_t part_size; size_t part_len; size_t part_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_IOC_AEN_FWCFG_ERROR ; 
 int /*<<< orphan*/  BFA_IOC_AEN_INVALID_VENDOR ; 
 size_t BFA_STATUS_BAD_FWCFG ; 
 size_t BFA_STATUS_INVALID_VENDOR ; 
 size_t BFA_STATUS_OK ; 
#define  BFI_FLASH_I2H_BOOT_VER_RSP 133 
#define  BFI_FLASH_I2H_ERASE_RSP 132 
#define  BFI_FLASH_I2H_EVENT 131 
#define  BFI_FLASH_I2H_QUERY_RSP 130 
#define  BFI_FLASH_I2H_READ_RSP 129 
#define  BFI_FLASH_I2H_WRITE_RSP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_flash_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_flash_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_flash_s*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_flash_s*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (size_t,scalar_t__,size_t) ; 

__attribute__((used)) static void
FUNC8(void *flasharg, struct bfi_mbmsg_s *msg)
{
	struct bfa_flash_s *flash = flasharg;
	u32	status;

	union {
		struct bfi_flash_query_rsp_s *query;
		struct bfi_flash_erase_rsp_s *erase;
		struct bfi_flash_write_rsp_s *write;
		struct bfi_flash_read_rsp_s *read;
		struct bfi_flash_event_s *event;
		struct bfi_mbmsg_s   *msg;
	} m;

	m.msg = msg;
	FUNC6(flash, msg->mh.msg_id);

	if (!flash->op_busy && msg->mh.msg_id != BFI_FLASH_I2H_EVENT) {
		/* receiving response after ioc failure */
		FUNC6(flash, 0x9999);
		return;
	}

	switch (msg->mh.msg_id) {
	case BFI_FLASH_I2H_QUERY_RSP:
		status = FUNC1(m.query->status);
		FUNC6(flash, status);
		if (status == BFA_STATUS_OK) {
			u32	i;
			struct bfa_flash_attr_s *attr, *f;

			attr = (struct bfa_flash_attr_s *) flash->ubuf;
			f = (struct bfa_flash_attr_s *) flash->dbuf_kva;
			attr->status = FUNC1(f->status);
			attr->npart = FUNC1(f->npart);
			FUNC6(flash, attr->status);
			FUNC6(flash, attr->npart);
			for (i = 0; i < attr->npart; i++) {
				attr->part[i].part_type =
					FUNC1(f->part[i].part_type);
				attr->part[i].part_instance =
					FUNC1(f->part[i].part_instance);
				attr->part[i].part_off =
					FUNC1(f->part[i].part_off);
				attr->part[i].part_size =
					FUNC1(f->part[i].part_size);
				attr->part[i].part_len =
					FUNC1(f->part[i].part_len);
				attr->part[i].part_status =
					FUNC1(f->part[i].part_status);
			}
		}
		flash->status = status;
		FUNC2(flash);
		break;
	case BFI_FLASH_I2H_ERASE_RSP:
		status = FUNC1(m.erase->status);
		FUNC6(flash, status);
		flash->status = status;
		FUNC2(flash);
		break;
	case BFI_FLASH_I2H_WRITE_RSP:
		status = FUNC1(m.write->status);
		FUNC6(flash, status);
		if (status != BFA_STATUS_OK || flash->residue == 0) {
			flash->status = status;
			FUNC2(flash);
		} else {
			FUNC6(flash, flash->offset);
			FUNC4(flash);
		}
		break;
	case BFI_FLASH_I2H_READ_RSP:
		status = FUNC1(m.read->status);
		FUNC6(flash, status);
		if (status != BFA_STATUS_OK) {
			flash->status = status;
			FUNC2(flash);
		} else {
			u32 len = FUNC1(m.read->length);
			FUNC6(flash, flash->offset);
			FUNC6(flash, len);
			FUNC7(flash->ubuf + flash->offset,
				flash->dbuf_kva, len);
			flash->residue -= len;
			flash->offset += len;
			if (flash->residue == 0) {
				flash->status = status;
				FUNC2(flash);
			} else
				FUNC3(flash);
		}
		break;
	case BFI_FLASH_I2H_BOOT_VER_RSP:
		break;
	case BFI_FLASH_I2H_EVENT:
		status = FUNC1(m.event->status);
		FUNC6(flash, status);
		if (status == BFA_STATUS_BAD_FWCFG)
			FUNC5(flash->ioc, BFA_IOC_AEN_FWCFG_ERROR);
		else if (status == BFA_STATUS_INVALID_VENDOR) {
			u32 param;
			param = FUNC1(m.event->param);
			FUNC6(flash, param);
			FUNC5(flash->ioc,
				BFA_IOC_AEN_INVALID_VENDOR);
		}
		break;

	default:
		FUNC0(1);
	}
}