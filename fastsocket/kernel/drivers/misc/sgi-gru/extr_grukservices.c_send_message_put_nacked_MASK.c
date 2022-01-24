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
struct gru_message_queue_desc {int mq_gpa; int /*<<< orphan*/  interrupt_vector; int /*<<< orphan*/  interrupt_apicid; int /*<<< orphan*/  interrupt_pnode; } ;

/* Variables and functions */
 int CBS_IDLE ; 
 int /*<<< orphan*/  IAA_REGISTER ; 
 int /*<<< orphan*/  IMA ; 
 int MQE_OK ; 
 int MQE_UNEXPECTED_CB_ERR ; 
 int /*<<< orphan*/  UVH_IPI_INT ; 
 int /*<<< orphan*/  XTYPE_CL ; 
 int /*<<< orphan*/  dest_Fixed ; 
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (void*) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void *cb, struct gru_message_queue_desc *mqd,
			void *mesg, int lines)
{
	unsigned long m, *val = mesg, gpa, save;
	int ret;

	m = mqd->mq_gpa + (FUNC0(cb) << 6);
	if (lines == 2) {
		FUNC2(cb, m, 0, XTYPE_CL, lines, 1, IMA);
		if (FUNC5(cb) != CBS_IDLE)
			return MQE_UNEXPECTED_CB_ERR;
	}
	FUNC3(cb, m, FUNC1(mesg), XTYPE_CL, lines, 1, IMA);
	if (FUNC5(cb) != CBS_IDLE)
		return MQE_UNEXPECTED_CB_ERR;

	if (!mqd->interrupt_vector)
		return MQE_OK;

	/*
	 * Send a cross-partition interrupt to the SSI that contains the target
	 * message queue. Normally, the interrupt is automatically delivered by
	 * hardware but some error conditions require explicit delivery.
	 * Use the GRU to deliver the interrupt. Otherwise partition failures
	 * could cause unrecovered errors.
	 */
	gpa = FUNC6(mqd->interrupt_pnode, UVH_IPI_INT);
	save = *val;
	*val = FUNC7(mqd->interrupt_apicid, mqd->interrupt_vector,
				dest_Fixed);
	FUNC4(cb, gpa, FUNC1(mesg), IAA_REGISTER, IMA);
	ret = FUNC5(cb);
	*val = save;
	if (ret != CBS_IDLE)
		return MQE_UNEXPECTED_CB_ERR;
	return MQE_OK;
}