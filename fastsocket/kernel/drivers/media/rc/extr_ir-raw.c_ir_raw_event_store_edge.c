
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rc_dev {TYPE_1__* raw; } ;
typedef scalar_t__ s64 ;
typedef int ktime_t ;
typedef enum raw_event_type { ____Placeholder_raw_event_type } raw_event_type ;
struct TYPE_6__ {int pulse; scalar_t__ duration; } ;
struct TYPE_5__ {int last_type; int last_event; } ;


 int DEFINE_IR_RAW_EVENT (TYPE_2__) ;
 int EINVAL ;
 scalar_t__ IR_MAX_DURATION ;
 int IR_PULSE ;
 int IR_SPACE ;
 int IR_START_EVENT ;
 TYPE_2__ ev ;
 int ir_raw_event_reset (struct rc_dev*) ;
 int ir_raw_event_store (struct rc_dev*,TYPE_2__*) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;

int ir_raw_event_store_edge(struct rc_dev *dev, enum raw_event_type type)
{
 ktime_t now;
 s64 delta;
 DEFINE_IR_RAW_EVENT(ev);
 int rc = 0;

 if (!dev->raw)
  return -EINVAL;

 now = ktime_get();
 delta = ktime_to_ns(ktime_sub(now, dev->raw->last_event));





 if (delta > IR_MAX_DURATION || !dev->raw->last_type)
  type |= IR_START_EVENT;
 else
  ev.duration = delta;

 if (type & IR_START_EVENT)
  ir_raw_event_reset(dev);
 else if (dev->raw->last_type & IR_SPACE) {
  ev.pulse = 0;
  rc = ir_raw_event_store(dev, &ev);
 } else if (dev->raw->last_type & IR_PULSE) {
  ev.pulse = 1;
  rc = ir_raw_event_store(dev, &ev);
 } else
  return 0;

 dev->raw->last_event = now;
 dev->raw->last_type = type;
 return rc;
}
