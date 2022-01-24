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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  pegasus_t ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  EthCtrl0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(pegasus_t * pegasus)
{
	__le16 tmp = FUNC0(0);

	FUNC1(pegasus, EthCtrl0, sizeof(tmp), &tmp);
}