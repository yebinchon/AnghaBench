; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_viodasd.c_probe_disks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_viodasd.c_probe_disks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viodasd_device = type { i32* }
%struct.device_driver = type { i32 }

@viodasd_devices = common dso_local global %struct.viodasd_device* null, align 8
@MAX_DISKNO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_driver*, i8*, i64)* @probe_disks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @probe_disks(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.viodasd_device*, align 8
  store %struct.device_driver* %0, %struct.device_driver** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.viodasd_device*, %struct.viodasd_device** @viodasd_devices, align 8
  store %struct.viodasd_device* %8, %struct.viodasd_device** %7, align 8
  br label %9

9:                                                ; preds = %24, %3
  %10 = load %struct.viodasd_device*, %struct.viodasd_device** %7, align 8
  %11 = load %struct.viodasd_device*, %struct.viodasd_device** @viodasd_devices, align 8
  %12 = load i64, i64* @MAX_DISKNO, align 8
  %13 = getelementptr inbounds %struct.viodasd_device, %struct.viodasd_device* %11, i64 %12
  %14 = icmp ult %struct.viodasd_device* %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct.viodasd_device*, %struct.viodasd_device** %7, align 8
  %17 = getelementptr inbounds %struct.viodasd_device, %struct.viodasd_device* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.viodasd_device*, %struct.viodasd_device** %7, align 8
  %22 = call i32 @probe_disk(%struct.viodasd_device* %21)
  br label %23

23:                                               ; preds = %20, %15
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.viodasd_device*, %struct.viodasd_device** %7, align 8
  %26 = getelementptr inbounds %struct.viodasd_device, %struct.viodasd_device* %25, i32 1
  store %struct.viodasd_device* %26, %struct.viodasd_device** %7, align 8
  br label %9

27:                                               ; preds = %9
  %28 = load i64, i64* %6, align 8
  ret i64 %28
}

declare dso_local i32 @probe_disk(%struct.viodasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
