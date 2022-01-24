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
struct qeth_card {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct qeth_card*) ; 
 unsigned int FUNC1 (struct qeth_card*) ; 
 unsigned int FUNC2 (struct qeth_card*) ; 
 char* _ascebc ; 

__attribute__((used)) static void FUNC3(struct qeth_card *card,
		char *param_field)
{

	param_field[0] = _ascebc['P'];
	param_field[1] = _ascebc['C'];
	param_field[2] = _ascebc['I'];
	param_field[3] = _ascebc['T'];
	*((unsigned int *) (&param_field[4])) = FUNC0(card);
	*((unsigned int *) (&param_field[8])) = FUNC1(card);
	*((unsigned int *) (&param_field[12])) = FUNC2(card);
}