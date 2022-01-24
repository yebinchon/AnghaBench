#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dasd_uid {char* vduit; char* vendor; char* serial; int ssid; int real_unit_addr; } ;
struct dasd_path {int opm; int npm; int ppm; } ;
struct dasd_eckd_private {void* conf_data; int conf_len; struct dasd_uid uid; } ;
struct dasd_device {TYPE_1__* cdev; struct dasd_path path_data; scalar_t__ private; } ;
typedef  int /*<<< orphan*/  print_path_uid ;
typedef  int /*<<< orphan*/  print_device_uid ;
typedef  int __u8 ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DASD_ECKD_RCD_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct dasd_device*,struct dasd_eckd_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*) ; 
 scalar_t__ FUNC4 (struct dasd_eckd_private*) ; 
 int FUNC5 (void*,int) ; 
 int FUNC6 (struct dasd_device*,void**,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*,char*,int,int,...) ; 
 scalar_t__ FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(struct dasd_device *device)
{
	void *conf_data;
	int conf_len, conf_data_saved;
	int rc, path_err;
	__u8 lpm, opm;
	struct dasd_eckd_private *private, path_private;
	struct dasd_path *path_data;
	struct dasd_uid *uid;
	char print_path_uid[60], print_device_uid[60];

	private = (struct dasd_eckd_private *) device->private;
	path_data = &device->path_data;
	opm = FUNC1(device->cdev);
	conf_data_saved = 0;
	path_err = 0;
	/* get configuration data per operational path */
	for (lpm = 0x80; lpm; lpm>>= 1) {
		if (!(lpm & opm))
			continue;
		rc = FUNC6(device, &conf_data,
					     &conf_len, lpm);
		if (rc && rc != -EOPNOTSUPP) {	/* -EOPNOTSUPP is ok */
			FUNC0(DBF_WARNING, device->cdev,
					"Read configuration data returned "
					"error %d", rc);
			return rc;
		}
		if (conf_data == NULL) {
			FUNC0(DBF_WARNING, device->cdev, "%s",
					"No configuration data "
					"retrieved");
			/* no further analysis possible */
			path_data->opm |= lpm;
			continue;	/* no error */
		}
		/* save first valid configuration data */
		if (!conf_data_saved) {
			FUNC8(private->conf_data);
			private->conf_data = conf_data;
			private->conf_len = conf_len;
			if (FUNC4(private)) {
				private->conf_data = NULL;
				private->conf_len = 0;
				FUNC8(conf_data);
				continue;
			}
			/*
			 * build device UID that other path data
			 * can be compared to it
			 */
			FUNC3(device);
			conf_data_saved++;
		} else {
			path_private.conf_data = conf_data;
			path_private.conf_len = DASD_ECKD_RCD_DATA_SIZE;
			if (FUNC4(
				    &path_private)) {
				path_private.conf_data = NULL;
				path_private.conf_len = 0;
				FUNC8(conf_data);
				continue;
			}

			if (FUNC2(
				    device, &path_private)) {
				uid = &path_private.uid;
				if (FUNC10(uid->vduit) > 0)
					FUNC9(print_path_uid,
						 sizeof(print_path_uid),
						 "%s.%s.%04x.%02x.%s",
						 uid->vendor, uid->serial,
						 uid->ssid, uid->real_unit_addr,
						 uid->vduit);
				else
					FUNC9(print_path_uid,
						 sizeof(print_path_uid),
						 "%s.%s.%04x.%02x",
						 uid->vendor, uid->serial,
						 uid->ssid,
						 uid->real_unit_addr);
				uid = &private->uid;
				if (FUNC10(uid->vduit) > 0)
					FUNC9(print_device_uid,
						 sizeof(print_device_uid),
						 "%s.%s.%04x.%02x.%s",
						 uid->vendor, uid->serial,
						 uid->ssid, uid->real_unit_addr,
						 uid->vduit);
				else
					FUNC9(print_device_uid,
						 sizeof(print_device_uid),
						 "%s.%s.%04x.%02x",
						 uid->vendor, uid->serial,
						 uid->ssid,
						 uid->real_unit_addr);
				FUNC7(&device->cdev->dev,
					"Not all channel paths lead to "
					"the same device, path %02X leads to "
					"device %s instead of %s\n", lpm,
					print_path_uid, print_device_uid);
				path_err = -EINVAL;
				continue;
			}

			path_private.conf_data = NULL;
			path_private.conf_len = 0;
		}
		switch (FUNC5(conf_data, conf_len)) {
		case 0x02:
			path_data->npm |= lpm;
			break;
		case 0x03:
			path_data->ppm |= lpm;
			break;
		}
		path_data->opm |= lpm;

		if (conf_data != private->conf_data)
			FUNC8(conf_data);
	}

	return path_err;
}