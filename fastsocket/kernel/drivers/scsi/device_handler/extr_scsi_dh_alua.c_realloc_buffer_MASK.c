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
struct alua_dh_data {scalar_t__ buff; scalar_t__ inq; unsigned int bufflen; } ;

/* Variables and functions */
 unsigned int ALUA_INQUIRY_SIZE ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct alua_dh_data *h, unsigned len)
{
	if (h->buff && h->buff != h->inq)
		FUNC0(h->buff);

	h->buff = FUNC1(len, GFP_NOIO);
	if (!h->buff) {
		h->buff = h->inq;
		h->bufflen = ALUA_INQUIRY_SIZE;
		return 1;
	}
	h->bufflen = len;
	return 0;
}