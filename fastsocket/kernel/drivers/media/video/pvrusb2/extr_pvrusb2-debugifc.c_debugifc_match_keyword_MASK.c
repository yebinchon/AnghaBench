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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*,unsigned int) ; 
 unsigned int FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const char *buf,unsigned int count,
				  const char *keyword)
{
	unsigned int kl;
	if (!keyword) return 0;
	kl = FUNC1(keyword);
	if (kl != count) return 0;
	return !FUNC0(buf,keyword,kl);
}