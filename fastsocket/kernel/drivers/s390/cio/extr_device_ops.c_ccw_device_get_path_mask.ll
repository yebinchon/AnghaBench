; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_ops.c_ccw_device_get_path_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_ops.c_ccw_device_get_path_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.subchannel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccw_device_get_path_mask(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.subchannel*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %5 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %6 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %13 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.subchannel* @to_subchannel(i32 %15)
  store %struct.subchannel* %16, %struct.subchannel** %4, align 8
  %17 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %18 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %11, %10
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
