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
struct timeval {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

__attribute__((used)) static bool FUNC3(int fd)
{
	fd_set fdset;
	struct timeval zero = { 0, 0 };
	FUNC1(&fdset);
	FUNC0(fd, &fdset);
	return FUNC2(fd+1, &fdset, NULL, NULL, &zero) != 1;
}