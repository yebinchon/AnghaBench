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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 unsigned int ATI638 ; 
 unsigned int ATSC ; 
 unsigned int BASE ; 
 unsigned int CHINA ; 
 unsigned int D2620 ; 
 unsigned int D2633 ; 
 unsigned int DIBCOM52 ; 
 unsigned int DTV6 ; 
 unsigned int DTV7 ; 
 unsigned int DTV78 ; 
 unsigned int DTV8 ; 
 unsigned int F6MHZ ; 
 unsigned int F8MHZ ; 
 unsigned int FM ; 
 unsigned int HAS_IF ; 
 unsigned int IF ; 
 unsigned int INIT1 ; 
 unsigned int INPUT1 ; 
 unsigned int INPUT2 ; 
 unsigned int LCD ; 
 unsigned int LG60 ; 
 unsigned int MONO ; 
 unsigned int MTS ; 
 unsigned int NOGD ; 
 unsigned int OREN36 ; 
 unsigned int OREN538 ; 
 unsigned int QAM ; 
 unsigned int SCODE ; 
 unsigned int TOYOTA388 ; 
 unsigned int TOYOTA794 ; 
 unsigned int ZARLINK456 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(unsigned int type, u16 int_freq)
{
	 if (type & BASE)
		FUNC0("BASE ");
	 if (type & INIT1)
		FUNC0("INIT1 ");
	 if (type & F8MHZ)
		FUNC0("F8MHZ ");
	 if (type & MTS)
		FUNC0("MTS ");
	 if (type & D2620)
		FUNC0("D2620 ");
	 if (type & D2633)
		FUNC0("D2633 ");
	 if (type & DTV6)
		FUNC0("DTV6 ");
	 if (type & QAM)
		FUNC0("QAM ");
	 if (type & DTV7)
		FUNC0("DTV7 ");
	 if (type & DTV78)
		FUNC0("DTV78 ");
	 if (type & DTV8)
		FUNC0("DTV8 ");
	 if (type & FM)
		FUNC0("FM ");
	 if (type & INPUT1)
		FUNC0("INPUT1 ");
	 if (type & LCD)
		FUNC0("LCD ");
	 if (type & NOGD)
		FUNC0("NOGD ");
	 if (type & MONO)
		FUNC0("MONO ");
	 if (type & ATSC)
		FUNC0("ATSC ");
	 if (type & IF)
		FUNC0("IF ");
	 if (type & LG60)
		FUNC0("LG60 ");
	 if (type & ATI638)
		FUNC0("ATI638 ");
	 if (type & OREN538)
		FUNC0("OREN538 ");
	 if (type & OREN36)
		FUNC0("OREN36 ");
	 if (type & TOYOTA388)
		FUNC0("TOYOTA388 ");
	 if (type & TOYOTA794)
		FUNC0("TOYOTA794 ");
	 if (type & DIBCOM52)
		FUNC0("DIBCOM52 ");
	 if (type & ZARLINK456)
		FUNC0("ZARLINK456 ");
	 if (type & CHINA)
		FUNC0("CHINA ");
	 if (type & F6MHZ)
		FUNC0("F6MHZ ");
	 if (type & INPUT2)
		FUNC0("INPUT2 ");
	 if (type & SCODE)
		FUNC0("SCODE ");
	 if (type & HAS_IF)
		FUNC0("HAS_IF_%d ", int_freq);
}