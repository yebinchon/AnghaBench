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
typedef  unsigned char u8 ;
struct seq_file {TYPE_1__* private; } ;
struct hfa384x_hostscan_result {unsigned char* sup_rates; unsigned char* ssid; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  atim; int /*<<< orphan*/  bssid; int /*<<< orphan*/  rate; int /*<<< orphan*/  capability; int /*<<< orphan*/  beacon_interval; int /*<<< orphan*/  sl; int /*<<< orphan*/  anl; int /*<<< orphan*/  chid; } ;
typedef  int /*<<< orphan*/  s16 ;
struct TYPE_2__ {struct hfa384x_hostscan_result* last_scan_results; } ;
typedef  TYPE_1__ local_info_t ;

/* Variables and functions */
 void* SEQ_START_TOKEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, void *v)
{
	local_info_t *local = m->private;
	unsigned long entry;
	int i, len;
	struct hfa384x_hostscan_result *scanres;
	u8 *p;

	if (v == SEQ_START_TOKEN) {
		FUNC1(m,
			   "CHID ANL SL BcnInt Capab Rate BSSID ATIM SupRates SSID\n");
		return 0;
	}

	entry = (unsigned long)v - 2;
	scanres = &local->last_scan_results[entry];

	FUNC1(m, "%d %d %d %d 0x%02x %d %pM %d ",
		   FUNC0(scanres->chid),
		   (s16) FUNC0(scanres->anl),
		   (s16) FUNC0(scanres->sl),
		   FUNC0(scanres->beacon_interval),
		   FUNC0(scanres->capability),
		   FUNC0(scanres->rate),
		   scanres->bssid,
		   FUNC0(scanres->atim));

	p = scanres->sup_rates;
	for (i = 0; i < sizeof(scanres->sup_rates); i++) {
		if (p[i] == 0)
			break;
		FUNC1(m, "<%02x>", p[i]);
	}
	FUNC2(m, ' ');

	p = scanres->ssid;
	len = FUNC0(scanres->ssid_len);
	if (len > 32)
		len = 32;
	for (i = 0; i < len; i++) {
		unsigned char c = p[i];
		if (c >= 32 && c < 127)
			FUNC2(m, c);
		else
			FUNC1(m, "<%02x>", c);
	}
	FUNC2(m, '\n');
	return 0;
}