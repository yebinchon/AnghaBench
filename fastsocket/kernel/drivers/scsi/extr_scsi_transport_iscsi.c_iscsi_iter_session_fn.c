
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 struct iscsi_cls_session* iscsi_dev_to_session (struct device*) ;
 int iscsi_is_session_dev (struct device*) ;

__attribute__((used)) static int iscsi_iter_session_fn(struct device *dev, void *data)
{
 void (* fn) (struct iscsi_cls_session *) = data;

 if (!iscsi_is_session_dev(dev))
  return 0;
 fn(iscsi_dev_to_session(dev));
 return 0;
}
