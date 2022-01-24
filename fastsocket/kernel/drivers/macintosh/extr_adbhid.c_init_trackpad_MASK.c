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
struct adb_request {int reply_len; int /*<<< orphan*/ * reply; } ;

/* Variables and functions */
 int ADBREQ_REPLY ; 
 int ADBREQ_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adb_request*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void 
FUNC6(int id)
{
	struct adb_request req;
	unsigned char r1_buffer[8];

	FUNC5(" (trackpad)");

	FUNC3(&req, NULL, ADBREQ_SYNC | ADBREQ_REPLY, 1,
		    FUNC1(id,1));
	if (req.reply_len < 8)
	    FUNC5("bad length for reg. 1\n");
	else
	{
	    FUNC4(r1_buffer, &req.reply[1], 8);

	    FUNC3(&req, NULL, ADBREQ_SYNC, 9,
	        FUNC2(id,1),
	            r1_buffer[0],
	            r1_buffer[1],
	            r1_buffer[2],
	            r1_buffer[3],
	            r1_buffer[4],
	            r1_buffer[5],
	            0x0d,
	            r1_buffer[7]);

            FUNC3(&req, NULL, ADBREQ_SYNC, 9,
	        FUNC2(id,2),
	    	    0x99,
	    	    0x94,
	    	    0x19,
	    	    0xff,
	    	    0xb2,
	    	    0x8a,
	    	    0x1b,
	    	    0x50);

	    FUNC3(&req, NULL, ADBREQ_SYNC, 9,
	        FUNC2(id,1),
	            r1_buffer[0],
	            r1_buffer[1],
	            r1_buffer[2],
	            r1_buffer[3],
	            r1_buffer[4],
	            r1_buffer[5],
	            0x03, /*r1_buffer[6],*/
	            r1_buffer[7]);

	    /* Without this flush, the trackpad may be locked up */
	    FUNC3(&req, NULL, ADBREQ_SYNC, 1, FUNC0(id));
        }
}