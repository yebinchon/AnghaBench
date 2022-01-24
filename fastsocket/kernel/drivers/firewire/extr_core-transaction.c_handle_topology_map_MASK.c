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
struct fw_request {int dummy; } ;
struct fw_card {int /*<<< orphan*/ * topology_map; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {unsigned long long start; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCODE_ADDRESS_ERROR ; 
 int /*<<< orphan*/  RCODE_COMPLETE ; 
 int /*<<< orphan*/  RCODE_TYPE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_card*,struct fw_request*,int /*<<< orphan*/ ) ; 
 TYPE_1__ topology_map_region ; 

__attribute__((used)) static void FUNC3(struct fw_card *card, struct fw_request *request,
		int tcode, int destination, int source, int generation,
		int speed, unsigned long long offset,
		void *payload, size_t length, void *callback_data)
{
	int i, start, end;
	__be32 *map;

	if (!FUNC0(tcode)) {
		FUNC2(card, request, RCODE_TYPE_ERROR);
		return;
	}

	if ((offset & 3) > 0 || (length & 3) > 0) {
		FUNC2(card, request, RCODE_ADDRESS_ERROR);
		return;
	}

	start = (offset - topology_map_region.start) / 4;
	end = start + length / 4;
	map = payload;

	for (i = 0; i < length / 4; i++)
		map[i] = FUNC1(card->topology_map[start + i]);

	FUNC2(card, request, RCODE_COMPLETE);
}