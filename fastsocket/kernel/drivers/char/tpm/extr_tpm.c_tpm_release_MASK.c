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
struct tpm_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  is_open; int /*<<< orphan*/  data_buffer; int /*<<< orphan*/  data_pending; int /*<<< orphan*/  user_read_timer; } ;
struct inode {int dummy; } ;
struct file {struct tpm_chip* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct inode *inode, struct file *file)
{
	struct tpm_chip *chip = file->private_data;

	FUNC2(&chip->user_read_timer);
	FUNC3();
	file->private_data = NULL;
	FUNC0(&chip->data_pending, 0);
	FUNC4(chip->data_buffer);
	FUNC1(0, &chip->is_open);
	FUNC5(chip->dev);
	return 0;
}