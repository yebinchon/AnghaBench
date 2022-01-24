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
typedef  int /*<<< orphan*/  u8 ;
struct uvd {int /*<<< orphan*/  dp; } ;
typedef  int __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/ * marker ; 

__attribute__((used)) static int FUNC3(struct uvd *uvd, u8 *cdata, int framelen)
{
	int datalen;
	int totaldata;
	struct framehdr {
		__be16 id;
		__be16 len;
	};
	struct framehdr *fhdr;

	totaldata = 0;
	while (framelen) {
		fhdr = (struct framehdr *) cdata;
		datalen = FUNC1(fhdr->len);
		framelen -= 4;
		cdata += 4;

		if ((fhdr->id) == FUNC2(0x8001)) {
			FUNC0(&uvd->dp, marker, 4);
			totaldata += 4;
			continue;
		}
		if ((fhdr->id & FUNC2(0xFF00)) == FUNC2(0x0200)) {
			FUNC0(&uvd->dp, cdata, datalen);
			totaldata += datalen;
		}
		framelen -= datalen;
		cdata += datalen;
	}
	return totaldata;
}