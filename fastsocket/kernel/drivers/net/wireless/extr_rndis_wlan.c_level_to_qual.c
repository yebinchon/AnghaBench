
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WL_NOISE ;
 int WL_SIGMAX ;

__attribute__((used)) static int level_to_qual(int level)
{
 int qual = 100 * (level - WL_NOISE) / (WL_SIGMAX - WL_NOISE);
 return qual >= 0 ? (qual <= 100 ? qual : 100) : 0;
}
