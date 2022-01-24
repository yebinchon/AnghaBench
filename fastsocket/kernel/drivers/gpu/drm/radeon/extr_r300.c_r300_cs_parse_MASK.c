#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct radeon_cs_parser {size_t chunk_ib_idx; TYPE_4__* rdev; int /*<<< orphan*/  idx; TYPE_1__* chunks; struct r100_cs_track* track; } ;
struct radeon_cs_packet {int type; scalar_t__ count; } ;
struct r100_cs_track {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  reg_safe_bm_size; int /*<<< orphan*/  reg_safe_bm; } ;
struct TYPE_7__ {TYPE_2__ r300; } ;
struct TYPE_8__ {TYPE_3__ config; } ;
struct TYPE_5__ {int /*<<< orphan*/  length_dw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  RADEON_PACKET_TYPE0 130 
#define  RADEON_PACKET_TYPE2 129 
#define  RADEON_PACKET_TYPE3 128 
 struct r100_cs_track* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct radeon_cs_parser*,struct radeon_cs_packet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,struct r100_cs_track*) ; 
 int /*<<< orphan*/  r300_packet0_check ; 
 int FUNC4 (struct radeon_cs_parser*,struct radeon_cs_packet*) ; 
 int FUNC5 (struct radeon_cs_parser*,struct radeon_cs_packet*,int /*<<< orphan*/ ) ; 

int FUNC6(struct radeon_cs_parser *p)
{
	struct radeon_cs_packet pkt;
	struct r100_cs_track *track;
	int r;

	track = FUNC1(sizeof(*track), GFP_KERNEL);
	if (track == NULL)
		return -ENOMEM;
	FUNC3(p->rdev, track);
	p->track = track;
	do {
		r = FUNC5(p, &pkt, p->idx);
		if (r) {
			return r;
		}
		p->idx += pkt.count + 2;
		switch (pkt.type) {
		case RADEON_PACKET_TYPE0:
			r = FUNC2(p, &pkt,
						  p->rdev->config.r300.reg_safe_bm,
						  p->rdev->config.r300.reg_safe_bm_size,
						  &r300_packet0_check);
			break;
		case RADEON_PACKET_TYPE2:
			break;
		case RADEON_PACKET_TYPE3:
			r = FUNC4(p, &pkt);
			break;
		default:
			FUNC0("Unknown packet type %d !\n", pkt.type);
			return -EINVAL;
		}
		if (r) {
			return r;
		}
	} while (p->idx < p->chunks[p->chunk_ib_idx].length_dw);
	return 0;
}