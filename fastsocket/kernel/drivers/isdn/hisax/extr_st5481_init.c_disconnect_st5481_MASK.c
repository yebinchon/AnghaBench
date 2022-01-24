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
struct usb_interface {int dummy; } ;
struct st5481_adapter {int /*<<< orphan*/  hisax_d_if; int /*<<< orphan*/ * bcs; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct st5481_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct st5481_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct st5481_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct st5481_adapter*) ; 
 struct st5481_adapter* FUNC9 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct usb_interface *intf)
{
	struct st5481_adapter *adapter = FUNC9(intf);

	FUNC0(1,"");

	FUNC10(intf, NULL);
	if (!adapter)
		return;
	
	FUNC3(&adapter->list);

	FUNC8(adapter);
	FUNC5(&adapter->bcs[1]);
	FUNC5(&adapter->bcs[0]);
	FUNC6(adapter);
	// we would actually better wait for completion of outstanding urbs
	FUNC4(2);
	FUNC7(adapter);

	FUNC1(&adapter->hisax_d_if);

	FUNC2(adapter);
}