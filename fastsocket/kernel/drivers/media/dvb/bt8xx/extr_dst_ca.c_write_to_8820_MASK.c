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
typedef  int /*<<< orphan*/  u8 ;
struct dst_state {int dummy; } ;
struct ca_msg {int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_CA_ERROR ; 
 int /*<<< orphan*/  DST_CA_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC1 (struct dst_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_state*) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static int FUNC3(struct dst_state *state, struct ca_msg *hw_buffer, u8 length, u8 reply)
{
	if ((FUNC1(state, hw_buffer->msg, length, hw_buffer->msg, reply)) < 0) {
		FUNC0(verbose, DST_CA_ERROR, 1, " DST-CI Command failed.");
		FUNC0(verbose, DST_CA_NOTICE, 1, " Resetting DST.");
		FUNC2(state);
		return -1;
	}
	FUNC0(verbose, DST_CA_NOTICE, 1, " DST-CI Command success.");

	return 0;
}