
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int put_cpu () ;

__attribute__((used)) static void cplbinfo_stop(struct seq_file *m, void *p)
{
 put_cpu();
}
