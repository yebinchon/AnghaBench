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
typedef  scalar_t__ uid_t ;
struct loop_info64 {int lo_encrypt_key_size; int lo_encrypt_type; scalar_t__ lo_offset; scalar_t__ lo_sizelimit; int lo_flags; int /*<<< orphan*/  lo_encrypt_key; int /*<<< orphan*/ * lo_init; int /*<<< orphan*/  lo_crypt_name; int /*<<< orphan*/  lo_file_name; } ;
struct loop_func_table {int /*<<< orphan*/  ioctl; int /*<<< orphan*/  transfer; } ;
struct loop_device {int lo_encrypt_key_size; scalar_t__ lo_key_owner; scalar_t__ lo_state; scalar_t__ lo_offset; scalar_t__ lo_sizelimit; int lo_flags; scalar_t__* lo_encrypt_key; int /*<<< orphan*/ * lo_init; int /*<<< orphan*/  ioctl; int /*<<< orphan*/  transfer; scalar_t__* lo_crypt_name; scalar_t__* lo_file_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EFBIG ; 
 int EINVAL ; 
 int ENXIO ; 
 int EPERM ; 
 int LO_FLAGS_AUTOCLEAR ; 
 unsigned int LO_KEY_SIZE ; 
 int LO_NAME_SIZE ; 
 scalar_t__ Lo_bound ; 
 unsigned int MAX_LO_CRYPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (struct loop_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct loop_device*) ; 
 int FUNC4 (struct loop_device*,struct loop_func_table*,struct loop_info64 const*) ; 
 int FUNC5 (struct loop_device*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 struct loop_func_table none_funcs ; 
 struct loop_func_table** xfer_funcs ; 

__attribute__((used)) static int
FUNC7(struct loop_device *lo, const struct loop_info64 *info)
{
	int err;
	struct loop_func_table *xfer;
	uid_t uid = FUNC1();

	if (lo->lo_encrypt_key_size &&
	    lo->lo_key_owner != uid &&
	    !FUNC0(CAP_SYS_ADMIN))
		return -EPERM;
	if (lo->lo_state != Lo_bound)
		return -ENXIO;
	if ((unsigned int) info->lo_encrypt_key_size > LO_KEY_SIZE)
		return -EINVAL;

	err = FUNC5(lo);
	if (err)
		return err;

	if (info->lo_encrypt_type) {
		unsigned int type = info->lo_encrypt_type;

		if (type >= MAX_LO_CRYPT)
			return -EINVAL;
		xfer = xfer_funcs[type];
		if (xfer == NULL)
			return -EINVAL;
	} else
		xfer = NULL;

	err = FUNC4(lo, xfer, info);
	if (err)
		return err;

	if (lo->lo_offset != info->lo_offset ||
	    lo->lo_sizelimit != info->lo_sizelimit) {
		lo->lo_offset = info->lo_offset;
		lo->lo_sizelimit = info->lo_sizelimit;
		if (FUNC2(lo))
			return -EFBIG;
	}
	FUNC3(lo);

	FUNC6(lo->lo_file_name, info->lo_file_name, LO_NAME_SIZE);
	FUNC6(lo->lo_crypt_name, info->lo_crypt_name, LO_NAME_SIZE);
	lo->lo_file_name[LO_NAME_SIZE-1] = 0;
	lo->lo_crypt_name[LO_NAME_SIZE-1] = 0;

	if (!xfer)
		xfer = &none_funcs;
	lo->transfer = xfer->transfer;
	lo->ioctl = xfer->ioctl;

	if ((lo->lo_flags & LO_FLAGS_AUTOCLEAR) !=
	     (info->lo_flags & LO_FLAGS_AUTOCLEAR))
		lo->lo_flags ^= LO_FLAGS_AUTOCLEAR;

	lo->lo_encrypt_key_size = info->lo_encrypt_key_size;
	lo->lo_init[0] = info->lo_init[0];
	lo->lo_init[1] = info->lo_init[1];
	if (info->lo_encrypt_key_size) {
		FUNC6(lo->lo_encrypt_key, info->lo_encrypt_key,
		       info->lo_encrypt_key_size);
		lo->lo_key_owner = uid;
	}	

	return 0;
}