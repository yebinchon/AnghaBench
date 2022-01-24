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
typedef  int u32 ;
struct pvr2_hdw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PVR2_TRACE_DEBUGIFC ; 
 unsigned int FUNC0 (char const*,unsigned int,char const**,unsigned int*) ; 
 scalar_t__ FUNC1 (char const*,unsigned int,char*) ; 
 int FUNC2 (char const*,unsigned int,int*) ; 
 int FUNC3 (struct pvr2_hdw*) ; 
 int FUNC4 (struct pvr2_hdw*) ; 
 int FUNC5 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC6 (struct pvr2_hdw*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pvr2_hdw*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC9 (struct pvr2_hdw*) ; 
 int FUNC10 (struct pvr2_hdw*,int,int) ; 
 int FUNC11 (struct pvr2_hdw*,int,int) ; 
 int FUNC12 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,unsigned int,char const*) ; 
 int FUNC15 (struct pvr2_hdw*) ; 

__attribute__((used)) static int FUNC16(struct pvr2_hdw *hdw,const char *buf,
				unsigned int count)
{
	const char *wptr;
	unsigned int wlen;
	unsigned int scnt;

	scnt = FUNC0(buf,count,&wptr,&wlen);
	if (!scnt) return 0;
	count -= scnt; buf += scnt;
	if (!wptr) return 0;

	FUNC14(PVR2_TRACE_DEBUGIFC,"debugifc cmd: \"%.*s\"",wlen,wptr);
	if (FUNC1(wptr,wlen,"reset")) {
		scnt = FUNC0(buf,count,&wptr,&wlen);
		if (!scnt) return -EINVAL;
		count -= scnt; buf += scnt;
		if (!wptr) return -EINVAL;
		if (FUNC1(wptr,wlen,"cpu")) {
			FUNC7(hdw,!0);
			FUNC7(hdw,0);
			return 0;
		} else if (FUNC1(wptr,wlen,"bus")) {
			FUNC8(hdw);
		} else if (FUNC1(wptr,wlen,"soft")) {
			return FUNC5(hdw);
		} else if (FUNC1(wptr,wlen,"deep")) {
			return FUNC4(hdw);
		} else if (FUNC1(wptr,wlen,"firmware")) {
			return FUNC15(hdw);
		} else if (FUNC1(wptr,wlen,"decoder")) {
			return FUNC3(hdw);
		} else if (FUNC1(wptr,wlen,"worker")) {
			return FUNC12(hdw);
		} else if (FUNC1(wptr,wlen,"usbstats")) {
			FUNC13(FUNC9(hdw),
					      NULL, !0);
			return 0;
		}
		return -EINVAL;
	} else if (FUNC1(wptr,wlen,"cpufw")) {
		scnt = FUNC0(buf,count,&wptr,&wlen);
		if (!scnt) return -EINVAL;
		count -= scnt; buf += scnt;
		if (!wptr) return -EINVAL;
		if (FUNC1(wptr,wlen,"fetch")) {
			scnt = FUNC0(buf,count,&wptr,&wlen);
			if (scnt && wptr) {
				count -= scnt; buf += scnt;
				if (FUNC1(wptr, wlen,
							   "prom")) {
					FUNC6(hdw, 2, !0);
				} else if (FUNC1(wptr, wlen,
								  "ram8k")) {
					FUNC6(hdw, 0, !0);
				} else if (FUNC1(wptr, wlen,
								  "ram16k")) {
					FUNC6(hdw, 1, !0);
				} else {
					return -EINVAL;
				}
			}
			FUNC6(hdw,0,!0);
			return 0;
		} else if (FUNC1(wptr,wlen,"done")) {
			FUNC6(hdw,0,0);
			return 0;
		} else {
			return -EINVAL;
		}
	} else if (FUNC1(wptr,wlen,"gpio")) {
		int dir_fl = 0;
		int ret;
		u32 msk,val;
		scnt = FUNC0(buf,count,&wptr,&wlen);
		if (!scnt) return -EINVAL;
		count -= scnt; buf += scnt;
		if (!wptr) return -EINVAL;
		if (FUNC1(wptr,wlen,"dir")) {
			dir_fl = !0;
		} else if (!FUNC1(wptr,wlen,"out")) {
			return -EINVAL;
		}
		scnt = FUNC0(buf,count,&wptr,&wlen);
		if (!scnt) return -EINVAL;
		count -= scnt; buf += scnt;
		if (!wptr) return -EINVAL;
		ret = FUNC2(wptr,wlen,&msk);
		if (ret) return ret;
		scnt = FUNC0(buf,count,&wptr,&wlen);
		if (wptr) {
			ret = FUNC2(wptr,wlen,&val);
			if (ret) return ret;
		} else {
			val = msk;
			msk = 0xffffffff;
		}
		if (dir_fl) {
			ret = FUNC10(hdw,msk,val);
		} else {
			ret = FUNC11(hdw,msk,val);
		}
		return ret;
	}
	FUNC14(PVR2_TRACE_DEBUGIFC,
		   "debugifc failed to recognize cmd: \"%.*s\"",wlen,wptr);
	return -EINVAL;
}