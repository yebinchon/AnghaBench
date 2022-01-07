
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct api_info {int refcnt; } ;



__attribute__((used)) static void __get_ref(struct api_info *p)
{
 p->refcnt++;
}
