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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct adj_time_work {int /*<<< orphan*/  work; int /*<<< orphan*/  host_time; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int ICTIMESYNCFLAG_SAMPLE ; 
 int ICTIMESYNCFLAG_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hv_set_host_time ; 
 int /*<<< orphan*/  FUNC1 (struct adj_time_work*) ; 
 struct adj_time_work* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(u64 hosttime, u8 flags)
{
	struct adj_time_work    *wrk;
	static s32 scnt = 50;

	wrk = FUNC2(sizeof(struct adj_time_work), GFP_ATOMIC);
	if (wrk == NULL)
		return;

	wrk->host_time = hosttime;
	if ((flags & ICTIMESYNCFLAG_SYNC) != 0) {
		FUNC0(&wrk->work, hv_set_host_time);
		FUNC3(&wrk->work);
		return;
	}

	if ((flags & ICTIMESYNCFLAG_SAMPLE) != 0 && scnt > 0) {
		scnt--;
		FUNC0(&wrk->work, hv_set_host_time);
		FUNC3(&wrk->work);
	} else
		FUNC1(wrk);
}