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
typedef  char u8 ;
struct seq_file {scalar_t__ private; } ;
typedef  int /*<<< orphan*/  ide_drive_t ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC6(struct seq_file *m, void *v)
{
	ide_drive_t *drive = (ide_drive_t *)m->private;
	u8 *buf;

	if (!drive) {
		FUNC4(m, '\n');
		return 0;
	}

	buf = FUNC1(SECTOR_SIZE, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;
	if (FUNC5(drive, buf) == 0) {
		__le16 *val = (__le16 *)buf;
		int i;

		for (i = 0; i < SECTOR_SIZE / 2; i++) {
			FUNC3(m, "%04x%c", FUNC2(val[i]),
					(i % 8) == 7 ? '\n' : ' ');
		}
	} else
		FUNC4(m, buf[0]);
	FUNC0(buf);
	return 0;
}