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
typedef  int u8 ;
struct sas_ha_struct {int num_phys; } ;
struct request {int resid_len; int /*<<< orphan*/  bio; } ;
struct Scsi_Host {TYPE_1__* hostt; } ;
struct TYPE_2__ {int* name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KM_USER0 ; 
 scalar_t__ PAGE_SIZE ; 
 int const SAS_EXPANDER_PRODUCT_ID_LEN ; 
 int const SAS_EXPANDER_VENDOR_ID_LEN ; 
 struct sas_ha_struct* FUNC0 (struct Scsi_Host*) ; 
#define  SMP_CONF_ROUTE_INFO 138 
#define  SMP_DISCOVER 137 
#define  SMP_PHY_CONTROL 136 
#define  SMP_PHY_TEST_FUNCTION 135 
#define  SMP_READ_GPIO_REG 134 
#define  SMP_REPORT_GENERAL 133 
#define  SMP_REPORT_MANUF_INFO 132 
#define  SMP_REPORT_PHY_ERR_LOG 131 
#define  SMP_REPORT_PHY_SATA 130 
#define  SMP_REPORT_ROUTE_INFO 129 
 int SMP_REQUEST ; 
 int SMP_RESPONSE ; 
 int SMP_RESP_FUNC_ACC ; 
 int SMP_RESP_FUNC_UNK ; 
 int SMP_RESP_INV_FRM_LEN ; 
#define  SMP_WRITE_GPIO_REG 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int const FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ) ; 
 int* FUNC8 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int const FUNC11 (int const,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct sas_ha_struct*,int*,int) ; 
 int FUNC14 (struct sas_ha_struct*,int*,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct sas_ha_struct*,int,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct sas_ha_struct*,int*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct Scsi_Host*,char*) ; 

int FUNC18(struct Scsi_Host *shost, struct request *req,
			 struct request *rsp)
{
	u8 *req_data = NULL, *resp_data = NULL, *buf;
	struct sas_ha_struct *sas_ha = FUNC0(shost);
	int error = -EINVAL;

	/* eight is the minimum size for request and response frames */
	if (FUNC3(req) < 8 || FUNC3(rsp) < 8)
		goto out;

	if (FUNC1(req->bio) + FUNC3(req) > PAGE_SIZE ||
	    FUNC1(rsp->bio) + FUNC3(rsp) > PAGE_SIZE) {
		FUNC17(KERN_ERR, shost,
			"SMP request/response frame crosses page boundary");
		goto out;
	}

	req_data = FUNC8(FUNC3(req), GFP_KERNEL);

	/* make sure frame can always be built ... we copy
	 * back only the requested length */
	resp_data = FUNC8(FUNC11(FUNC3(rsp), 128U), GFP_KERNEL);

	if (!req_data || !resp_data) {
		error = -ENOMEM;
		goto out;
	}

	FUNC9();
	buf = FUNC6(FUNC2(req->bio), KM_USER0) + FUNC1(req->bio);
	FUNC12(req_data, buf, FUNC3(req));
	FUNC7(buf - FUNC1(req->bio), KM_USER0);
	FUNC10();

	if (req_data[0] != SMP_REQUEST)
		goto out;

	/* always succeeds ... even if we can't process the request
	 * the result is in the response frame */
	error = 0;

	/* set up default don't know response */
	resp_data[0] = SMP_RESPONSE;
	resp_data[1] = req_data[1];
	resp_data[2] = SMP_RESP_FUNC_UNK;

	switch (req_data[1]) {
	case SMP_REPORT_GENERAL:
		req->resid_len -= 8;
		rsp->resid_len -= 32;
		resp_data[2] = SMP_RESP_FUNC_ACC;
		resp_data[9] = sas_ha->num_phys;
		break;

	case SMP_REPORT_MANUF_INFO:
		req->resid_len -= 8;
		rsp->resid_len -= 64;
		resp_data[2] = SMP_RESP_FUNC_ACC;
		FUNC12(resp_data + 12, shost->hostt->name,
		       SAS_EXPANDER_VENDOR_ID_LEN);
		FUNC12(resp_data + 20, "libsas virt phy",
		       SAS_EXPANDER_PRODUCT_ID_LEN);
		break;

	case SMP_READ_GPIO_REG:
		/* FIXME: need GPIO support in the transport class */
		break;

	case SMP_DISCOVER:
		req->resid_len -= 16;
		if ((int)req->resid_len < 0) {
			req->resid_len = 0;
			error = -EINVAL;
			goto out;
		}
		rsp->resid_len -= 56;
		FUNC13(sas_ha, resp_data, req_data[9]);
		break;

	case SMP_REPORT_PHY_ERR_LOG:
		/* FIXME: could implement this with additional
		 * libsas callbacks providing the HW supports it */
		break;

	case SMP_REPORT_PHY_SATA:
		req->resid_len -= 16;
		if ((int)req->resid_len < 0) {
			req->resid_len = 0;
			error = -EINVAL;
			goto out;
		}
		rsp->resid_len -= 60;
		FUNC16(sas_ha, resp_data, req_data[9]);
		break;

	case SMP_REPORT_ROUTE_INFO:
		/* Can't implement; hosts have no routes */
		break;

	case SMP_WRITE_GPIO_REG: {
		/* SFF-8485 v0.7 */
		const int base_frame_size = 11;
		int to_write = req_data[4];

		if (FUNC3(req) < base_frame_size + to_write * 4 ||
		    req->resid_len < base_frame_size + to_write * 4) {
			resp_data[2] = SMP_RESP_INV_FRM_LEN;
			break;
		}

		to_write = FUNC14(sas_ha, resp_data, req_data[2],
						   req_data[3], to_write, &req_data[8]);
		req->resid_len -= base_frame_size + to_write * 4;
		rsp->resid_len -= 8;
		break;
	}

	case SMP_CONF_ROUTE_INFO:
		/* Can't implement; hosts have no routes */
		break;

	case SMP_PHY_CONTROL:
		req->resid_len -= 44;
		if ((int)req->resid_len < 0) {
			req->resid_len = 0;
			error = -EINVAL;
			goto out;
		}
		rsp->resid_len -= 8;
		FUNC15(sas_ha, req_data[9], req_data[10],
				req_data[32] >> 4, req_data[33] >> 4,
				resp_data);
		break;

	case SMP_PHY_TEST_FUNCTION:
		/* FIXME: should this be implemented? */
		break;

	default:
		/* probably a 2.0 function */
		break;
	}

	FUNC9();
	buf = FUNC6(FUNC2(rsp->bio), KM_USER0) + FUNC1(rsp->bio);
	FUNC12(buf, resp_data, FUNC3(rsp));
	FUNC4(FUNC2(rsp->bio));
	FUNC7(buf - FUNC1(rsp->bio), KM_USER0);
	FUNC10();

 out:
	FUNC5(req_data);
	FUNC5(resp_data);
	return error;
}