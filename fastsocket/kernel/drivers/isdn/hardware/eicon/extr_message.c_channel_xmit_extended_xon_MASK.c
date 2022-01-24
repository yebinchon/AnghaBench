#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  byte ;
struct TYPE_7__ {int* ch_flow_control; scalar_t__* ch_flow_plci; } ;
struct TYPE_6__ {scalar_t__ Id; TYPE_2__* adapter; } ;
typedef  TYPE_1__ PLCI ;
typedef  TYPE_2__ DIVA_CAPI_ADAPTER ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int N_CH_XOFF ; 
 int N_XON_CONNECT_IND ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3 (PLCI   * plci) {
  DIVA_CAPI_ADAPTER   * a;
  int max_ch = FUNC0(a->ch_flow_control);
  int i, one_requested = 0;

  if ((!plci) || (!plci->Id) || ((a = plci->adapter) == NULL)) {
    return;
  }

  for (i = 0; i < max_ch; i++) {
    if ((a->ch_flow_control[i] & N_CH_XOFF) &&
        (a->ch_flow_control[i] & N_XON_CONNECT_IND) &&
        (plci->Id == a->ch_flow_plci[i])) {
      FUNC1 (plci, (byte)i);
      one_requested = 1;
    }
  }

  if (one_requested) {
    FUNC2 (plci);
  }
}