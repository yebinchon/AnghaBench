
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int track_as_pte (void*) ;

void do_mm_track_pud(void *val)
{
 track_as_pte(val);
}
