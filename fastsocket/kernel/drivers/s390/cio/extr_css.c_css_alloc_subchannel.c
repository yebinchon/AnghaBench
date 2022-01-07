
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;
struct subchannel {int todo_work; } ;


 int ENOMEM ;
 struct subchannel* ERR_PTR (int) ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int cio_validate_subchannel (struct subchannel*,struct subchannel_id) ;
 int css_sch_todo ;
 int kfree (struct subchannel*) ;
 struct subchannel* kmalloc (int,int) ;

__attribute__((used)) static struct subchannel *
css_alloc_subchannel(struct subchannel_id schid)
{
 struct subchannel *sch;
 int ret;

 sch = kmalloc (sizeof (*sch), GFP_KERNEL | GFP_DMA);
 if (sch == ((void*)0))
  return ERR_PTR(-ENOMEM);
 ret = cio_validate_subchannel (sch, schid);
 if (ret < 0) {
  kfree(sch);
  return ERR_PTR(ret);
 }
 INIT_WORK(&sch->todo_work, css_sch_todo);
 return sch;
}
