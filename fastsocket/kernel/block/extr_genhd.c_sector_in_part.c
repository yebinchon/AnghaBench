
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {scalar_t__ start_sect; scalar_t__ nr_sects; } ;
typedef scalar_t__ sector_t ;



__attribute__((used)) static inline int sector_in_part(struct hd_struct *part, sector_t sector)
{
 return part->start_sect <= sector &&
  sector < part->start_sect + part->nr_sects;
}
