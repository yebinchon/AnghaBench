; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_pgid.c_nop_build_cp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_pgid.c_nop_build_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ccw1*, %struct.ccw_request }
%struct.ccw1 = type { i32, i64, i64, i32 }
%struct.ccw_request = type { %struct.ccw1* }

@CCW_CMD_NOOP = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @nop_build_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nop_build_cp(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.ccw_request*, align 8
  %4 = alloca %struct.ccw1*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %5 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %6 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store %struct.ccw_request* %8, %struct.ccw_request** %3, align 8
  %9 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %10 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ccw1*, %struct.ccw1** %12, align 8
  store %struct.ccw1* %13, %struct.ccw1** %4, align 8
  %14 = load i32, i32* @CCW_CMD_NOOP, align 4
  %15 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %16 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %18 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %20 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @CCW_FLAG_SLI, align 4
  %22 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %23 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %25 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %26 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %25, i32 0, i32 0
  store %struct.ccw1* %24, %struct.ccw1** %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
