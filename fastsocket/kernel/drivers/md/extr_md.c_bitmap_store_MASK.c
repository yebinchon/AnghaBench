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
struct mddev {int /*<<< orphan*/  bitmap; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 unsigned long FUNC3 (char const*,char**,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct mddev *mddev, const char *buf, size_t len)
{
	char *end;
	unsigned long chunk, end_chunk;

	if (!mddev->bitmap)
		goto out;
	/* buf should be <chunk> <chunk> ... or <chunk>-<chunk> ... (range) */
	while (*buf) {
		chunk = end_chunk = FUNC3(buf, &end, 0);
		if (buf == end) break;
		if (*end == '-') { /* range */
			buf = end + 1;
			end_chunk = FUNC3(buf, &end, 0);
			if (buf == end) break;
		}
		if (*end && !FUNC2(*end)) break;
		FUNC0(mddev->bitmap, chunk, end_chunk);
		buf = FUNC4(end);
	}
	FUNC1(mddev->bitmap); /* flush the bits to disk */
out:
	return len;
}