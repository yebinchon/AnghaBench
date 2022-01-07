
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct rb_root {int dummy; } ;
struct deadline_data {int dummy; } ;


 struct rb_root* deadline_rb_root (struct deadline_data*,struct request*) ;
 int elv_rb_add (struct rb_root*,struct request*) ;

__attribute__((used)) static void
deadline_add_rq_rb(struct deadline_data *dd, struct request *rq)
{
 struct rb_root *root = deadline_rb_root(dd, rq);

 elv_rb_add(root, rq);
}
