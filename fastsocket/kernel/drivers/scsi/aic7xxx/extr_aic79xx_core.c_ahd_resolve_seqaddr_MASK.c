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
typedef  scalar_t__ u_int ;
struct patch {int dummy; } ;
struct ahd_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,struct patch const**,scalar_t__,scalar_t__*) ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 struct patch* patches ; 

__attribute__((used)) static u_int
FUNC2(struct ahd_softc *ahd, u_int address)
{
	const struct patch *cur_patch;
	int address_offset;
	u_int skip_addr;
	u_int i;

	address_offset = 0;
	cur_patch = patches;
	skip_addr = 0;

	for (i = 0; i < address;) {

		FUNC0(ahd, &cur_patch, i, &skip_addr);

		if (skip_addr > i) {
			int end_addr;

			end_addr = FUNC1(address, skip_addr);
			address_offset += end_addr - i;
			i = skip_addr;
		} else {
			i++;
		}
	}
	return (address - address_offset);
}