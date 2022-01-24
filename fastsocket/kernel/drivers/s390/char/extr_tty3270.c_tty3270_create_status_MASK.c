#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int cols; int rows; int /*<<< orphan*/  dev; } ;
struct tty3270 {TYPE_1__ view; struct string* status; int /*<<< orphan*/  freemem; } ;
struct string {scalar_t__ string; } ;
typedef  int /*<<< orphan*/  blueprint ;

/* Variables and functions */
#define  TAC_GREEN 134 
#define  TAC_RESET 133 
#define  TAT_COLOR 132 
#define  TF_LOG 131 
#define  TO_SA 130 
#define  TO_SBA 129 
#define  TO_SF 128 
 struct string* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 

__attribute__((used)) static void
FUNC3(struct tty3270 * tp)
{
	static const unsigned char blueprint[] =
		{ TO_SBA, 0, 0, TO_SF, TF_LOG, TO_SA, TAT_COLOR, TAC_GREEN,
		  0, 0, 0, 0, 0, 0, 0, TO_SF, TF_LOG, TO_SA, TAT_COLOR,
		  TAC_RESET };
	struct string *line;
	unsigned int offset;

	line = FUNC0(&tp->freemem,sizeof(blueprint));
	tp->status = line;
	/* Copy blueprint to status line */
	FUNC1(line->string, blueprint, sizeof(blueprint));
	/* Set address to start of status string (= last 9 characters). */
	offset = tp->view.cols * tp->view.rows - 9;
	FUNC2(tp->view.dev, line->string + 1, offset);
}