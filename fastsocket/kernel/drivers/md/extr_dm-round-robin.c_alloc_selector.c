
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selector {int invalid_paths; int valid_paths; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct selector* kmalloc (int,int ) ;

__attribute__((used)) static struct selector *alloc_selector(void)
{
 struct selector *s = kmalloc(sizeof(*s), GFP_KERNEL);

 if (s) {
  INIT_LIST_HEAD(&s->valid_paths);
  INIT_LIST_HEAD(&s->invalid_paths);
 }

 return s;
}
