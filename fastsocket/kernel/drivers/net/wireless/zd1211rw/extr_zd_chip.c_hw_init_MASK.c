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
struct zd_chip {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_IFTYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct zd_chip*) ; 
 int FUNC3 (struct zd_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct zd_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct zd_chip*) ; 

__attribute__((used)) static int FUNC7(struct zd_chip *chip)
{
	int r;

	FUNC1(FUNC6(chip), "\n");
	FUNC0(FUNC4(&chip->mutex));
	r = FUNC3(chip);
	if (r)
		return r;

	r = FUNC2(chip);
	if (r)
		return r;

	return FUNC5(chip, 100, 0, NL80211_IFTYPE_UNSPECIFIED);
}