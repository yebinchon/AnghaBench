; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32 }
%struct.ccw_device = type { i32 }

@DEV_EVENT_VERIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subchannel*)* @io_subchannel_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_subchannel_verify(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  %4 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %5 = call %struct.ccw_device* @sch_get_cdev(%struct.subchannel* %4)
  store %struct.ccw_device* %5, %struct.ccw_device** %3, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = icmp ne %struct.ccw_device* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %10 = load i32, i32* @DEV_EVENT_VERIFY, align 4
  %11 = call i32 @dev_fsm_event(%struct.ccw_device* %9, i32 %10)
  br label %12

12:                                               ; preds = %8, %1
  ret void
}

declare dso_local %struct.ccw_device* @sch_get_cdev(%struct.subchannel*) #1

declare dso_local i32 @dev_fsm_event(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
