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
struct ti_ohci {int /*<<< orphan*/  host; int /*<<< orphan*/  no_swap_incoming; } ;
struct dma_rcv_ctx {unsigned int buf_ind; unsigned int buf_offset; int** buf_cpu; unsigned int buf_size; int ctx; int split_buf_size; unsigned int num_desc; char* spb; int /*<<< orphan*/  lock; TYPE_1__** prg_cpu; int /*<<< orphan*/  ctrlClear; scalar_t__ ohci; } ;
typedef  int quadlet_t ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_INFO ; 
 unsigned char OHCI1394_TCODE_PHY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_rcv_ctx*,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ti_ohci*,int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (struct dma_rcv_ctx*,unsigned int,int*,unsigned int,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,unsigned char,int,int,int) ; 

__attribute__((used)) static void FUNC13 (unsigned long data)
{
	struct dma_rcv_ctx *d = (struct dma_rcv_ctx*)data;
	struct ti_ohci *ohci = (struct ti_ohci*)(d->ohci);
	unsigned int split_left, idx, offset, rescount;
	unsigned char tcode;
	int length, bytes_left, ack;
	unsigned long flags;
	quadlet_t *buf_ptr;
	char *split_ptr;
	char msg[256];

	FUNC10(&d->lock, flags);

	idx = d->buf_ind;
	offset = d->buf_offset;
	buf_ptr = d->buf_cpu[idx] + offset/4;

	rescount = FUNC6(d->prg_cpu[idx]->status) & 0xffff;
	bytes_left = d->buf_size - rescount - offset;

	while (bytes_left > 0) {
		tcode = (FUNC2(buf_ptr[0], ohci->no_swap_incoming) >> 4) & 0xf;

		/* packet_length() will return < 4 for an error */
		length = FUNC9(d, idx, buf_ptr, offset, tcode, ohci->no_swap_incoming);

		if (length < 4) { /* something is wrong */
			FUNC12(msg,"Unexpected tcode 0x%x(0x%08x) in AR ctx=%d, length=%d",
				tcode, FUNC2(buf_ptr[0], ohci->no_swap_incoming),
				d->ctx, length);
			FUNC8(ohci, d->ctrlClear, msg);
			FUNC11(&d->lock, flags);
			return;
		}

		/* The first case is where we have a packet that crosses
		 * over more than one descriptor. The next case is where
		 * it's all in the first descriptor.  */
		if ((offset + length) > d->buf_size) {
			FUNC0("Split packet rcv'd");
			if (length > d->split_buf_size) {
				FUNC8(ohci, d->ctrlClear,
					     "Split packet size exceeded");
				d->buf_ind = idx;
				d->buf_offset = offset;
				FUNC11(&d->lock, flags);
				return;
			}

			if (FUNC6(d->prg_cpu[(idx+1)%d->num_desc]->status)
			    == d->buf_size) {
				/* Other part of packet not written yet.
				 * this should never happen I think
				 * anyway we'll get it on the next call.  */
				FUNC1(KERN_INFO,
				      "Got only half a packet!");
				d->buf_ind = idx;
				d->buf_offset = offset;
				FUNC11(&d->lock, flags);
				return;
			}

			split_left = length;
			split_ptr = (char *)d->spb;
			FUNC7(split_ptr,buf_ptr,d->buf_size-offset);
			split_left -= d->buf_size-offset;
			split_ptr += d->buf_size-offset;
			FUNC5(d, idx);
			idx = (idx+1) % d->num_desc;
			buf_ptr = d->buf_cpu[idx];
			offset=0;

			while (split_left >= d->buf_size) {
				FUNC7(split_ptr,buf_ptr,d->buf_size);
				split_ptr += d->buf_size;
				split_left -= d->buf_size;
				FUNC5(d, idx);
				idx = (idx+1) % d->num_desc;
				buf_ptr = d->buf_cpu[idx];
			}

			if (split_left > 0) {
				FUNC7(split_ptr, buf_ptr, split_left);
				offset = split_left;
				buf_ptr += offset/4;
			}
		} else {
			FUNC0("Single packet rcv'd");
			FUNC7(d->spb, buf_ptr, length);
			offset += length;
			buf_ptr += length/4;
			if (offset==d->buf_size) {
				FUNC5(d, idx);
				idx = (idx+1) % d->num_desc;
				buf_ptr = d->buf_cpu[idx];
				offset=0;
			}
		}

		/* We get one phy packet to the async descriptor for each
		 * bus reset. We always ignore it.  */
		if (tcode != OHCI1394_TCODE_PHY) {
			if (!ohci->no_swap_incoming)
				FUNC3(d->spb, tcode);
			FUNC0("Packet received from node"
				" %d ack=0x%02X spd=%d tcode=0x%X"
				" length=%d ctx=%d tlabel=%d",
				(d->spb[1]>>16)&0x3f,
				(FUNC2(d->spb[length/4-1], ohci->no_swap_incoming)>>16)&0x1f,
				(FUNC2(d->spb[length/4-1], ohci->no_swap_incoming)>>21)&0x3,
				tcode, length, d->ctx,
				(d->spb[0]>>10)&0x3f);

			ack = (((FUNC2(d->spb[length/4-1], ohci->no_swap_incoming)>>16)&0x1f)
				== 0x11) ? 1 : 0;

			FUNC4(ohci->host, d->spb,
					     length-4, ack);
		}
#ifdef OHCI1394_DEBUG
		else
			PRINT (KERN_DEBUG, "Got phy packet ctx=%d ... discarded",
			       d->ctx);
#endif

	       	rescount = FUNC6(d->prg_cpu[idx]->status) & 0xffff;

		bytes_left = d->buf_size - rescount - offset;

	}

	d->buf_ind = idx;
	d->buf_offset = offset;

	FUNC11(&d->lock, flags);
}