; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_ops.c_ccw_device_tm_start_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_ops.c_ccw_device_tm_start_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.tcw = type { i32 }

@PAGE_DEFAULT_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccw_device_tm_start_timeout(%struct.ccw_device* %0, %struct.tcw* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ccw_device*, align 8
  %7 = alloca %struct.tcw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %6, align 8
  store %struct.tcw* %1, %struct.tcw** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %12 = load %struct.tcw*, %struct.tcw** %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @PAGE_DEFAULT_KEY, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @ccw_device_tm_start_timeout_key(%struct.ccw_device* %11, %struct.tcw* %12, i64 %13, i32 %14, i32 %15, i32 %16)
  ret i32 %17
}

declare dso_local i32 @ccw_device_tm_start_timeout_key(%struct.ccw_device*, %struct.tcw*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
