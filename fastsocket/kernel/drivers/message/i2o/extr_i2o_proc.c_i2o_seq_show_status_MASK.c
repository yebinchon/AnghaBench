#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seq_file {scalar_t__ private; } ;
struct TYPE_3__ {TYPE_2__* virt; } ;
struct i2o_controller {TYPE_1__ status_block; } ;
struct TYPE_4__ {int org_id; int i2o_version; int iop_id; int host_unit_id; int segment_number; int iop_state; int msg_type; int inbound_frame_size; int max_inbound_frames; int cur_inbound_frames; int max_outbound_frames; int expected_lct_size; int iop_capabilities; int desired_mem_size; int current_mem_size; int current_mem_base; int desired_io_size; int current_io_size; int current_io_base; int /*<<< orphan*/  product_id; } ;
typedef  TYPE_2__ i2o_status_block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2o_controller*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, void *v)
{
	struct i2o_controller *c = (struct i2o_controller *)seq->private;
	char prodstr[25];
	int version;
	i2o_status_block *sb = c->status_block.virt;

	FUNC0(c);	// reread the status block

	FUNC2(seq, "Organization ID        : %0#6x\n", sb->org_id);

	version = sb->i2o_version;

/* FIXME for Spec 2.0
	if (version == 0x02) {
		seq_printf(seq, "Lowest I2O version supported: ");
		switch(workspace[2]) {
			case 0x00:
				seq_printf(seq, "1.0\n");
				break;
			case 0x01:
				seq_printf(seq, "1.5\n");
				break;
			case 0x02:
				seq_printf(seq, "2.0\n");
				break;
		}

		seq_printf(seq, "Highest I2O version supported: ");
		switch(workspace[3]) {
			case 0x00:
				seq_printf(seq, "1.0\n");
				break;
			case 0x01:
				seq_printf(seq, "1.5\n");
				break;
			case 0x02:
				seq_printf(seq, "2.0\n");
				break;
		}
	}
*/
	FUNC2(seq, "IOP ID                 : %0#5x\n", sb->iop_id);
	FUNC2(seq, "Host Unit ID           : %0#6x\n", sb->host_unit_id);
	FUNC2(seq, "Segment Number         : %0#5x\n", sb->segment_number);

	FUNC2(seq, "I2O version            : ");
	switch (version) {
	case 0x00:
		FUNC2(seq, "1.0\n");
		break;
	case 0x01:
		FUNC2(seq, "1.5\n");
		break;
	case 0x02:
		FUNC2(seq, "2.0\n");
		break;
	default:
		FUNC2(seq, "Unknown version\n");
	}

	FUNC2(seq, "IOP State              : ");
	switch (sb->iop_state) {
	case 0x01:
		FUNC2(seq, "INIT\n");
		break;

	case 0x02:
		FUNC2(seq, "RESET\n");
		break;

	case 0x04:
		FUNC2(seq, "HOLD\n");
		break;

	case 0x05:
		FUNC2(seq, "READY\n");
		break;

	case 0x08:
		FUNC2(seq, "OPERATIONAL\n");
		break;

	case 0x10:
		FUNC2(seq, "FAILED\n");
		break;

	case 0x11:
		FUNC2(seq, "FAULTED\n");
		break;

	default:
		FUNC2(seq, "Unknown\n");
		break;
	}

	FUNC2(seq, "Messenger Type         : ");
	switch (sb->msg_type) {
	case 0x00:
		FUNC2(seq, "Memory mapped\n");
		break;
	case 0x01:
		FUNC2(seq, "Memory mapped only\n");
		break;
	case 0x02:
		FUNC2(seq, "Remote only\n");
		break;
	case 0x03:
		FUNC2(seq, "Memory mapped and remote\n");
		break;
	default:
		FUNC2(seq, "Unknown\n");
	}

	FUNC2(seq, "Inbound Frame Size     : %d bytes\n",
		   sb->inbound_frame_size << 2);
	FUNC2(seq, "Max Inbound Frames     : %d\n",
		   sb->max_inbound_frames);
	FUNC2(seq, "Current Inbound Frames : %d\n",
		   sb->cur_inbound_frames);
	FUNC2(seq, "Max Outbound Frames    : %d\n",
		   sb->max_outbound_frames);

	/* Spec doesn't say if NULL terminated or not... */
	FUNC1(prodstr, sb->product_id, 24);
	prodstr[24] = '\0';
	FUNC2(seq, "Product ID             : %s\n", prodstr);
	FUNC2(seq, "Expected LCT Size      : %d bytes\n",
		   sb->expected_lct_size);

	FUNC2(seq, "IOP Capabilities\n");
	FUNC2(seq, "    Context Field Size Support : ");
	switch (sb->iop_capabilities & 0x0000003) {
	case 0:
		FUNC2(seq, "Supports only 32-bit context fields\n");
		break;
	case 1:
		FUNC2(seq, "Supports only 64-bit context fields\n");
		break;
	case 2:
		FUNC2(seq, "Supports 32-bit and 64-bit context fields, "
			   "but not concurrently\n");
		break;
	case 3:
		FUNC2(seq, "Supports 32-bit and 64-bit context fields "
			   "concurrently\n");
		break;
	default:
		FUNC2(seq, "0x%08x\n", sb->iop_capabilities);
	}
	FUNC2(seq, "    Current Context Field Size : ");
	switch (sb->iop_capabilities & 0x0000000C) {
	case 0:
		FUNC2(seq, "not configured\n");
		break;
	case 4:
		FUNC2(seq, "Supports only 32-bit context fields\n");
		break;
	case 8:
		FUNC2(seq, "Supports only 64-bit context fields\n");
		break;
	case 12:
		FUNC2(seq, "Supports both 32-bit or 64-bit context fields "
			   "concurrently\n");
		break;
	default:
		FUNC2(seq, "\n");
	}
	FUNC2(seq, "    Inbound Peer Support       : %s\n",
		   (sb->
		    iop_capabilities & 0x00000010) ? "Supported" :
		   "Not supported");
	FUNC2(seq, "    Outbound Peer Support      : %s\n",
		   (sb->
		    iop_capabilities & 0x00000020) ? "Supported" :
		   "Not supported");
	FUNC2(seq, "    Peer to Peer Support       : %s\n",
		   (sb->
		    iop_capabilities & 0x00000040) ? "Supported" :
		   "Not supported");

	FUNC2(seq, "Desired private memory size   : %d kB\n",
		   sb->desired_mem_size >> 10);
	FUNC2(seq, "Allocated private memory size : %d kB\n",
		   sb->current_mem_size >> 10);
	FUNC2(seq, "Private memory base address   : %0#10x\n",
		   sb->current_mem_base);
	FUNC2(seq, "Desired private I/O size      : %d kB\n",
		   sb->desired_io_size >> 10);
	FUNC2(seq, "Allocated private I/O size    : %d kB\n",
		   sb->current_io_size >> 10);
	FUNC2(seq, "Private I/O base address      : %0#10x\n",
		   sb->current_io_base);

	return 0;
}