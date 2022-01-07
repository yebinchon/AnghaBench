
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_fh {unsigned int resources; } ;



__attribute__((used)) static int res_check(struct au0828_fh *fh, unsigned int bit)
{
 return fh->resources & bit;
}
