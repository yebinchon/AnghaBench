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
typedef  int /*<<< orphan*/  u32 ;
struct i2400m_bcf_hdr {unsigned int module_type; int /*<<< orphan*/  size; int /*<<< orphan*/  date; int /*<<< orphan*/  module_vendor; int /*<<< orphan*/  module_id; int /*<<< orphan*/  header_version; int /*<<< orphan*/  header_len; } ;
struct i2400m {int /*<<< orphan*/  fw_name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,size_t,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,unsigned int,...) ; 
 struct device* FUNC2 (struct i2400m*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC4(struct i2400m *i2400m,
		    const struct i2400m_bcf_hdr *bcf,
		    size_t bcf_size)
{
	int result;
	struct device *dev = FUNC2(i2400m);
	unsigned module_type, header_len, major_version, minor_version,
		module_id, module_vendor, date, size;

	/* Check hard errors */
	result = -EINVAL;
	if (bcf_size < sizeof(*bcf)) {	/* big enough header? */
		FUNC1(dev, "firmware %s too short: "
			"%zu B vs %zu (at least) expected\n",
			i2400m->fw_name, bcf_size, sizeof(*bcf));
		goto error;
	}

	module_type = bcf->module_type;
	header_len = sizeof(u32) * FUNC3(bcf->header_len);
	major_version = FUNC3(bcf->header_version) & 0xffff0000 >> 16;
	minor_version = FUNC3(bcf->header_version) & 0x0000ffff;
	module_id = FUNC3(bcf->module_id);
	module_vendor = FUNC3(bcf->module_vendor);
	date = FUNC3(bcf->date);
	size = sizeof(u32) * FUNC3(bcf->size);

	if (bcf_size != size) {		/* annoyingly paranoid */
		FUNC1(dev, "firmware %s: bad size, got "
			"%zu B vs %u expected\n",
			i2400m->fw_name, bcf_size, size);
		goto error;
	}

	FUNC0(2, dev, "type 0x%x id 0x%x vendor 0x%x; header v%u.%u (%zu B) "
		 "date %08x (%zu B)\n",
		 module_type, module_id, module_vendor,
		 major_version, minor_version, (size_t) header_len,
		 date, (size_t) size);

	if (module_type != 6) {		/* built for the right hardware? */
		FUNC1(dev, "bad fw %s: unexpected module type 0x%x; "
			"aborting\n", i2400m->fw_name, module_type);
		goto error;
	}

	/* Check soft-er errors */
	result = 0;
	if (module_vendor != 0x8086)
		FUNC1(dev, "bad fw %s? unexpected vendor 0x%04x\n",
			i2400m->fw_name, module_vendor);
	if (date < 0x20080300)
		FUNC1(dev, "bad fw %s? build date too old %08x\n",
			i2400m->fw_name, date);
error:
	return result;
}