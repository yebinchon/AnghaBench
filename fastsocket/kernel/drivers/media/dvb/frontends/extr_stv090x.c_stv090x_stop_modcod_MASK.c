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
struct stv090x_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  MODCODLST0 ; 
 int /*<<< orphan*/  MODCODLST1 ; 
 int /*<<< orphan*/  MODCODLST2 ; 
 int /*<<< orphan*/  MODCODLST3 ; 
 int /*<<< orphan*/  MODCODLST4 ; 
 int /*<<< orphan*/  MODCODLST5 ; 
 int /*<<< orphan*/  MODCODLST6 ; 
 int /*<<< orphan*/  MODCODLST7 ; 
 int /*<<< orphan*/  MODCODLST8 ; 
 int /*<<< orphan*/  MODCODLST9 ; 
 int /*<<< orphan*/  MODCODLSTA ; 
 int /*<<< orphan*/  MODCODLSTB ; 
 int /*<<< orphan*/  MODCODLSTC ; 
 int /*<<< orphan*/  MODCODLSTD ; 
 int /*<<< orphan*/  MODCODLSTE ; 
 int /*<<< orphan*/  MODCODLSTF ; 
 scalar_t__ FUNC0 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int FUNC2(struct stv090x_state *state)
{
	if (FUNC0(state, MODCODLST0, 0xff) < 0)
		goto err;
	if (FUNC0(state, MODCODLST1, 0xff) < 0)
		goto err;
	if (FUNC0(state, MODCODLST2, 0xff) < 0)
		goto err;
	if (FUNC0(state, MODCODLST3, 0xff) < 0)
		goto err;
	if (FUNC0(state, MODCODLST4, 0xff) < 0)
		goto err;
	if (FUNC0(state, MODCODLST5, 0xff) < 0)
		goto err;
	if (FUNC0(state, MODCODLST6, 0xff) < 0)
		goto err;
	if (FUNC0(state, MODCODLST7, 0xff) < 0)
		goto err;
	if (FUNC0(state, MODCODLST8, 0xff) < 0)
		goto err;
	if (FUNC0(state, MODCODLST9, 0xff) < 0)
		goto err;
	if (FUNC0(state, MODCODLSTA, 0xff) < 0)
		goto err;
	if (FUNC0(state, MODCODLSTB, 0xff) < 0)
		goto err;
	if (FUNC0(state, MODCODLSTC, 0xff) < 0)
		goto err;
	if (FUNC0(state, MODCODLSTD, 0xff) < 0)
		goto err;
	if (FUNC0(state, MODCODLSTE, 0xff) < 0)
		goto err;
	if (FUNC0(state, MODCODLSTF, 0xff) < 0)
		goto err;
	return 0;
err:
	FUNC1(FE_ERROR, 1, "I/O error");
	return -1;
}