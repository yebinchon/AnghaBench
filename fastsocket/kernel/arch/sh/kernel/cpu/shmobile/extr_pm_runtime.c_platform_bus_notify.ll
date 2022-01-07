; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/shmobile/extr_pm_runtime.c_platform_bus_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/shmobile/extr_pm_runtime.c_platform_bus_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@hwblk_info = common dso_local global i32 0, align 4
@PDEV_ARCHDATA_FLAG_INIT = common dso_local global i32 0, align 4
@HWBLK_CNT_DEVICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @platform_bus_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_bus_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.device*
  store %struct.device* %12, %struct.device** %8, align 8
  %13 = load %struct.device*, %struct.device** %8, align 8
  %14 = call %struct.platform_device* @to_platform_device(%struct.device* %13)
  store %struct.platform_device* %14, %struct.platform_device** %9, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  switch i64 %23, label %60 [
    i64 131, label %24
    i64 130, label %44
    i64 128, label %49
    i64 129, label %59
  ]

24:                                               ; preds = %22
  %25 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load i32, i32* @hwblk_info, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @hwblk_enable(i32 %33, i32 %34)
  %36 = load i32, i32* @hwblk_info, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @hwblk_disable(i32 %36, i32 %37)
  %39 = load i32, i32* @PDEV_ARCHDATA_FLAG_INIT, align 4
  %40 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call i32 @__set_bit(i32 %39, i32* %42)
  br label %60

44:                                               ; preds = %22
  %45 = load i32, i32* @hwblk_info, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @HWBLK_CNT_DEVICES, align 4
  %48 = call i32 @hwblk_cnt_inc(i32 %45, i32 %46, i32 %47)
  br label %60

49:                                               ; preds = %22
  %50 = load i32, i32* @hwblk_info, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @HWBLK_CNT_DEVICES, align 4
  %53 = call i32 @hwblk_cnt_dec(i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* @PDEV_ARCHDATA_FLAG_INIT, align 4
  %55 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = call i32 @__set_bit(i32 %54, i32* %57)
  br label %60

59:                                               ; preds = %22
  br label %60

60:                                               ; preds = %22, %59, %49, %44, %24
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %21
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @hwblk_enable(i32, i32) #1

declare dso_local i32 @hwblk_disable(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @hwblk_cnt_inc(i32, i32, i32) #1

declare dso_local i32 @hwblk_cnt_dec(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
