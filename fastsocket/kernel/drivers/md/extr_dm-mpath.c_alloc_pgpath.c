
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgpath {int is_active; int activate_path; } ;


 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int activate_path ;
 struct pgpath* kzalloc (int,int ) ;

__attribute__((used)) static struct pgpath *alloc_pgpath(void)
{
 struct pgpath *pgpath = kzalloc(sizeof(*pgpath), GFP_KERNEL);

 if (pgpath) {
  pgpath->is_active = 1;
  INIT_DELAYED_WORK(&pgpath->activate_path, activate_path);
 }

 return pgpath;
}
