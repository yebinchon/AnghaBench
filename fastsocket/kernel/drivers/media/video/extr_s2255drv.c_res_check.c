
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2255_fh {int resources; } ;



__attribute__((used)) static int res_check(struct s2255_fh *fh)
{
 return fh->resources;
}
