
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urfile {int dev_reclen; struct urdev* urd; } ;
struct urdev {int dummy; } ;


 int GFP_KERNEL ;
 int TRACE (char*,struct urdev*,struct urfile*,int ) ;
 struct urfile* kzalloc (int,int ) ;

__attribute__((used)) static struct urfile *urfile_alloc(struct urdev *urd)
{
 struct urfile *urf;

 urf = kzalloc(sizeof(struct urfile), GFP_KERNEL);
 if (!urf)
  return ((void*)0);
 urf->urd = urd;

 TRACE("urfile_alloc: urd=%p urf=%p rl=%zu\n", urd, urf,
       urf->dev_reclen);

 return urf;
}
