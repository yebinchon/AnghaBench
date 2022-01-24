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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct b43legacy_plcp_hdr4 {int* raw; int /*<<< orphan*/  data; } ;
typedef  int __u8 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int const B43legacy_CCK_RATE_11MB ; 
 int /*<<< orphan*/  FUNC0 (int const) ; 
 scalar_t__ FUNC1 (int const) ; 
 int FUNC2 (int const) ; 
 int FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(struct b43legacy_plcp_hdr4 *plcp,
				 const u16 octets, const u8 bitrate)
{
	__le32 *data = &(plcp->data);
	__u8 *raw = plcp->raw;

	if (FUNC1(bitrate)) {
		u16 d;

		d = FUNC3(bitrate);
		FUNC0(octets & 0xF000);
		d |= (octets << 5);
		*data = FUNC4(d);
	} else {
		u32 plen;

		plen = octets * 16 / bitrate;
		if ((octets * 16 % bitrate) > 0) {
			plen++;
			if ((bitrate == B43legacy_CCK_RATE_11MB)
			    && ((octets * 8 % 11) < 4))
				raw[1] = 0x84;
			else
				raw[1] = 0x04;
		} else
			raw[1] = 0x04;
		*data |= FUNC4(plen << 16);
		raw[0] = FUNC2(bitrate);
	}
}