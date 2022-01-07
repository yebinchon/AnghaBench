
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cplbinfo_data {scalar_t__ pos; } ;


 scalar_t__ MAX_CPLBS ;

__attribute__((used)) static int cplbinfo_nomore(struct cplbinfo_data *cdata)
{
 return cdata->pos >= MAX_CPLBS;
}
