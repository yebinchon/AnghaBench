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
struct aoedev {TYPE_1__* gd; } ;
struct TYPE_2__ {char* disk_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 char* FUNC1 (char*,char) ; 

__attribute__((used)) static int
FUNC2(char *s, size_t slen, struct aoedev *d)
{
	char *p;
	size_t lim;

	if (!d->gd)
		return 0;
	p = FUNC1(d->gd->disk_name, '/');
	if (!p)
		p = d->gd->disk_name;
	else
		p += 1;
	lim = sizeof(d->gd->disk_name);
	lim -= p - d->gd->disk_name;
	if (slen < lim)
		lim = slen;

	return !FUNC0(s, p, lim);
}