
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_detail {scalar_t__ type; } ;


 scalar_t__ AltWPEG ;
 scalar_t__ CompatWPEG ;
 scalar_t__ LookOutAWPEG ;
 scalar_t__ LookOutBWPEG ;

__attribute__((used)) static inline int is_WPEG(struct rio_detail *rio){
 return (rio->type == CompatWPEG || rio->type == AltWPEG ||
  rio->type == LookOutAWPEG || rio->type == LookOutBWPEG);
}
