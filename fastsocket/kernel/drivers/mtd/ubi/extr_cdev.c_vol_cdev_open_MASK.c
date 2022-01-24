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
struct ubi_volume_desc {int dummy; } ;
struct inode {int dummy; } ;
struct file {int f_mode; struct ubi_volume_desc* private_data; } ;

/* Variables and functions */
 int FMODE_WRITE ; 
 scalar_t__ FUNC0 (struct ubi_volume_desc*) ; 
 int FUNC1 (struct ubi_volume_desc*) ; 
 int UBI_READONLY ; 
 int UBI_READWRITE ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct ubi_volume_desc* FUNC6 (int,int,int) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct ubi_volume_desc *desc;
	int vol_id = FUNC4(inode) - 1, mode, ubi_num;

	ubi_num = FUNC5(FUNC3(inode));
	if (ubi_num < 0)
		return ubi_num;

	if (file->f_mode & FMODE_WRITE)
		mode = UBI_READWRITE;
	else
		mode = UBI_READONLY;

	FUNC2("open device %d, volume %d, mode %d",
	        ubi_num, vol_id, mode);

	desc = FUNC6(ubi_num, vol_id, mode);
	if (FUNC0(desc))
		return FUNC1(desc);

	file->private_data = desc;
	return 0;
}