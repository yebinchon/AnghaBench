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
struct lcs_card {int portno; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 struct lcs_card* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int*) ; 

__attribute__((used)) static ssize_t
FUNC2 (struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
        struct lcs_card *card;
        int value;

	card = FUNC0(dev);

        if (!card)
                return 0;

        FUNC1(buf, "%u", &value);
        /* TODO: sanity checks */
        card->portno = value;

        return count;

}