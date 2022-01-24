#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int pgbuf; int start; int end; scalar_t__ buffer; } ;
typedef  TYPE_1__ vtx_pagereq_t ;
struct saa5246a_device {scalar_t__* is_searching; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMMAND_END ; 
 int EFAULT ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NUM_DAUS ; 
 int POS_HEADER_END ; 
 int /*<<< orphan*/  POS_HEADER_START ; 
 int POS_TIME_END ; 
 int /*<<< orphan*/  POS_TIME_START ; 
 int R8_ACTIVE_CHAPTER_4 ; 
 int R8_DO_NOT_CLEAR_MEMORY ; 
 int /*<<< orphan*/  R9_CURSER_ROW_0 ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  SAA5246A_REGISTER_R8 ; 
 int VTX_PAGESIZE ; 
 scalar_t__ FUNC4 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC5 (struct saa5246a_device*,int,char*) ; 
 scalar_t__ FUNC6 (struct saa5246a_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int) ; 

__attribute__((used)) static inline int FUNC11(struct saa5246a_device *t,
	vtx_pagereq_t *req)
{
	int start, end, size;
	char *buf;
	int err;

	if (req->pgbuf < 0 || req->pgbuf >= NUM_DAUS ||
	    req->start < 0 || req->start > req->end || req->end >= VTX_PAGESIZE)
		return -EINVAL;

	buf = FUNC8(VTX_PAGESIZE, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	/* Read "normal" part of page */
	err = -EIO;

	end = FUNC10(req->end, VTX_PAGESIZE - 1);
	if (FUNC6(t, SAA5246A_REGISTER_R8,
			req->pgbuf | R8_DO_NOT_CLEAR_MEMORY,
			FUNC3(req->start), FUNC0(req->start), COMMAND_END))
		goto out;
	if (FUNC5(t, end - req->start + 1, buf))
		goto out;
	err = -EFAULT;
	if (FUNC4(req->buffer, buf, end - req->start + 1))
		goto out;

	/* Always get the time from buffer 4, since this stupid SAA5246A only
	 * updates the currently displayed buffer...
	 */
	if (FUNC2(req)) {
		start = FUNC9(req->start, POS_TIME_START);
		end   = FUNC10(req->end,   POS_TIME_END);
		size = end - start + 1;
		err = -EINVAL;
		if (size < 0)
			goto out;
		err = -EIO;
		if (FUNC6(t, SAA5246A_REGISTER_R8,
				R8_ACTIVE_CHAPTER_4 | R8_DO_NOT_CLEAR_MEMORY,
				R9_CURSER_ROW_0, start, COMMAND_END))
			goto out;
		if (FUNC5(t, size, buf))
			goto out;
		err = -EFAULT;
		if (FUNC4(req->buffer + start - req->start, buf, size))
			goto out;
	}
	/* Insert the header from buffer 4 only, if acquisition circuit is still searching for a page */
	if (FUNC1(req) && t->is_searching[req->pgbuf]) {
		start = FUNC9(req->start, POS_HEADER_START);
		end   = FUNC10(req->end,   POS_HEADER_END);
		size = end - start + 1;
		err = -EINVAL;
		if (size < 0)
			goto out;
		err = -EIO;
		if (FUNC6(t, SAA5246A_REGISTER_R8,
				R8_ACTIVE_CHAPTER_4 | R8_DO_NOT_CLEAR_MEMORY,
				R9_CURSER_ROW_0, start, COMMAND_END))
			goto out;
		if (FUNC5(t, end - start + 1, buf))
			goto out;
		err = -EFAULT;
		if (FUNC4(req->buffer + start - req->start, buf, size))
			goto out;
	}
	err = 0;
out:
	FUNC7(buf);
	return err;
}