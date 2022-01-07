; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c___vxge_hw_device_handle_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c___vxge_hw_device_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.__vxge_hw_device.0*, i32, i32)* }
%struct.__vxge_hw_device.0 = type opaque

@VXGE_HW_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__vxge_hw_device_handle_error(%struct.__vxge_hw_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.__vxge_hw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.__vxge_hw_device* %0, %struct.__vxge_hw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %15 [
    i32 129, label %8
    i32 133, label %9
    i32 134, label %9
    i32 138, label %9
    i32 137, label %9
    i32 142, label %10
    i32 140, label %11
    i32 136, label %11
    i32 139, label %12
    i32 128, label %12
    i32 141, label %12
    i32 132, label %12
    i32 130, label %13
    i32 135, label %13
    i32 131, label %14
  ]

8:                                                ; preds = %3
  br label %17

9:                                                ; preds = %3, %3, %3, %3
  br label %34

10:                                               ; preds = %3
  br label %34

11:                                               ; preds = %3, %3
  br label %34

12:                                               ; preds = %3, %3, %3, %3
  br label %17

13:                                               ; preds = %3, %3
  br label %34

14:                                               ; preds = %3
  br label %17

15:                                               ; preds = %3
  %16 = call i32 @vxge_assert(i32 0)
  br label %34

17:                                               ; preds = %14, %12, %8
  %18 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %4, align 8
  %19 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.__vxge_hw_device.0*, i32, i32)*, i32 (%struct.__vxge_hw_device.0*, i32, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.__vxge_hw_device.0*, i32, i32)* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %4, align 8
  %25 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.__vxge_hw_device.0*, i32, i32)*, i32 (%struct.__vxge_hw_device.0*, i32, i32)** %26, align 8
  %28 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %4, align 8
  %29 = bitcast %struct.__vxge_hw_device* %28 to %struct.__vxge_hw_device.0*
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 %27(%struct.__vxge_hw_device.0* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %23, %17
  br label %34

34:                                               ; preds = %33, %15, %13, %11, %10, %9
  %35 = load i32, i32* @VXGE_HW_OK, align 4
  ret i32 %35
}

declare dso_local i32 @vxge_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
