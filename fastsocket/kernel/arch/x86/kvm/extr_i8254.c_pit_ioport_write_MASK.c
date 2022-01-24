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
typedef  int u32 ;
struct kvm_kpit_state {int /*<<< orphan*/  lock; struct kvm_kpit_channel_state* channels; } ;
struct kvm_pit {struct kvm* kvm; struct kvm_kpit_state pit_state; } ;
struct kvm_kpit_channel_state {int rw_mode; int read_state; int write_state; int mode; int bcd; int write_latch; } ;
struct kvm_io_device {int dummy; } ;
struct kvm {int dummy; } ;
typedef  int gpa_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int KVM_PIT_CHANNEL_MASK ; 
#define  RW_STATE_LSB 131 
#define  RW_STATE_MSB 130 
#define  RW_STATE_WORD0 129 
#define  RW_STATE_WORD1 128 
 struct kvm_pit* FUNC0 (struct kvm_io_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int,int,int) ; 

__attribute__((used)) static int FUNC8(struct kvm_io_device *this,
			    gpa_t addr, int len, const void *data)
{
	struct kvm_pit *pit = FUNC0(this);
	struct kvm_kpit_state *pit_state = &pit->pit_state;
	struct kvm *kvm = pit->kvm;
	int channel, access;
	struct kvm_kpit_channel_state *s;
	u32 val = *(u32 *) data;
	if (!FUNC3(addr))
		return -EOPNOTSUPP;

	val  &= 0xff;
	addr &= KVM_PIT_CHANNEL_MASK;

	FUNC1(&pit_state->lock);

	if (val != 0)
		FUNC7("pit: write addr is 0x%x, len is %d, val is 0x%x\n",
			  (unsigned int)addr, len, val);

	if (addr == 3) {
		channel = val >> 6;
		if (channel == 3) {
			/* Read-Back Command. */
			for (channel = 0; channel < 3; channel++) {
				s = &pit_state->channels[channel];
				if (val & (2 << channel)) {
					if (!(val & 0x20))
						FUNC4(kvm, channel);
					if (!(val & 0x10))
						FUNC5(kvm, channel);
				}
			}
		} else {
			/* Select Counter <channel>. */
			s = &pit_state->channels[channel];
			access = (val >> 4) & KVM_PIT_CHANNEL_MASK;
			if (access == 0) {
				FUNC4(kvm, channel);
			} else {
				s->rw_mode = access;
				s->read_state = access;
				s->write_state = access;
				s->mode = (val >> 1) & 7;
				if (s->mode > 5)
					s->mode -= 4;
				s->bcd = val & 1;
			}
		}
	} else {
		/* Write Count. */
		s = &pit_state->channels[addr];
		switch (s->write_state) {
		default:
		case RW_STATE_LSB:
			FUNC6(kvm, addr, val);
			break;
		case RW_STATE_MSB:
			FUNC6(kvm, addr, val << 8);
			break;
		case RW_STATE_WORD0:
			s->write_latch = val;
			s->write_state = RW_STATE_WORD1;
			break;
		case RW_STATE_WORD1:
			FUNC6(kvm, addr, s->write_latch | (val << 8));
			s->write_state = RW_STATE_WORD0;
			break;
		}
	}

	FUNC2(&pit_state->lock);
	return 0;
}