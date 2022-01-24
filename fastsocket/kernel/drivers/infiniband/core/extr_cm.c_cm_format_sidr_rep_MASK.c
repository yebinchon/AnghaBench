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
struct ib_cm_sidr_rep_param {scalar_t__ private_data_len; scalar_t__ private_data; scalar_t__ info_length; scalar_t__ info; int /*<<< orphan*/  qkey; int /*<<< orphan*/  qp_num; int /*<<< orphan*/  status; } ;
struct cm_sidr_rep_msg {int /*<<< orphan*/  private_data; int /*<<< orphan*/  info; int /*<<< orphan*/  qkey; int /*<<< orphan*/  service_id; int /*<<< orphan*/  status; int /*<<< orphan*/  request_id; int /*<<< orphan*/  hdr; } ;
struct TYPE_2__ {int /*<<< orphan*/  service_id; int /*<<< orphan*/  remote_id; } ;
struct cm_id_private {TYPE_1__ id; int /*<<< orphan*/  tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_SIDR_REP_ATTR_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cm_sidr_rep_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct cm_sidr_rep_msg *sidr_rep_msg,
			       struct cm_id_private *cm_id_priv,
			       struct ib_cm_sidr_rep_param *param)
{
	FUNC0(&sidr_rep_msg->hdr, CM_SIDR_REP_ATTR_ID,
			  cm_id_priv->tid);
	sidr_rep_msg->request_id = cm_id_priv->id.remote_id;
	sidr_rep_msg->status = param->status;
	FUNC1(sidr_rep_msg, FUNC2(param->qp_num));
	sidr_rep_msg->service_id = cm_id_priv->id.service_id;
	sidr_rep_msg->qkey = FUNC2(param->qkey);

	if (param->info && param->info_length)
		FUNC3(sidr_rep_msg->info, param->info, param->info_length);

	if (param->private_data && param->private_data_len)
		FUNC3(sidr_rep_msg->private_data, param->private_data,
		       param->private_data_len);
}