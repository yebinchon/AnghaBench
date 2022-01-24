#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tx ;
typedef  int /*<<< orphan*/  timer_t ;
typedef  int /*<<< orphan*/  timeout ;
struct TYPE_10__ {int nsec; scalar_t__ sec; } ;
struct TYPE_9__ {int sec; scalar_t__ nsec; } ;
struct TYPE_8__ {int tv_sec; } ;
struct TYPE_7__ {int tv_sec; } ;
struct TYPE_11__ {int tv_sec; scalar_t__ tv_usec; } ;
struct timex {TYPE_4__ period; TYPE_3__ start; scalar_t__ index; TYPE_2__ it_value; TYPE_1__ it_interval; scalar_t__ flags; TYPE_5__ time; int /*<<< orphan*/  modes; int /*<<< orphan*/  freq; } ;
struct timespec {int tv_sec; int /*<<< orphan*/  tv_nsec; } ;
struct sigevent {void* sigev_signo; void* sigev_notify; } ;
struct ptp_perout_request {TYPE_4__ period; TYPE_3__ start; scalar_t__ index; TYPE_2__ it_value; TYPE_1__ it_interval; scalar_t__ flags; TYPE_5__ time; int /*<<< orphan*/  modes; int /*<<< orphan*/  freq; } ;
struct ptp_extts_request {TYPE_4__ period; TYPE_3__ start; scalar_t__ index; TYPE_2__ it_value; TYPE_1__ it_interval; scalar_t__ flags; TYPE_5__ time; int /*<<< orphan*/  modes; int /*<<< orphan*/  freq; } ;
struct TYPE_12__ {int /*<<< orphan*/  nsec; int /*<<< orphan*/  sec; } ;
struct ptp_extts_event {int index; TYPE_6__ t; } ;
struct ptp_clock_caps {int max_adj; int n_alarm; int n_ext_ts; int n_per_out; int pps; } ;
struct itimerspec {TYPE_4__ period; TYPE_3__ start; scalar_t__ index; TYPE_2__ it_value; TYPE_1__ it_interval; scalar_t__ flags; TYPE_5__ time; int /*<<< orphan*/  modes; int /*<<< orphan*/  freq; } ;
typedef  int /*<<< orphan*/  perout_request ;
typedef  int /*<<< orphan*/  extts_request ;
typedef  int /*<<< orphan*/  event ;
typedef  scalar_t__ clockid_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADJ_FREQUENCY ; 
 int /*<<< orphan*/  ADJ_SETOFFSET ; 
 scalar_t__ CLOCK_INVALID ; 
 scalar_t__ CLOCK_REALTIME ; 
 char* DEVICE ; 
 int EOF ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  PTP_CLOCK_GETCAPS ; 
 scalar_t__ PTP_ENABLE_FEATURE ; 
 int /*<<< orphan*/  PTP_ENABLE_PPS ; 
 int /*<<< orphan*/  PTP_EXTTS_REQUEST ; 
 int /*<<< orphan*/  PTP_PEROUT_REQUEST ; 
 void* SIGALRM ; 
 void* SIGEV_SIGNAL ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__,struct timex*) ; 
 scalar_t__ FUNC2 (scalar_t__,struct timespec*) ; 
 scalar_t__ FUNC3 (scalar_t__,struct timespec*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (int,char**,char*) ; 
 int /*<<< orphan*/  handle_alarm ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC12 (struct timex*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (char*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int FUNC19 (int,struct ptp_extts_event*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC20 (int /*<<< orphan*/ ) ; 
 char* FUNC21 (char*,char) ; 
 scalar_t__ FUNC22 (scalar_t__,struct sigevent*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timex*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 

int FUNC26(int argc, char *argv[])
{
	struct ptp_clock_caps caps;
	struct ptp_extts_event event;
	struct ptp_extts_request extts_request;
	struct ptp_perout_request perout_request;
	struct timespec ts;
	struct timex tx;

	static timer_t timerid;
	struct itimerspec timeout;
	struct sigevent sigevent;

	char *progname;
	int c, cnt, fd;

	char *device = DEVICE;
	clockid_t clkid;
	int adjfreq = 0x7fffffff;
	int adjtime = 0;
	int capabilities = 0;
	int extts = 0;
	int gettime = 0;
	int oneshot = 0;
	int periodic = 0;
	int perout = -1;
	int pps = -1;
	int settime = 0;

	progname = FUNC21(argv[0], '/');
	progname = progname ? 1+progname : argv[0];
	while (EOF != (c = FUNC9(argc, argv, "a:A:cd:e:f:ghp:P:sSt:v"))) {
		switch (c) {
		case 'a':
			oneshot = FUNC0(optarg);
			break;
		case 'A':
			periodic = FUNC0(optarg);
			break;
		case 'c':
			capabilities = 1;
			break;
		case 'd':
			device = optarg;
			break;
		case 'e':
			extts = FUNC0(optarg);
			break;
		case 'f':
			adjfreq = FUNC0(optarg);
			break;
		case 'g':
			gettime = 1;
			break;
		case 'p':
			perout = FUNC0(optarg);
			break;
		case 'P':
			pps = FUNC0(optarg);
			break;
		case 's':
			settime = 1;
			break;
		case 'S':
			settime = 2;
			break;
		case 't':
			adjtime = FUNC0(optarg);
			break;
		case 'h':
			FUNC25(progname);
			return 0;
		case '?':
		default:
			FUNC25(progname);
			return -1;
		}
	}

	fd = FUNC13(device, O_RDWR);
	if (fd < 0) {
		FUNC7(stderr, "opening %s: %s\n", device, FUNC20(errno));
		return -1;
	}

	clkid = FUNC8(fd);
	if (CLOCK_INVALID == clkid) {
		FUNC7(stderr, "failed to read clock id\n");
		return -1;
	}

	if (capabilities) {
		if (FUNC11(fd, PTP_CLOCK_GETCAPS, &caps)) {
			FUNC15("PTP_CLOCK_GETCAPS");
		} else {
			FUNC17("capabilities:\n"
			       "  %d maximum frequency adjustment (ppb)\n"
			       "  %d programmable alarms\n"
			       "  %d external time stamp channels\n"
			       "  %d programmable periodic signals\n"
			       "  %d pulse per second\n",
			       caps.max_adj,
			       caps.n_alarm,
			       caps.n_ext_ts,
			       caps.n_per_out,
			       caps.pps);
		}
	}

	if (0x7fffffff != adjfreq) {
		FUNC12(&tx, 0, sizeof(tx));
		tx.modes = ADJ_FREQUENCY;
		tx.freq = FUNC16(adjfreq);
		if (FUNC1(clkid, &tx)) {
			FUNC15("clock_adjtime");
		} else {
			FUNC18("frequency adjustment okay");
		}
	}

	if (adjtime) {
		FUNC12(&tx, 0, sizeof(tx));
		tx.modes = ADJ_SETOFFSET;
		tx.time.tv_sec = adjtime;
		tx.time.tv_usec = 0;
		if (FUNC1(clkid, &tx) < 0) {
			FUNC15("clock_adjtime");
		} else {
			FUNC18("time shift okay");
		}
	}

	if (gettime) {
		if (FUNC2(clkid, &ts)) {
			FUNC15("clock_gettime");
		} else {
			FUNC17("clock time: %ld.%09ld or %s",
			       ts.tv_sec, ts.tv_nsec, FUNC5(&ts.tv_sec));
		}
	}

	if (settime == 1) {
		FUNC2(CLOCK_REALTIME, &ts);
		if (FUNC3(clkid, &ts)) {
			FUNC15("clock_settime");
		} else {
			FUNC18("set time okay");
		}
	}

	if (settime == 2) {
		FUNC2(clkid, &ts);
		if (FUNC3(CLOCK_REALTIME, &ts)) {
			FUNC15("clock_settime");
		} else {
			FUNC18("set time okay");
		}
	}

	if (extts) {
		FUNC12(&extts_request, 0, sizeof(extts_request));
		extts_request.index = 0;
		extts_request.flags = PTP_ENABLE_FEATURE;
		if (FUNC11(fd, PTP_EXTTS_REQUEST, &extts_request)) {
			FUNC15("PTP_EXTTS_REQUEST");
			extts = 0;
		} else {
			FUNC18("external time stamp request okay");
		}
		for (; extts; extts--) {
			cnt = FUNC19(fd, &event, sizeof(event));
			if (cnt != sizeof(event)) {
				FUNC15("read");
				break;
			}
			FUNC17("event index %u at %lld.%09u\n", event.index,
			       event.t.sec, event.t.nsec);
			FUNC6(stdout);
		}
		/* Disable the feature again. */
		extts_request.flags = 0;
		if (FUNC11(fd, PTP_EXTTS_REQUEST, &extts_request)) {
			FUNC15("PTP_EXTTS_REQUEST");
		}
	}

	if (oneshot) {
		FUNC10(SIGALRM, handle_alarm);
		/* Create a timer. */
		sigevent.sigev_notify = SIGEV_SIGNAL;
		sigevent.sigev_signo = SIGALRM;
		if (FUNC22(clkid, &sigevent, &timerid)) {
			FUNC15("timer_create");
			return -1;
		}
		/* Start the timer. */
		FUNC12(&timeout, 0, sizeof(timeout));
		timeout.it_value.tv_sec = oneshot;
		if (FUNC24(timerid, 0, &timeout, NULL)) {
			FUNC15("timer_settime");
			return -1;
		}
		FUNC14();
		FUNC23(timerid);
	}

	if (periodic) {
		FUNC10(SIGALRM, handle_alarm);
		/* Create a timer. */
		sigevent.sigev_notify = SIGEV_SIGNAL;
		sigevent.sigev_signo = SIGALRM;
		if (FUNC22(clkid, &sigevent, &timerid)) {
			FUNC15("timer_create");
			return -1;
		}
		/* Start the timer. */
		FUNC12(&timeout, 0, sizeof(timeout));
		timeout.it_interval.tv_sec = periodic;
		timeout.it_value.tv_sec = periodic;
		if (FUNC24(timerid, 0, &timeout, NULL)) {
			FUNC15("timer_settime");
			return -1;
		}
		while (1) {
			FUNC14();
		}
		FUNC23(timerid);
	}

	if (perout >= 0) {
		if (FUNC2(clkid, &ts)) {
			FUNC15("clock_gettime");
			return -1;
		}
		FUNC12(&perout_request, 0, sizeof(perout_request));
		perout_request.index = 0;
		perout_request.start.sec = ts.tv_sec + 2;
		perout_request.start.nsec = 0;
		perout_request.period.sec = 0;
		perout_request.period.nsec = perout;
		if (FUNC11(fd, PTP_PEROUT_REQUEST, &perout_request)) {
			FUNC15("PTP_PEROUT_REQUEST");
		} else {
			FUNC18("periodic output request okay");
		}
	}

	if (pps != -1) {
		int enable = pps ? 1 : 0;
		if (FUNC11(fd, PTP_ENABLE_PPS, enable)) {
			FUNC15("PTP_ENABLE_PPS");
		} else {
			FUNC18("pps for system time request okay");
		}
	}

	FUNC4(fd);
	return 0;
}