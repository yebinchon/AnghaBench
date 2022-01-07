
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 void* kzalloc (int,int ) ;
 int panic (char*,int) ;

__attribute__((used)) static void *kzalloc_panic(int len)
{
 void *rc;

 rc = kzalloc(len, GFP_KERNEL);
 if (!rc)
  panic("s390 kdump kzalloc (%d) failed", len);
 return rc;
}
