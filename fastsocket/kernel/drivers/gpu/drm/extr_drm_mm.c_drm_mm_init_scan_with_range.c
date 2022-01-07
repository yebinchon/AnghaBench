
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm {unsigned long scan_color; unsigned int scan_alignment; unsigned long scan_size; unsigned long scan_start; unsigned long scan_end; int scan_check_range; int * prev_scanned_node; scalar_t__ scan_hit_end; scalar_t__ scan_hit_start; scalar_t__ scanned_blocks; } ;



void drm_mm_init_scan_with_range(struct drm_mm *mm,
     unsigned long size,
     unsigned alignment,
     unsigned long color,
     unsigned long start,
     unsigned long end)
{
 mm->scan_color = color;
 mm->scan_alignment = alignment;
 mm->scan_size = size;
 mm->scanned_blocks = 0;
 mm->scan_hit_start = 0;
 mm->scan_hit_end = 0;
 mm->scan_start = start;
 mm->scan_end = end;
 mm->scan_check_range = 1;
 mm->prev_scanned_node = ((void*)0);
}
