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
 int C1_IMG ; 
 int C2_IMG ; 
 int C3_IMG ; 
 int C4_IMG ; 
 int CLKCONV ; 
 int CONFIG1 ; 
 int CONFIG2 ; 
 int CONFIG3 ; 
 int CONFIG4 ; 
 int PIO_FLAG ; 
 int PIO_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SRTIMOUT ; 
 int SYNCOFF ; 
 int SYNCPRD ; 
 int SYNC_MODE ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void
FUNC2(int io_port)
{
	FUNC0(io_port);
	FUNC1(0x01, io_port + PIO_STATUS);
	FUNC1(0x00, io_port + PIO_FLAG);

	FUNC1(C4_IMG, io_port + CONFIG4);	/* REG0(io_port); */
	FUNC1(C3_IMG, io_port + CONFIG3);
	FUNC1(C2_IMG, io_port + CONFIG2);
	FUNC1(C1_IMG, io_port + CONFIG1);

	FUNC1(0x05, io_port + CLKCONV);	/* clock conversion factor */
	FUNC1(0x9C, io_port + SRTIMOUT);	/* Selection timeout */
	FUNC1(0x05, io_port + SYNCPRD);	/* Synchronous transfer period */
	FUNC1(SYNC_MODE, io_port + SYNCOFF);	/* synchronous mode */  
}