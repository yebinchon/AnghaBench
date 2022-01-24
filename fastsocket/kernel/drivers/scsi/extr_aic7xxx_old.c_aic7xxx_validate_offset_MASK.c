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
struct aic7xxx_syncrate {int dummy; } ;
struct aic7xxx_host {int features; } ;

/* Variables and functions */
 int AHC_ULTRA2 ; 
 unsigned int MAX_OFFSET_16BIT ; 
 unsigned int MAX_OFFSET_8BIT ; 
 unsigned int MAX_OFFSET_ULTRA2 ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 

__attribute__((used)) static void
FUNC1(struct aic7xxx_host *p,
  struct aic7xxx_syncrate *syncrate, unsigned int *offset, int wide)
{
  unsigned int maxoffset;

  /* Limit offset to what the card (and device) can do */
  if (syncrate == NULL)
  {
    maxoffset = 0;
  }
  else if (p->features & AHC_ULTRA2)
  {
    maxoffset = MAX_OFFSET_ULTRA2;
  }
  else
  {
    if (wide)
      maxoffset = MAX_OFFSET_16BIT;
    else
      maxoffset = MAX_OFFSET_8BIT;
  }
  *offset = FUNC0(*offset, maxoffset);
}