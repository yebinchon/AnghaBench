#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char vq_callback_t ;
typedef  int u32 ;
typedef  char virtqueue ;
struct TYPE_4__ {int max_nr_ports; } ;
struct ports_device {char** in_vqs; char** out_vqs; char* c_ivq; char* c_ovq; TYPE_3__* vdev; TYPE_1__ config; } ;
struct TYPE_6__ {TYPE_2__* config; } ;
struct TYPE_5__ {int (* find_vqs ) (TYPE_3__*,int,char**,char**,char const**) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* control_intr ; 
 char* in_intr ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 char* out_intr ; 
 int FUNC2 (TYPE_3__*,int,char**,char**,char const**) ; 
 scalar_t__ FUNC3 (struct ports_device*) ; 

__attribute__((used)) static int FUNC4(struct ports_device *portdev)
{
	vq_callback_t **io_callbacks;
	char **io_names;
	struct virtqueue **vqs;
	u32 i, j, nr_ports, nr_queues;
	int err;

	nr_ports = portdev->config.max_nr_ports;
	nr_queues = FUNC3(portdev) ? (nr_ports + 1) * 2 : 2;

	vqs = FUNC1(nr_queues * sizeof(struct virtqueue *), GFP_KERNEL);
	io_callbacks = FUNC1(nr_queues * sizeof(vq_callback_t *), GFP_KERNEL);
	io_names = FUNC1(nr_queues * sizeof(char *), GFP_KERNEL);
	portdev->in_vqs = FUNC1(nr_ports * sizeof(struct virtqueue *),
				  GFP_KERNEL);
	portdev->out_vqs = FUNC1(nr_ports * sizeof(struct virtqueue *),
				   GFP_KERNEL);
	if (!vqs || !io_callbacks || !io_names || !portdev->in_vqs ||
	    !portdev->out_vqs) {
		err = -ENOMEM;
		goto free;
	}

	/*
	 * For backward compat (newer host but older guest), the host
	 * spawns a console port first and also inits the vqs for port
	 * 0 before others.
	 */
	j = 0;
	io_callbacks[j] = in_intr;
	io_callbacks[j + 1] = out_intr;
	io_names[j] = "input";
	io_names[j + 1] = "output";
	j += 2;

	if (FUNC3(portdev)) {
		io_callbacks[j] = control_intr;
		io_callbacks[j + 1] = NULL;
		io_names[j] = "control-i";
		io_names[j + 1] = "control-o";

		for (i = 1; i < nr_ports; i++) {
			j += 2;
			io_callbacks[j] = in_intr;
			io_callbacks[j + 1] = out_intr;
			io_names[j] = "input";
			io_names[j + 1] = "output";
		}
	}
	/* Find the queues. */
	err = portdev->vdev->config->find_vqs(portdev->vdev, nr_queues, vqs,
					      io_callbacks,
					      (const char **)io_names);
	if (err)
		goto free;

	j = 0;
	portdev->in_vqs[0] = vqs[0];
	portdev->out_vqs[0] = vqs[1];
	j += 2;
	if (FUNC3(portdev)) {
		portdev->c_ivq = vqs[j];
		portdev->c_ovq = vqs[j + 1];

		for (i = 1; i < nr_ports; i++) {
			j += 2;
			portdev->in_vqs[i] = vqs[j];
			portdev->out_vqs[i] = vqs[j + 1];
		}
	}
	FUNC0(io_names);
	FUNC0(io_callbacks);
	FUNC0(vqs);

	return 0;

free:
	FUNC0(portdev->out_vqs);
	FUNC0(portdev->in_vqs);
	FUNC0(io_names);
	FUNC0(io_callbacks);
	FUNC0(vqs);

	return err;
}