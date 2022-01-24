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
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  dword ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,unsigned short) ; 

void FUNC3(byte bus, byte func, int offset, void *data, int length,
	      void *pci_dev_handle)
{
	struct pci_dev *dev = (struct pci_dev *) pci_dev_handle;

	switch (length) {
	case 1:		/* byte */
		FUNC0(dev, offset,
				      *(unsigned char *) data);
		break;
	case 2:		/* word */
		FUNC2(dev, offset,
				      *(unsigned short *) data);
		break;
	case 4:		/* dword */
		FUNC1(dev, offset,
				       *(unsigned int *) data);
		break;

	default:		/* buffer */
		if (!(length % 4) && !(length & 0x03)) {	/* Copy as dword */
			dword *p = (dword *) data;
			length /= 4;

			while (length--) {
				FUNC1(dev, offset,
						       *(unsigned int *)
						       p++);
			}
		} else {	/* copy as byte stream */
			byte *p = (byte *) data;

			while (length--) {
				FUNC0(dev, offset,
						      *(unsigned char *)
						      p++);
			}
		}
	}
}