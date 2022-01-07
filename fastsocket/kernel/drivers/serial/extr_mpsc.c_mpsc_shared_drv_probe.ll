; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_shared_drv_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_shared_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.platform_device = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.mpsc_shared_pdata = type { i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@mpsc_shared_regs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mpsc_shared_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpsc_shared_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mpsc_shared_pdata*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load i32, i32* @ENODEV, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %1
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = call i32 @mpsc_shared_map_regs(%struct.platform_device* %12)
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %11
  %16 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.mpsc_shared_pdata*
  store %struct.mpsc_shared_pdata* %20, %struct.mpsc_shared_pdata** %3, align 8
  %21 = load %struct.mpsc_shared_pdata*, %struct.mpsc_shared_pdata** %3, align 8
  %22 = getelementptr inbounds %struct.mpsc_shared_pdata, %struct.mpsc_shared_pdata* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mpsc_shared_regs, i32 0, i32 4), align 4
  %24 = load %struct.mpsc_shared_pdata*, %struct.mpsc_shared_pdata** %3, align 8
  %25 = getelementptr inbounds %struct.mpsc_shared_pdata, %struct.mpsc_shared_pdata* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mpsc_shared_regs, i32 0, i32 3), align 4
  %27 = load %struct.mpsc_shared_pdata*, %struct.mpsc_shared_pdata** %3, align 8
  %28 = getelementptr inbounds %struct.mpsc_shared_pdata, %struct.mpsc_shared_pdata* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mpsc_shared_regs, i32 0, i32 2), align 4
  %30 = load %struct.mpsc_shared_pdata*, %struct.mpsc_shared_pdata** %3, align 8
  %31 = getelementptr inbounds %struct.mpsc_shared_pdata, %struct.mpsc_shared_pdata* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mpsc_shared_regs, i32 0, i32 1), align 4
  %33 = load %struct.mpsc_shared_pdata*, %struct.mpsc_shared_pdata** %3, align 8
  %34 = getelementptr inbounds %struct.mpsc_shared_pdata, %struct.mpsc_shared_pdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mpsc_shared_regs, i32 0, i32 0), align 4
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %15, %11
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @mpsc_shared_map_regs(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
