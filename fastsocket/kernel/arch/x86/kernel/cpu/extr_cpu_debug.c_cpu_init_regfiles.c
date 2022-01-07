
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 unsigned int ARRAY_SIZE (int ) ;
 int cpu_create_file (unsigned int,unsigned int,unsigned int,unsigned int,struct dentry*) ;
 int cpu_file ;

__attribute__((used)) static int cpu_init_regfiles(unsigned cpu, unsigned int type, unsigned reg,
        struct dentry *dentry)
{
 unsigned file;
 int err = 0;

 for (file = 0; file < ARRAY_SIZE(cpu_file); file++) {
  err = cpu_create_file(cpu, type, reg, file, dentry);
  if (err)
   return err;
 }

 return err;
}
