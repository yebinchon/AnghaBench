
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urfile {int urd; } ;


 int TRACE (char*,struct urfile*,int ) ;
 int kfree (struct urfile*) ;

__attribute__((used)) static void urfile_free(struct urfile *urf)
{
 TRACE("urfile_free: urf=%p urd=%p\n", urf, urf->urd);
 kfree(urf);
}
