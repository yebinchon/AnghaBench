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
struct bnx2i_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2i_conn*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2i_conn*,int) ; 

__attribute__((used)) static void FUNC2(struct bnx2i_conn *bnx2i_conn)
{
	char dummy_rq_data[2];
	FUNC0(bnx2i_conn, dummy_rq_data, 1);
	FUNC1(bnx2i_conn, 1);
}