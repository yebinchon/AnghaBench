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
struct hpsb_host {int dummy; } ;
struct hpsb_highlevel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hpsb_highlevel*,struct hpsb_host*,int) ; 

__attribute__((used)) static int FUNC1(struct hpsb_host *host, void *__data)
{
	struct hpsb_highlevel *hl = __data;

	FUNC0(hl, host, 1);
	return 0;
}