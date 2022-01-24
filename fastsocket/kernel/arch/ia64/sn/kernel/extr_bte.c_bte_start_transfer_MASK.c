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
typedef  int u64 ;
struct bteinfo_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bteinfo_s*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bteinfo_s*,int) ; 
 int IBLS_BUSY ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static inline void FUNC3(struct bteinfo_s *bte, u64 len, u64 mode)
{
	if (FUNC2()) {
		FUNC0(bte, (IBLS_BUSY | ((len) | (mode) << 24)));
	} else {
		FUNC1(bte, len);
		FUNC0(bte, mode);
	}
}