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
struct tty_audit_buf {int major; int minor; int icanon; scalar_t__ valid; int /*<<< orphan*/  mutex; int /*<<< orphan*/  count; void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int N_TTY_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_audit_buf*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct tty_audit_buf *FUNC4(int major, int minor,
						 int icanon)
{
	struct tty_audit_buf *buf;

	buf = FUNC2(sizeof(*buf), GFP_KERNEL);
	if (!buf)
		goto err;
	buf->data = FUNC2(N_TTY_BUF_SIZE, GFP_KERNEL);
	if (!buf->data)
		goto err_buf;
	FUNC0(&buf->count, 1);
	FUNC3(&buf->mutex);
	buf->major = major;
	buf->minor = minor;
	buf->icanon = icanon;
	buf->valid = 0;
	return buf;

err_buf:
	FUNC1(buf);
err:
	return NULL;
}