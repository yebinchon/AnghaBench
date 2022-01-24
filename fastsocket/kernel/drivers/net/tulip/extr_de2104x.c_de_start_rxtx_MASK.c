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
typedef  int u32 ;
struct de_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MacMode ; 
 int RxTx ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2 (struct de_private *de)
{
	u32 macmode;

	macmode = FUNC0(MacMode);
	if ((macmode & RxTx) != RxTx) {
		FUNC1(MacMode, macmode | RxTx);
		FUNC0(MacMode);
	}
}