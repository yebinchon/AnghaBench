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
struct ipw_priv {int /*<<< orphan*/  status; int /*<<< orphan*/  direct_dword; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS_DIRECT_DWORD ; 
 struct ipw_priv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *d,
				  struct device_attribute *attr,
				  const char *buf, size_t count)
{
	struct ipw_priv *priv = FUNC0(d);

	FUNC1(buf, "%x", &priv->direct_dword);
	priv->status |= STATUS_DIRECT_DWORD;
	return FUNC2(buf, count);
}