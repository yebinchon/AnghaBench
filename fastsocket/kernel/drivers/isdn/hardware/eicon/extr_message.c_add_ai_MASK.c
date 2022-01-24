#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int word ;
struct TYPE_6__ {scalar_t__ length; int /*<<< orphan*/ * info; } ;
typedef  int /*<<< orphan*/  PLCI ;
typedef  TYPE_1__ API_PARSE ;

/* Variables and functions */
 int /*<<< orphan*/  FTY ; 
 int /*<<< orphan*/  KEY ; 
 int /*<<< orphan*/  UUI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,char*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(PLCI *plci, API_PARSE *ai)
{
  word i;
    API_PARSE ai_parms[5];

  for(i=0;i<5;i++) ai_parms[i].length = 0;

  if(!ai->length)
    return;
  if(FUNC2(&ai->info[1], (word)ai->length, "ssss", ai_parms))
    return;

  FUNC0 (plci,KEY,&ai_parms[1]);
  FUNC0 (plci,UUI,&ai_parms[2]);
  FUNC1(plci,FTY,&ai_parms[3]);
}