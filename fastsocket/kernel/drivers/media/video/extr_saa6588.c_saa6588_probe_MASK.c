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
struct v4l2_subdev {int dummy; } ;
struct saa6588 {int buf_size; int last_blocknum; int /*<<< orphan*/  work; scalar_t__ data_available_for_read; int /*<<< orphan*/  read_queue; scalar_t__ rd_index; scalar_t__ wr_index; scalar_t__ block_count; int /*<<< orphan*/  lock; struct v4l2_subdev sd; int /*<<< orphan*/ * buffer; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int bufblocks ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct saa6588*) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct saa6588* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct saa6588*) ; 
 int /*<<< orphan*/  saa6588_ops ; 
 int /*<<< orphan*/  saa6588_work ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct saa6588 *s;
	struct v4l2_subdev *sd;

	FUNC9(client, "saa6588 found @ 0x%x (%s)\n",
			client->addr << 1, client->adapter->name);

	s = FUNC4(sizeof(*s), GFP_KERNEL);
	if (s == NULL)
		return -ENOMEM;

	s->buf_size = bufblocks * 3;

	s->buffer = FUNC3(s->buf_size, GFP_KERNEL);
	if (s->buffer == NULL) {
		FUNC2(s);
		return -ENOMEM;
	}
	sd = &s->sd;
	FUNC8(sd, client, &saa6588_ops);
	FUNC7(&s->lock);
	s->block_count = 0;
	s->wr_index = 0;
	s->rd_index = 0;
	s->last_blocknum = 0xff;
	FUNC1(&s->read_queue);
	s->data_available_for_read = 0;

	FUNC5(s);

	/* start polling via eventd */
	FUNC0(&s->work, saa6588_work);
	FUNC6(&s->work, 0);
	return 0;
}