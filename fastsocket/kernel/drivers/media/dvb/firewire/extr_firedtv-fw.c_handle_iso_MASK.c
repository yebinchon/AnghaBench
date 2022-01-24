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
struct fw_iso_context {int dummy; } ;
struct firedtv_receive_context {int current_packet; char** pages; } ;
struct firedtv {int /*<<< orphan*/  device; int /*<<< orphan*/  demux; struct firedtv_receive_context* backend_data; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ CIP_HEADER_SIZE ; 
 int MAX_PACKET_SIZE ; 
 scalar_t__ MPEG2_TS_HEADER_SIZE ; 
 int /*<<< orphan*/  MPEG2_TS_SOURCE_PACKET_SIZE ; 
 int N_PACKETS ; 
 int PACKETS_PER_PAGE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (struct firedtv_receive_context*,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct fw_iso_context *context, u32 cycle,
		       size_t header_length, void *header, void *data)
{
	struct firedtv *fdtv = data;
	struct firedtv_receive_context *ctx = fdtv->backend_data;
	__be32 *h, *h_end;
	int length, err, i = ctx->current_packet;
	char *p, *p_end;

	for (h = header, h_end = h + header_length / 4; h < h_end; h++) {
		length = FUNC0(h) >> 16;
		if (FUNC4(length > MAX_PACKET_SIZE)) {
			FUNC1(fdtv->device, "length = %d\n", length);
			length = MAX_PACKET_SIZE;
		}

		p = ctx->pages[i / PACKETS_PER_PAGE]
				+ (i % PACKETS_PER_PAGE) * MAX_PACKET_SIZE;
		p_end = p + length;

		for (p += CIP_HEADER_SIZE + MPEG2_TS_HEADER_SIZE; p < p_end;
		     p += MPEG2_TS_SOURCE_PACKET_SIZE)
			FUNC2(&fdtv->demux, p, 1);

		err = FUNC3(ctx, i);
		if (FUNC4(err))
			FUNC1(fdtv->device, "requeue failed\n");

		i = (i + 1) & (N_PACKETS - 1);
	}
	ctx->current_packet = i;
}