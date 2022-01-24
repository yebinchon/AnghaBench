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
typedef  int u16 ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*,int) ; 

__attribute__((used)) static void FUNC8(struct gspca_dev *gspca_dev, u16 fkey, u16 val)
{
	FUNC7(gspca_dev, 0x0088);
	FUNC4(gspca_dev, fkey);
	FUNC6(gspca_dev, val);
	FUNC4(gspca_dev, 0x0088);
	FUNC5(gspca_dev, fkey);
	FUNC4(gspca_dev, 0x0089);
	FUNC3(gspca_dev, fkey);
	FUNC1(gspca_dev);
	FUNC0(gspca_dev, 0x0126, 0);
	FUNC2(gspca_dev);
}