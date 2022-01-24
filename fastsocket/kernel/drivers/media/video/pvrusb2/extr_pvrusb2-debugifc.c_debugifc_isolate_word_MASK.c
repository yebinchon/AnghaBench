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

/* Variables and functions */
 unsigned int FUNC0 (char const*,unsigned int) ; 
 unsigned int FUNC1 (char const*,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC2(const char *buf,unsigned int count,
					  const char **wstrPtr,
					  unsigned int *wlenPtr)
{
	const char *wptr;
	unsigned int consume_cnt = 0;
	unsigned int wlen;
	unsigned int scnt;

	wptr = NULL;
	wlen = 0;
	scnt = FUNC1(buf,count);
	consume_cnt += scnt; count -= scnt; buf += scnt;
	if (!count) goto done;

	scnt = FUNC0(buf,count);
	if (!scnt) goto done;
	wptr = buf;
	wlen = scnt;
	consume_cnt += scnt; count -= scnt; buf += scnt;

 done:
	*wstrPtr = wptr;
	*wlenPtr = wlen;
	return consume_cnt;
}