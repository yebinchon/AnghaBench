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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int opt_hwpoison ; 
 int opt_list ; 
 int opt_no_summary ; 
 scalar_t__ opt_pid ; 
 int opt_raw ; 
 int opt_unpoison ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  opts ; 
 int /*<<< orphan*/  page_size ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

int FUNC14(int argc, char *argv[])
{
	int c;

	page_size = FUNC3();

	while ((c = FUNC2(argc, argv,
				"rp:f:a:b:d:lLNXxh", opts, NULL)) != -1) {
		switch (c) {
		case 'r':
			opt_raw = 1;
			break;
		case 'p':
			FUNC7(optarg);
			break;
		case 'f':
			FUNC6(optarg);
			break;
		case 'a':
			FUNC4(optarg);
			break;
		case 'b':
			FUNC5(optarg);
			break;
		case 'd':
			FUNC0(optarg);
			FUNC1(0);
		case 'l':
			opt_list = 1;
			break;
		case 'L':
			opt_list = 2;
			break;
		case 'N':
			opt_no_summary = 1;
			break;
		case 'X':
			opt_hwpoison = 1;
			FUNC8();
			break;
		case 'x':
			opt_unpoison = 1;
			FUNC8();
			break;
		case 'h':
			FUNC12();
			FUNC1(0);
		default:
			FUNC12();
			FUNC1(1);
		}
	}

	if (opt_list && opt_pid)
		FUNC9("voffset\t");
	if (opt_list == 1)
		FUNC9("offset\tlen\tflags\n");
	if (opt_list == 2)
		FUNC9("offset\tflags\n");

	FUNC13();

	if (opt_list == 1)
		FUNC10(0, 0, 0);  /* drain the buffer */

	if (opt_no_summary)
		return 0;

	if (opt_list)
		FUNC9("\n\n");

	FUNC11();

	return 0;
}