#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ State; } ;
struct TYPE_5__ {int /*<<< orphan*/ * AdvSignalPLCI; int /*<<< orphan*/ * AdvSignalAppl; TYPE_2__* AdvCodecPLCI; scalar_t__ AdvCodecFLAG; } ;
typedef  int /*<<< orphan*/  PLCI ;
typedef  TYPE_1__ DIVA_CAPI_ADAPTER ;

/* Variables and functions */
 scalar_t__ ADVANCED_VOICE_NOSIG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(DIVA_CAPI_ADAPTER *a, PLCI *plci)
{

  FUNC1(1,FUNC2("CodecIdCheck"));

  if(a->AdvSignalPLCI == plci)
  {
    FUNC1(1,FUNC2("PLCI owns codec"));
    FUNC0(a->AdvCodecPLCI);
    if(a->AdvCodecPLCI->State == ADVANCED_VOICE_NOSIG)
    {
      FUNC1(1,FUNC2("remove temp codec PLCI"));
      FUNC3(a->AdvCodecPLCI);
      a->AdvCodecFLAG  = 0;
      a->AdvCodecPLCI  = NULL;
      a->AdvSignalAppl = NULL;
    }
    a->AdvSignalPLCI = NULL;
  }
}