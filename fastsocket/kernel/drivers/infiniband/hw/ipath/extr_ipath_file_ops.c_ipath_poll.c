
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct ipath_portdata {int poll_type; } ;
struct file {int dummy; } ;


 int IPATH_POLL_TYPE_URGENT ;
 unsigned int ipath_poll_next (struct ipath_portdata*,struct file*,struct poll_table_struct*) ;
 unsigned int ipath_poll_urgent (struct ipath_portdata*,struct file*,struct poll_table_struct*) ;
 struct ipath_portdata* port_fp (struct file*) ;

__attribute__((used)) static unsigned int ipath_poll(struct file *fp,
          struct poll_table_struct *pt)
{
 struct ipath_portdata *pd;
 unsigned pollflag;

 pd = port_fp(fp);
 if (!pd)
  pollflag = 0;
 else if (pd->poll_type & IPATH_POLL_TYPE_URGENT)
  pollflag = ipath_poll_urgent(pd, fp, pt);
 else
  pollflag = ipath_poll_next(pd, fp, pt);

 return pollflag;
}
