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
struct w8001 {scalar_t__ response_type; int /*<<< orphan*/  cmd_done; int /*<<< orphan*/  serio; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  HZ ; 
 scalar_t__ W8001_QUERY_PACKET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct w8001 *w8001, unsigned char command,
			 bool wait_response)
{
	int rc;

	w8001->response_type = 0;
	FUNC0(&w8001->cmd_done);

	rc = FUNC1(w8001->serio, command);
	if (rc == 0 && wait_response) {

		FUNC2(&w8001->cmd_done, HZ);
		if (w8001->response_type != W8001_QUERY_PACKET)
			rc = -EIO;
	}

	return rc;
}