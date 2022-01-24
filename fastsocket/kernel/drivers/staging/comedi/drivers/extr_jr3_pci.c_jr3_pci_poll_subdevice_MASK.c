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
typedef  void* u16 ;
struct transform_t {TYPE_4__* link; } ;
struct six_axis_t {int /*<<< orphan*/  mz; int /*<<< orphan*/  my; int /*<<< orphan*/  mx; int /*<<< orphan*/  fz; int /*<<< orphan*/  fy; int /*<<< orphan*/  fx; } ;
struct poll_delay_t {int dummy; } ;
struct jr3_pci_subdev_private {int errors; int state; int retries; TYPE_2__* range; void* serial_no; void* model_no; int /*<<< orphan*/  channel_no; struct jr3_channel* channel; } ;
struct TYPE_7__ {int /*<<< orphan*/  mz; int /*<<< orphan*/  my; int /*<<< orphan*/  mx; int /*<<< orphan*/  fz; int /*<<< orphan*/  fy; int /*<<< orphan*/  fx; } ;
struct force_array {int /*<<< orphan*/  v2; int /*<<< orphan*/  v1; int /*<<< orphan*/  mz; int /*<<< orphan*/  my; int /*<<< orphan*/  mx; int /*<<< orphan*/  fz; int /*<<< orphan*/  fy; int /*<<< orphan*/  fx; } ;
struct jr3_channel {TYPE_3__ offsets; struct force_array full_scale; int /*<<< orphan*/  serial_no; int /*<<< orphan*/  model_no; int /*<<< orphan*/  errors; } ;
struct comedi_subdevice {struct jr3_pci_subdev_private* private; } ;
typedef  enum link_types { ____Placeholder_link_types } link_types ;
struct TYPE_8__ {int link_type; int /*<<< orphan*/  link_amount; } ;
struct TYPE_5__ {int min; int max; } ;
struct TYPE_6__ {TYPE_1__ range; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 struct six_axis_t FUNC1 (struct jr3_channel volatile*) ; 
 struct six_axis_t FUNC2 (struct jr3_channel volatile*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct jr3_channel volatile*) ; 
 struct poll_delay_t FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int sensor_change ; 
 int /*<<< orphan*/  FUNC8 (struct jr3_channel volatile*,struct six_axis_t) ; 
 int /*<<< orphan*/  FUNC9 (struct jr3_channel volatile*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct jr3_channel volatile*,struct transform_t,int /*<<< orphan*/ ) ; 
#define  state_jr3_done 133 
#define  state_jr3_init_set_full_scale_complete 132 
#define  state_jr3_init_transform_complete 131 
#define  state_jr3_init_use_offset_complete 130 
#define  state_jr3_init_wait_for_offset 129 
#define  state_jr3_poll 128 
 int /*<<< orphan*/  FUNC12 (struct jr3_channel volatile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct jr3_channel volatile*,int /*<<< orphan*/ ) ; 
 int watch_dog ; 
 int watch_dog2 ; 

__attribute__((used)) static struct poll_delay_t FUNC14(struct comedi_subdevice *s)
{
	struct poll_delay_t result = FUNC6(1000, 2000);
	struct jr3_pci_subdev_private *p = s->private;
	int i;

	if (p) {
		volatile struct jr3_channel *channel = p->channel;
		int errors = FUNC4(&channel->errors);

		if (errors != p->errors) {
			FUNC7("Errors: %x -> %x\n", p->errors, errors);
			p->errors = errors;
		}
		if (errors & (watch_dog | watch_dog2 | sensor_change)) {
			/*  Sensor communication lost, force poll mode */
			p->state = state_jr3_poll;

		}
		switch (p->state) {
		case state_jr3_poll:{
				u16 model_no = FUNC4(&channel->model_no);
				u16 serial_no = FUNC4(&channel->serial_no);
				if ((errors & (watch_dog | watch_dog2)) ||
				    model_no == 0 || serial_no == 0) {
/*
 * Still no sensor, keep on polling. Since it takes up to 10 seconds
 * for offsets to stabilize, polling each second should suffice.
 */
					result = FUNC6(1000, 2000);
				} else {
					p->retries = 0;
					p->state =
					    state_jr3_init_wait_for_offset;
					result = FUNC6(1000, 2000);
				}
			}
			break;
		case state_jr3_init_wait_for_offset:{
				p->retries++;
				if (p->retries < 10) {
					/*  Wait for offeset to stabilize (< 10 s according to manual) */
					result = FUNC6(1000, 2000);
				} else {
					struct transform_t transf;

					p->model_no =
					    FUNC4(&channel->model_no);
					p->serial_no =
					    FUNC4(&channel->serial_no);

					FUNC7
					    ("Setting transform for channel %d\n",
					     p->channel_no);
					FUNC7("Sensor Model     = %i\n",
					       p->model_no);
					FUNC7("Sensor Serial    = %i\n",
					       p->serial_no);

					/*  Transformation all zeros */
					for (i = 0; i < FUNC0(transf.link); i++) {
						transf.link[i].link_type =
							(enum link_types)0;
						transf.link[i].link_amount = 0;
					}

					FUNC11(channel, transf, 0);
					FUNC13(channel, 0);
					p->state =
					    state_jr3_init_transform_complete;
					result = FUNC6(20, 100);	/*  Allow 20 ms for completion */
				}
			} break;
		case state_jr3_init_transform_complete:{
				if (!FUNC5(channel)) {
					FUNC7
					    ("state_jr3_init_transform_complete complete = %d\n",
					     FUNC5(channel));
					result = FUNC6(20, 100);
				} else {
					/*  Set full scale */
					struct six_axis_t min_full_scale;
					struct six_axis_t max_full_scale;

					min_full_scale =
					    FUNC2(channel);
					FUNC7("Obtained Min. Full Scales:\n");
					FUNC7("%i   ", (min_full_scale).fx);
					FUNC7("%i   ", (min_full_scale).fy);
					FUNC7("%i   ", (min_full_scale).fz);
					FUNC7("%i   ", (min_full_scale).mx);
					FUNC7("%i   ", (min_full_scale).my);
					FUNC7("%i   ", (min_full_scale).mz);
					FUNC7("\n");

					max_full_scale =
					    FUNC1(channel);
					FUNC7("Obtained Max. Full Scales:\n");
					FUNC7("%i   ", (max_full_scale).fx);
					FUNC7("%i   ", (max_full_scale).fy);
					FUNC7("%i   ", (max_full_scale).fz);
					FUNC7("%i   ", (max_full_scale).mx);
					FUNC7("%i   ", (max_full_scale).my);
					FUNC7("%i   ", (max_full_scale).mz);
					FUNC7("\n");

					FUNC8(channel,
							max_full_scale);

					p->state =
					    state_jr3_init_set_full_scale_complete;
					result = FUNC6(20, 100);	/*  Allow 20 ms for completion */
				}
			}
			break;
		case state_jr3_init_set_full_scale_complete:{
				if (!FUNC5(channel)) {
					FUNC7
					    ("state_jr3_init_set_full_scale_complete complete = %d\n",
					     FUNC5(channel));
					result = FUNC6(20, 100);
				} else {
					volatile struct force_array *full_scale;

					/*  Use ranges in kN or we will overflow arount 2000N! */
					full_scale = &channel->full_scale;
					p->range[0].range.min =
					    -FUNC3(&full_scale->fx) * 1000;
					p->range[0].range.max =
					    FUNC3(&full_scale->fx) * 1000;
					p->range[1].range.min =
					    -FUNC3(&full_scale->fy) * 1000;
					p->range[1].range.max =
					    FUNC3(&full_scale->fy) * 1000;
					p->range[2].range.min =
					    -FUNC3(&full_scale->fz) * 1000;
					p->range[2].range.max =
					    FUNC3(&full_scale->fz) * 1000;
					p->range[3].range.min =
					    -FUNC3(&full_scale->mx) * 100;
					p->range[3].range.max =
					    FUNC3(&full_scale->mx) * 100;
					p->range[4].range.min =
					    -FUNC3(&full_scale->my) * 100;
					p->range[4].range.max =
					    FUNC3(&full_scale->my) * 100;
					p->range[5].range.min =
					    -FUNC3(&full_scale->mz) * 100;
					p->range[5].range.max =
					    FUNC3(&full_scale->mz) * 100;
					p->range[6].range.min = -FUNC3(&full_scale->v1) * 100;	/*  ?? */
					p->range[6].range.max = FUNC3(&full_scale->v1) * 100;	/*  ?? */
					p->range[7].range.min = -FUNC3(&full_scale->v2) * 100;	/*  ?? */
					p->range[7].range.max = FUNC3(&full_scale->v2) * 100;	/*  ?? */
					p->range[8].range.min = 0;
					p->range[8].range.max = 65535;

					{
						int i;
						for (i = 0; i < 9; i++) {
							FUNC7("%d %d - %d\n",
							       i,
							       p->
							       range[i].range.
							       min,
							       p->
							       range[i].range.
							       max);
						}
					}

					FUNC12(channel, 0);
					p->state =
					    state_jr3_init_use_offset_complete;
					result = FUNC6(40, 100);	/*  Allow 40 ms for completion */
				}
			}
			break;
		case state_jr3_init_use_offset_complete:{
				if (!FUNC5(channel)) {
					FUNC7
					    ("state_jr3_init_use_offset_complete complete = %d\n",
					     FUNC5(channel));
					result = FUNC6(20, 100);
				} else {
					FUNC7
					    ("Default offsets %d %d %d %d %d %d\n",
					     FUNC3(&channel->offsets.fx),
					     FUNC3(&channel->offsets.fy),
					     FUNC3(&channel->offsets.fz),
					     FUNC3(&channel->offsets.mx),
					     FUNC3(&channel->offsets.my),
					     FUNC3(&channel->offsets.mz));

					FUNC10(&channel->offsets.fx, 0);
					FUNC10(&channel->offsets.fy, 0);
					FUNC10(&channel->offsets.fz, 0);
					FUNC10(&channel->offsets.mx, 0);
					FUNC10(&channel->offsets.my, 0);
					FUNC10(&channel->offsets.mz, 0);

					FUNC9(channel);

					p->state = state_jr3_done;
				}
			}
			break;
		case state_jr3_done:{
				FUNC6(10000, 20000);
			}
			break;
		default:{
				FUNC6(1000, 2000);
			}
			break;
		}
	}
	return result;
}