
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int dummy; } ;
struct regulator_dev {int mutex; } ;


 int REGULATOR_EVENT_REGULATION_OUT ;
 int REGULATOR_EVENT_UNDER_VOLTAGE ;
 int WM8350_IRQ_CS1 ;
 int WM8350_IRQ_CS2 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_notifier_call_chain (struct regulator_dev*,int ,struct wm8350*) ;

__attribute__((used)) static void pmic_uv_handler(struct wm8350 *wm8350, int irq, void *data)
{
 struct regulator_dev *rdev = (struct regulator_dev *)data;

 mutex_lock(&rdev->mutex);
 if (irq == WM8350_IRQ_CS1 || irq == WM8350_IRQ_CS2)
  regulator_notifier_call_chain(rdev,
           REGULATOR_EVENT_REGULATION_OUT,
           wm8350);
 else
  regulator_notifier_call_chain(rdev,
           REGULATOR_EVENT_UNDER_VOLTAGE,
           wm8350);
 mutex_unlock(&rdev->mutex);
}
