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
struct chsc_response_struct {int /*<<< orphan*/  data; } ;
struct chp_id {int dummy; } ;
struct channel_path_desc {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct chp_id,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct chsc_response_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct chsc_response_struct*) ; 
 struct chsc_response_struct* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct channel_path_desc*,int /*<<< orphan*/ *,int) ; 

int FUNC4(struct chp_id chpid,
					  struct channel_path_desc *desc)
{
	struct chsc_response_struct *chsc_resp;
	int ret;

	chsc_resp = FUNC2(sizeof(*chsc_resp), GFP_KERNEL);
	if (!chsc_resp)
		return -ENOMEM;
	ret = FUNC0(chpid, 0, 0, 0, 0, chsc_resp);
	if (ret)
		goto out_free;
	FUNC3(desc, &chsc_resp->data, sizeof(*desc));
out_free:
	FUNC1(chsc_resp);
	return ret;
}