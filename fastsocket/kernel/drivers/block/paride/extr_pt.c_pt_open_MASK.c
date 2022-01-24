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
struct pt_unit {int flags; int /*<<< orphan*/  available; int /*<<< orphan*/  name; int /*<<< orphan*/ * bufptr; int /*<<< orphan*/  present; } ;
struct inode {int dummy; } ;
struct file {int f_mode; struct pt_unit* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EROFS ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PT_BUFSIZE ; 
 int PT_MEDIA ; 
 int PT_REWIND ; 
 int PT_UNITS ; 
 int PT_WRITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 struct pt_unit* pt ; 
 int /*<<< orphan*/  FUNC6 (struct pt_unit*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	int unit = FUNC2(inode) & 0x7F;
	struct pt_unit *tape = pt + unit;
	int err;

	FUNC4();
	if (unit >= PT_UNITS || (!tape->present)) {
		FUNC7();
		return -ENODEV;
	}

	err = -EBUSY;
	if (!FUNC0(&tape->available))
		goto out;

	FUNC6(tape);

	err = -ENODEV;
	if (!(tape->flags & PT_MEDIA))
		goto out;

	err = -EROFS;
	if ((!(tape->flags & PT_WRITE_OK)) && (file->f_mode & FMODE_WRITE))
		goto out;

	if (!(FUNC2(inode) & 128))
		tape->flags |= PT_REWIND;

	err = -ENOMEM;
	tape->bufptr = FUNC3(PT_BUFSIZE, GFP_KERNEL);
	if (tape->bufptr == NULL) {
		FUNC5("%s: buffer allocation failed\n", tape->name);
		goto out;
	}

	file->private_data = tape;
	FUNC7();
	return 0;

out:
	FUNC1(&tape->available);
	FUNC7();
	return err;
}