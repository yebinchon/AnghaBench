
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int ofld_dev_list; int name; } ;


 int cxgb3_db_lock ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ofld_dev_list ;
 int snprintf (int ,int,char*,int ) ;

__attribute__((used)) static inline void register_tdev(struct t3cdev *tdev)
{
 static int unit;

 mutex_lock(&cxgb3_db_lock);
 snprintf(tdev->name, sizeof(tdev->name), "ofld_dev%d", unit++);
 list_add_tail(&tdev->ofld_dev_list, &ofld_dev_list);
 mutex_unlock(&cxgb3_db_lock);
}
