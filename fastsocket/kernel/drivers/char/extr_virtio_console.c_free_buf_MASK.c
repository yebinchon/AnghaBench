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
struct port_buffer {unsigned int sgpages; int /*<<< orphan*/ * sg; struct port_buffer* buf; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct port_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct port_buffer *buf)
{
	unsigned int i;

	FUNC0(buf->buf);
	for (i = 0; i < buf->sgpages; i++) {
		struct page *page = FUNC2(&buf->sg[i]);
		if (!page)
			break;
		FUNC1(page);
	}

	FUNC0(buf);
}