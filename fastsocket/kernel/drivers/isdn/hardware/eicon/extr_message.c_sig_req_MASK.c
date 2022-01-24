#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ byte ;
struct TYPE_6__ {int /*<<< orphan*/  Id; } ;
struct TYPE_7__ {int req_in; int req_in_start; scalar_t__* RBuffer; TYPE_2__ Sig; int /*<<< orphan*/  sig_remove_id; TYPE_1__* adapter; } ;
struct TYPE_5__ {scalar_t__ adapter_disabled; } ;
typedef  TYPE_3__ PLCI ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 scalar_t__ REMOVE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(PLCI *plci, byte req, byte Id)
{
  if(!plci) return;
  if(plci->adapter->adapter_disabled) return;
  FUNC1(1,FUNC2("sig_req(%x)",req));
  if (req == REMOVE)
    plci->sig_remove_id = plci->Sig.Id;
  if(plci->req_in==plci->req_in_start) {
    plci->req_in +=2;
    plci->RBuffer[plci->req_in++] = 0;
  }
  FUNC0(&plci->RBuffer[plci->req_in_start], plci->req_in-plci->req_in_start-2);
  plci->RBuffer[plci->req_in++] = Id;   /* sig/nl flag */
  plci->RBuffer[plci->req_in++] = req;  /* request */
  plci->RBuffer[plci->req_in++] = 0;    /* channel */
  plci->req_in_start = plci->req_in;
}