#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct aic7xxx_scb {TYPE_2__* hscb; } ;
struct aic7xxx_host {TYPE_1__* scb_data; } ;
struct TYPE_4__ {unsigned char tag; } ;
struct TYPE_3__ {unsigned char maxhscbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCBPTR ; 
 unsigned char SCB_LIST_NULL ; 
 int /*<<< orphan*/  SCB_TAG ; 
 unsigned char FUNC0 (struct aic7xxx_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aic7xxx_host*,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned char
FUNC2(struct aic7xxx_host *p, struct aic7xxx_scb *scb)
{
  unsigned char saved_scbptr;
  unsigned char curindex;

  saved_scbptr = FUNC0(p, SCBPTR);
  curindex = 0;
  for (curindex = 0; curindex < p->scb_data->maxhscbs; curindex++)
  {
    FUNC1(p, curindex, SCBPTR);
    if (FUNC0(p, SCB_TAG) == scb->hscb->tag)
    {
      break;
    }
  }
  FUNC1(p, saved_scbptr, SCBPTR);
  if (curindex >= p->scb_data->maxhscbs)
  {
    curindex = SCB_LIST_NULL;
  }

  return (curindex);
}