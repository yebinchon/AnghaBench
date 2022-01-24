#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  sk; struct file* file; } ;
struct tun_struct {int /*<<< orphan*/  dev; TYPE_1__ socket; struct tun_file* tfile; } ;
struct tun_file {int /*<<< orphan*/  count; struct tun_struct* tun; } ;
struct file {struct tun_file* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct tun_struct *tun, struct file *file)
{
	struct tun_file *tfile = file->private_data;
	int err;

	FUNC0();

	FUNC3(tun->dev);

	err = -EINVAL;
	if (tfile->tun)
		goto out;

	err = -EBUSY;
	if (tun->tfile)
		goto out;

	err = 0;
	tfile->tun = tun;
	tun->tfile = tfile;
	tun->socket.file = file;
	FUNC2(tun->dev);
	FUNC5(tun->socket.sk);
	FUNC1(&tfile->count);

out:
	FUNC4(tun->dev);
	return err;
}