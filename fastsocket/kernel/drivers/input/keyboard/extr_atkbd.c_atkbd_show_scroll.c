
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atkbd {scalar_t__ scroll; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t atkbd_show_scroll(struct atkbd *atkbd, char *buf)
{
 return sprintf(buf, "%d\n", atkbd->scroll ? 1 : 0);
}
