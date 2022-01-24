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
struct TYPE_3__ {int msg_id; } ;
struct bfi_mbmsg {TYPE_1__ mh; } ;
struct bfi_flash_write_rsp {size_t status; } ;
struct bfi_flash_read_rsp {size_t status; size_t length; } ;
struct bfi_flash_query_rsp {size_t status; } ;
struct bfa_flash_attr {size_t status; size_t npart; TYPE_2__* part; } ;
struct bfa_flash {size_t ubuf; size_t status; size_t residue; size_t offset; scalar_t__ dbuf_kva; int /*<<< orphan*/  op_busy; } ;
struct TYPE_4__ {size_t part_type; size_t part_instance; size_t part_off; size_t part_size; size_t part_len; size_t part_status; } ;

/* Variables and functions */
 size_t BFA_STATUS_OK ; 
#define  BFI_FLASH_I2H_BOOT_VER_RSP 132 
#define  BFI_FLASH_I2H_EVENT 131 
#define  BFI_FLASH_I2H_QUERY_RSP 130 
#define  BFI_FLASH_I2H_READ_RSP 129 
#define  BFI_FLASH_I2H_WRITE_RSP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_flash*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_flash*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_flash*) ; 
 int /*<<< orphan*/  FUNC5 (size_t,scalar_t__,size_t) ; 

__attribute__((used)) static void
FUNC6(void *flasharg, struct bfi_mbmsg *msg)
{
	struct bfa_flash *flash = flasharg;
	u32	status;

	union {
		struct bfi_flash_query_rsp *query;
		struct bfi_flash_write_rsp *write;
		struct bfi_flash_read_rsp *read;
		struct bfi_mbmsg   *msg;
	} m;

	m.msg = msg;

	/* receiving response after ioc failure */
	if (!flash->op_busy && msg->mh.msg_id != BFI_FLASH_I2H_EVENT)
		return;

	switch (msg->mh.msg_id) {
	case BFI_FLASH_I2H_QUERY_RSP:
		status = FUNC1(m.query->status);
		if (status == BFA_STATUS_OK) {
			u32	i;
			struct bfa_flash_attr *attr, *f;

			attr = (struct bfa_flash_attr *) flash->ubuf;
			f = (struct bfa_flash_attr *) flash->dbuf_kva;
			attr->status = FUNC1(f->status);
			attr->npart = FUNC1(f->npart);
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
	case BFI_FLASH_I2H_WRITE_RSP:
		status = FUNC1(m.write->status);
		if (status != BFA_STATUS_OK || flash->residue == 0) {
			flash->status = status;
			FUNC2(flash);
		} else
			FUNC4(flash);
		break;
	case BFI_FLASH_I2H_READ_RSP:
		status = FUNC1(m.read->status);
		if (status != BFA_STATUS_OK) {
			flash->status = status;
			FUNC2(flash);
		} else {
			u32 len = FUNC1(m.read->length);
			FUNC5(flash->ubuf + flash->offset,
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
	case BFI_FLASH_I2H_EVENT:
		break;
	default:
		FUNC0(1);
	}
}