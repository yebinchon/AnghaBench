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
struct lpfc_vport {int stat_data_blocked; int stat_data_enabled; struct lpfc_hba* phba; } ;
struct lpfc_hba {unsigned long max_vports; unsigned long bucket_type; unsigned long bucket_base; unsigned long bucket_step; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; scalar_t__ hostdata; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 unsigned long LPFC_LINEAR_BUCKET ; 
 int LPFC_MAX_DATA_CTRL_LEN ; 
 unsigned long LPFC_NO_BUCKET ; 
 unsigned long LPFC_POWER2_BUCKET ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*) ; 
 struct lpfc_vport** FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,struct lpfc_vport**) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*) ; 
 struct Scsi_Host* FUNC5 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_vport*) ; 
 unsigned long FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*,int) ; 
 char* FUNC13 (char**,char*) ; 

__attribute__((used)) static ssize_t
FUNC14(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct Scsi_Host  *shost = FUNC0(dev);
	struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
	struct lpfc_hba   *phba = vport->phba;
#define LPFC_MAX_DATA_CTRL_LEN 1024
	static char bucket_data[LPFC_MAX_DATA_CTRL_LEN];
	unsigned long i;
	char *str_ptr, *token;
	struct lpfc_vport **vports;
	struct Scsi_Host *v_shost;
	char *bucket_type_str, *base_str, *step_str;
	unsigned long base, step, bucket_type;

	if (!FUNC12(buf, "setbucket", FUNC11("setbucket"))) {
		if (FUNC11(buf) > (LPFC_MAX_DATA_CTRL_LEN - 1))
			return -EINVAL;

		FUNC10(bucket_data, buf);
		str_ptr = &bucket_data[0];
		/* Ignore this token - this is command token */
		token = FUNC13(&str_ptr, "\t ");
		if (!token)
			return -EINVAL;

		bucket_type_str = FUNC13(&str_ptr, "\t ");
		if (!bucket_type_str)
			return -EINVAL;

		if (!FUNC12(bucket_type_str, "linear", FUNC11("linear")))
			bucket_type = LPFC_LINEAR_BUCKET;
		else if (!FUNC12(bucket_type_str, "power2", FUNC11("power2")))
			bucket_type = LPFC_POWER2_BUCKET;
		else
			return -EINVAL;

		base_str = FUNC13(&str_ptr, "\t ");
		if (!base_str)
			return -EINVAL;
		base = FUNC7(base_str, NULL, 0);

		step_str = FUNC13(&str_ptr, "\t ");
		if (!step_str)
			return -EINVAL;
		step = FUNC7(step_str, NULL, 0);
		if (!step)
			return -EINVAL;

		/* Block the data collection for every vport */
		vports = FUNC2(phba);
		if (vports == NULL)
			return -ENOMEM;

		for (i = 0; i <= phba->max_vports && vports[i] != NULL; i++) {
			v_shost = FUNC5(vports[i]);
			FUNC8(v_shost->host_lock);
			/* Block and reset data collection */
			vports[i]->stat_data_blocked = 1;
			if (vports[i]->stat_data_enabled)
				FUNC6(vports[i]);
			FUNC9(v_shost->host_lock);
		}

		/* Set the bucket attributes */
		phba->bucket_type = bucket_type;
		phba->bucket_base = base;
		phba->bucket_step = step;

		for (i = 0; i <= phba->max_vports && vports[i] != NULL; i++) {
			v_shost = FUNC5(vports[i]);

			/* Unblock data collection */
			FUNC8(v_shost->host_lock);
			vports[i]->stat_data_blocked = 0;
			FUNC9(v_shost->host_lock);
		}
		FUNC3(phba, vports);
		return FUNC11(buf);
	}

	if (!FUNC12(buf, "destroybucket", FUNC11("destroybucket"))) {
		vports = FUNC2(phba);
		if (vports == NULL)
			return -ENOMEM;

		for (i = 0; i <= phba->max_vports && vports[i] != NULL; i++) {
			v_shost = FUNC5(vports[i]);
			FUNC8(shost->host_lock);
			vports[i]->stat_data_blocked = 1;
			FUNC4(vport);
			vport->stat_data_enabled = 0;
			vports[i]->stat_data_blocked = 0;
			FUNC9(shost->host_lock);
		}
		FUNC3(phba, vports);
		phba->bucket_type = LPFC_NO_BUCKET;
		phba->bucket_base = 0;
		phba->bucket_step = 0;
		return FUNC11(buf);
	}

	if (!FUNC12(buf, "start", FUNC11("start"))) {
		/* If no buckets configured return error */
		if (phba->bucket_type == LPFC_NO_BUCKET)
			return -EINVAL;
		FUNC8(shost->host_lock);
		if (vport->stat_data_enabled) {
			FUNC9(shost->host_lock);
			return FUNC11(buf);
		}
		FUNC1(vport);
		vport->stat_data_enabled = 1;
		FUNC9(shost->host_lock);
		return FUNC11(buf);
	}

	if (!FUNC12(buf, "stop", FUNC11("stop"))) {
		FUNC8(shost->host_lock);
		if (vport->stat_data_enabled == 0) {
			FUNC9(shost->host_lock);
			return FUNC11(buf);
		}
		FUNC4(vport);
		vport->stat_data_enabled = 0;
		FUNC9(shost->host_lock);
		return FUNC11(buf);
	}

	if (!FUNC12(buf, "reset", FUNC11("reset"))) {
		if ((phba->bucket_type == LPFC_NO_BUCKET)
			|| !vport->stat_data_enabled)
			return FUNC11(buf);
		FUNC8(shost->host_lock);
		vport->stat_data_blocked = 1;
		FUNC6(vport);
		vport->stat_data_blocked = 0;
		FUNC9(shost->host_lock);
		return FUNC11(buf);
	}
	return -EINVAL;
}