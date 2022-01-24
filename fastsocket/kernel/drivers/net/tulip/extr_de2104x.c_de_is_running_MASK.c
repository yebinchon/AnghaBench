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
struct de_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MacStatus ; 
 int RxState ; 
 int TxState ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1 (struct de_private *de)
{
	return (FUNC0(MacStatus) & (RxState | TxState)) ? 1 : 0;
}