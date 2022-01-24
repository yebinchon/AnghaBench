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
struct scsi_device {int dummy; } ;
struct alua_dh_data {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALUA_OPTIMIZE_STPG ; 
 int EINVAL ; 
 int SCSI_DH_OK ; 
 struct alua_dh_data* FUNC0 (struct scsi_device*) ; 
 int FUNC1 (char const*,char*,unsigned int*) ; 

__attribute__((used)) static int FUNC2(struct scsi_device *sdev, const char *params)
{
	struct alua_dh_data *h = FUNC0(sdev);
	unsigned int optimize = 0, argc;
	const char *p = params;
	int result = SCSI_DH_OK;

	if ((FUNC1(params, "%u", &argc) != 1) || (argc != 1))
		return -EINVAL;

	while (*p++)
		;
	if ((FUNC1(p, "%u", &optimize) != 1) || (optimize > 1))
		return -EINVAL;

	if (optimize)
		h->flags |= ALUA_OPTIMIZE_STPG;
	else
		h->flags &= ~ALUA_OPTIMIZE_STPG;

	return result;
}