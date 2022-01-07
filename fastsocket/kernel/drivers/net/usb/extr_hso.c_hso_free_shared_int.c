
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hso_shared_int {int shared_int_lock; struct hso_shared_int* shared_intr_buf; int shared_intr_urb; } ;


 int kfree (struct hso_shared_int*) ;
 int mutex_unlock (int *) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void hso_free_shared_int(struct hso_shared_int *mux)
{
 usb_free_urb(mux->shared_intr_urb);
 kfree(mux->shared_intr_buf);
 mutex_unlock(&mux->shared_int_lock);
 kfree(mux);
}
