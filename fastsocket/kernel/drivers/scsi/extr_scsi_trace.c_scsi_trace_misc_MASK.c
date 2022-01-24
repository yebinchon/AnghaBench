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
struct trace_seq {char* buffer; int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_seq*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC2(struct trace_seq *p, unsigned char *cdb, int len)
{
	const char *ret = p->buffer + p->len;

	FUNC0(p, "-");
	FUNC1(p, 0);

	return ret;
}