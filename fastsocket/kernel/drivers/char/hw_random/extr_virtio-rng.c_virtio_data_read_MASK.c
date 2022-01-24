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
typedef  int /*<<< orphan*/  u32 ;
struct hwrng {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int data_left ; 
 int /*<<< orphan*/  have_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * random_data ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct hwrng *rng, u32 *data)
{
	FUNC0(data_left < sizeof(u32));
	data_left -= sizeof(u32);
	*data = random_data[data_left / 4];

	if (data_left < sizeof(u32)) {
		FUNC1(&have_data);
		FUNC2();
	}
	return sizeof(*data);
}