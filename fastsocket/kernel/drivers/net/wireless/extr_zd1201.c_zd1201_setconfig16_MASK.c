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
struct zd1201 {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (short) ; 
 int FUNC1 (struct zd1201*,int,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static inline int FUNC2(struct zd1201 *zd, int rid, short val)
{
	__le16 zdval = FUNC0(val);
	return (FUNC1(zd, rid, &zdval, sizeof(__le16), 1));
}