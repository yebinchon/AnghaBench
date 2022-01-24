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
typedef  unsigned int u_int ;
typedef  unsigned char u_char ;

/* Variables and functions */
 unsigned char GCS_2 ; 
 unsigned int PO_READ ; 
 unsigned char PO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*) ; 

__attribute__((used)) static inline u_char
FUNC1(unsigned int ale, unsigned long adr, u_char off)
{
	register u_int ret;
	unsigned int *po = (unsigned int *) adr;	/* Postoffice */

	*po = (GCS_2 | PO_WRITE | off);
	FUNC0(po);
	*po = (ale | PO_READ);
	FUNC0(po);
	ret = *po;
	return ((unsigned char) ret);
}