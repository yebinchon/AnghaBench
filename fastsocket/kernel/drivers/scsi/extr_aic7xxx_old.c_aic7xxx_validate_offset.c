
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_syncrate {int dummy; } ;
struct aic7xxx_host {int features; } ;


 int AHC_ULTRA2 ;
 unsigned int MAX_OFFSET_16BIT ;
 unsigned int MAX_OFFSET_8BIT ;
 unsigned int MAX_OFFSET_ULTRA2 ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static void
aic7xxx_validate_offset(struct aic7xxx_host *p,
  struct aic7xxx_syncrate *syncrate, unsigned int *offset, int wide)
{
  unsigned int maxoffset;


  if (syncrate == ((void*)0))
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
  *offset = min(*offset, maxoffset);
}
