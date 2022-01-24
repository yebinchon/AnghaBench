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
struct buffer {size_t size; int /*<<< orphan*/ * data; } ;
typedef  size_t off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int
FUNC2(char* page, char** start, off_t off, int count,
	int* eof, void* data)
{
	struct buffer *buffer = (struct buffer *)data;

	if (off >= buffer->size) {
		*eof = 1;
		return 0;
	}

	count = FUNC1((int) (buffer->size - off), count);

	FUNC0(page, &buffer->data[off], count);

	return count;
}