
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_dev {scalar_t__ ext_priv; } ;
struct budget {int video_port; int feedlock; scalar_t__ feeding; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int start_ts_capture (struct budget*) ;
 int stop_ts_capture (struct budget*) ;

void ttpci_budget_set_video_port(struct saa7146_dev *dev, int video_port)
{
 struct budget *budget = (struct budget *) dev->ext_priv;

 spin_lock(&budget->feedlock);
 budget->video_port = video_port;
 if (budget->feeding) {
  stop_ts_capture(budget);
  start_ts_capture(budget);
 }
 spin_unlock(&budget->feedlock);
}
