#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  type; int /*<<< orphan*/  data2; int /*<<< orphan*/  data1; int /*<<< orphan*/  data0; } ;
typedef  TYPE_1__ pmi_message_t ;
struct TYPE_5__ {int /*<<< orphan*/  msg_mutex; int /*<<< orphan*/ * completion; int /*<<< orphan*/  pmi_spinlock; scalar_t__ pmi_reg; TYPE_1__ msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  PMI_TIMEOUT ; 
 scalar_t__ PMI_WRITE_DATA0 ; 
 scalar_t__ PMI_WRITE_DATA1 ; 
 scalar_t__ PMI_WRITE_DATA2 ; 
 scalar_t__ PMI_WRITE_TYPE ; 
 int /*<<< orphan*/  completion ; 
 TYPE_3__* data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC8(pmi_message_t msg)
{
	unsigned long flags;
	FUNC0(completion);

	if (!data)
		return -ENODEV;

	FUNC2(&data->msg_mutex);

	data->msg = msg;
	FUNC4("pmi_send_message: msg is %08x\n", *(u32*)&msg);

	data->completion = &completion;

	FUNC5(&data->pmi_spinlock, flags);
	FUNC1(msg.data0, data->pmi_reg + PMI_WRITE_DATA0);
	FUNC1(msg.data1, data->pmi_reg + PMI_WRITE_DATA1);
	FUNC1(msg.data2, data->pmi_reg + PMI_WRITE_DATA2);
	FUNC1(msg.type, data->pmi_reg + PMI_WRITE_TYPE);
	FUNC6(&data->pmi_spinlock, flags);

	FUNC4("pmi_send_message: wait for completion\n");

	FUNC7(data->completion,
						  PMI_TIMEOUT);

	data->completion = NULL;

	FUNC3(&data->msg_mutex);

	return 0;
}