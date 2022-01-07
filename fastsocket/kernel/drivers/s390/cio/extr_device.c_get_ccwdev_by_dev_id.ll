; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_get_ccwdev_by_dev_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_get_ccwdev_by_dev_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.ccw_dev_id = type { i32 }
%struct.device = type { i32 }

@ccw_bus_type = common dso_local global i32 0, align 4
@match_dev_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ccw_device* (%struct.ccw_dev_id*)* @get_ccwdev_by_dev_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ccw_device* @get_ccwdev_by_dev_id(%struct.ccw_dev_id* %0) #0 {
  %2 = alloca %struct.ccw_dev_id*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.ccw_dev_id* %0, %struct.ccw_dev_id** %2, align 8
  %4 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %2, align 8
  %5 = load i32, i32* @match_dev_id, align 4
  %6 = call %struct.device* @bus_find_device(i32* @ccw_bus_type, i32* null, %struct.ccw_dev_id* %4, i32 %5)
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = icmp ne %struct.device* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.ccw_device* @to_ccwdev(%struct.device* %10)
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi %struct.ccw_device* [ %11, %9 ], [ null, %12 ]
  ret %struct.ccw_device* %14
}

declare dso_local %struct.device* @bus_find_device(i32*, i32*, %struct.ccw_dev_id*, i32) #1

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
