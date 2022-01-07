; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_create_ccwdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_create_ccwdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.subchannel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ccw_device* (%struct.subchannel*)* @io_subchannel_create_ccwdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ccw_device* @io_subchannel_create_ccwdev(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  %5 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %6 = call %struct.ccw_device* @io_subchannel_allocate_dev(%struct.subchannel* %5)
  store %struct.ccw_device* %6, %struct.ccw_device** %3, align 8
  %7 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %8 = call i32 @IS_ERR(%struct.ccw_device* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %12 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %13 = call i32 @io_subchannel_initialize_dev(%struct.subchannel* %11, %struct.ccw_device* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.ccw_device* @ERR_PTR(i32 %17)
  store %struct.ccw_device* %18, %struct.ccw_device** %3, align 8
  br label %19

19:                                               ; preds = %16, %10
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  ret %struct.ccw_device* %21
}

declare dso_local %struct.ccw_device* @io_subchannel_allocate_dev(%struct.subchannel*) #1

declare dso_local i32 @IS_ERR(%struct.ccw_device*) #1

declare dso_local i32 @io_subchannel_initialize_dev(%struct.subchannel*, %struct.ccw_device*) #1

declare dso_local %struct.ccw_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
