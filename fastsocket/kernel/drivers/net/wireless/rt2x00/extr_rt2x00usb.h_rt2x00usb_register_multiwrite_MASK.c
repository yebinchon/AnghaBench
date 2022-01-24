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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  USB_MULTI_WRITE ; 
 int /*<<< orphan*/  USB_VENDOR_REQUEST_OUT ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int const,void*,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct rt2x00_dev *rt2x00dev,
						 const unsigned int offset,
						 const void *value,
						 const u32 length)
{
	FUNC1(rt2x00dev, USB_MULTI_WRITE,
				      USB_VENDOR_REQUEST_OUT, offset,
				      (void *)value, length,
				      FUNC0(length));
}