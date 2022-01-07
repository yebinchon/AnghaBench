
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx_fh {unsigned int resources; } ;



__attribute__((used)) static int res_check(struct em28xx_fh *fh, unsigned int bit)
{
 return fh->resources & bit;
}
