
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvsi_struct {int vtermno; } ;


 unsigned long hvc_get_chars (int ,char*,int) ;

__attribute__((used)) static int hvsi_read(struct hvsi_struct *hp, char *buf, int count)
{
 unsigned long got;

 got = hvc_get_chars(hp->vtermno, buf, count);

 return got;
}
