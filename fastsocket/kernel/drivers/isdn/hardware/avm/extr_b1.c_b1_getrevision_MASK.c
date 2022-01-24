#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ port; void* revision; void* class; } ;
typedef  TYPE_1__ avmcard ;

/* Variables and functions */
 scalar_t__ B1_ANALYSE ; 
 scalar_t__ B1_REVISION ; 
 void* FUNC0 (scalar_t__) ; 

void FUNC1(avmcard *card)
{
    card->class = FUNC0(card->port + B1_ANALYSE);
    card->revision = FUNC0(card->port + B1_REVISION);
}