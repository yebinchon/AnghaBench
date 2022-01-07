
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct cm109_dev {int key_code; struct input_dev* idev; } ;


 int input_report_key (struct input_dev*,int,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void report_key(struct cm109_dev *dev, int key)
{
 struct input_dev *idev = dev->idev;

 if (dev->key_code >= 0) {

  input_report_key(idev, dev->key_code, 0);
 }

 dev->key_code = key;
 if (key >= 0) {

  input_report_key(idev, key, 1);
 }

 input_sync(idev);
}
