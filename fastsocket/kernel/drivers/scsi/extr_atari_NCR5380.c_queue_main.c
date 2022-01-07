
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NCR5380_tqueue ;
 int main_running ;
 int schedule_work (int *) ;

__attribute__((used)) static inline void queue_main(void)
{
 if (!main_running) {




  schedule_work(&NCR5380_tqueue);
 }


}
