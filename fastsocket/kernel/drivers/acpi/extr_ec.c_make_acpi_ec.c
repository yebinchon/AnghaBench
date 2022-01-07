
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int flags; int curr_lock; int list; int wait; int lock; } ;


 int EC_FLAGS_QUERY_PENDING ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 struct acpi_ec* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct acpi_ec *make_acpi_ec(void)
{
 struct acpi_ec *ec = kzalloc(sizeof(struct acpi_ec), GFP_KERNEL);
 if (!ec)
  return ((void*)0);
 ec->flags = 1 << EC_FLAGS_QUERY_PENDING;
 mutex_init(&ec->lock);
 init_waitqueue_head(&ec->wait);
 INIT_LIST_HEAD(&ec->list);
 spin_lock_init(&ec->curr_lock);
 return ec;
}
