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
struct pcmcia_socket {size_t fake_cis_len; int /*<<< orphan*/ * fake_cis; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t const CISTPL_MAX_CIS_SIZE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (size_t const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t const) ; 

int FUNC4(struct pcmcia_socket *s,
		       const u8 *data, const size_t len)
{
	if (len > CISTPL_MAX_CIS_SIZE) {
		FUNC0(KERN_WARNING, &s->dev, "replacement CIS too big\n");
		return -EINVAL;
	}
	FUNC1(s->fake_cis);
	s->fake_cis = FUNC2(len, GFP_KERNEL);
	if (s->fake_cis == NULL) {
		FUNC0(KERN_WARNING, &s->dev, "no memory to replace CIS\n");
		return -ENOMEM;
	}
	s->fake_cis_len = len;
	FUNC3(s->fake_cis, data, len);
	return 0;
}