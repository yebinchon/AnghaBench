
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* dentry; } ;
struct file {TYPE_4__ f_path; } ;
struct TYPE_7__ {TYPE_2__* d_parent; } ;
struct TYPE_5__ {unsigned char* name; } ;
struct TYPE_6__ {TYPE_1__ d_name; } ;


 scalar_t__ simple_strtol (unsigned char const*,int *,int) ;

__attribute__((used)) static inline int to_counter(struct file *file)
{
 const unsigned char *name = file->f_path.dentry->d_parent->d_name.name;

 return (int)simple_strtol(name, ((void*)0), 10);
}
