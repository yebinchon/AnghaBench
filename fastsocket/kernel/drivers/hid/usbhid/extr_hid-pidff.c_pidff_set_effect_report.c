
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct pidff_device {int * reports; int hid; TYPE_6__* set_effect; TYPE_8__* effect_direction; TYPE_3__* create_new_effect_type; TYPE_2__* set_effect_type; TYPE_1__* block_load; } ;
struct TYPE_15__ {int length; int delay; } ;
struct TYPE_12__ {int button; int interval; } ;
struct ff_effect {TYPE_7__ replay; int direction; TYPE_4__ trigger; } ;
struct TYPE_16__ {int * value; } ;
struct TYPE_14__ {int* value; TYPE_5__* field; } ;
struct TYPE_13__ {int logical_maximum; } ;
struct TYPE_11__ {int * value; } ;
struct TYPE_10__ {int * value; } ;
struct TYPE_9__ {int* value; } ;


 size_t PID_DIRECTION_ENABLE ;
 size_t PID_DURATION ;
 size_t PID_EFFECT_BLOCK_INDEX ;
 size_t PID_GAIN ;
 size_t PID_SET_EFFECT ;
 size_t PID_START_DELAY ;
 size_t PID_TRIGGER_BUTTON ;
 size_t PID_TRIGGER_REPEAT_INT ;
 int USB_DIR_OUT ;
 int pidff_rescale (int ,int,TYPE_8__*) ;
 int usbhid_submit_report (int ,int ,int ) ;

__attribute__((used)) static void pidff_set_effect_report(struct pidff_device *pidff,
        struct ff_effect *effect)
{
 pidff->set_effect[PID_EFFECT_BLOCK_INDEX].value[0] =
  pidff->block_load[PID_EFFECT_BLOCK_INDEX].value[0];
 pidff->set_effect_type->value[0] =
  pidff->create_new_effect_type->value[0];
 pidff->set_effect[PID_DURATION].value[0] = effect->replay.length;
 pidff->set_effect[PID_TRIGGER_BUTTON].value[0] = effect->trigger.button;
 pidff->set_effect[PID_TRIGGER_REPEAT_INT].value[0] =
  effect->trigger.interval;
 pidff->set_effect[PID_GAIN].value[0] =
  pidff->set_effect[PID_GAIN].field->logical_maximum;
 pidff->set_effect[PID_DIRECTION_ENABLE].value[0] = 1;
 pidff->effect_direction->value[0] =
  pidff_rescale(effect->direction, 0xffff,
    pidff->effect_direction);
 pidff->set_effect[PID_START_DELAY].value[0] = effect->replay.delay;

 usbhid_submit_report(pidff->hid, pidff->reports[PID_SET_EFFECT],
     USB_DIR_OUT);
}
