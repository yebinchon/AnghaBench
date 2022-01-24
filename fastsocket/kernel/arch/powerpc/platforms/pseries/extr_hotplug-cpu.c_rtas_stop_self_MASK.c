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
struct rtas_args {scalar_t__ token; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RTAS_UNKNOWN_SERVICE ; 
 int /*<<< orphan*/  FUNC1 (struct rtas_args*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtas_args rtas_stop_self_args ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(void)
{
	struct rtas_args *args = &rtas_stop_self_args;

	FUNC4();

	FUNC0(args->token == RTAS_UNKNOWN_SERVICE);

	FUNC6("cpu %u (hwid %u) Ready to die...\n",
	       FUNC7(), FUNC3());
	FUNC2(FUNC1(args));

	FUNC5("Alas, I survived.\n");
}