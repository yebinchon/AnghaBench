; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/shmobile/extr_pm_runtime.c_platform_pm_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/shmobile/extr_pm_runtime.c_platform_pm_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { %struct.pdev_archdata }
%struct.pdev_archdata = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"platform_pm_runtime_suspend() [%d]\0A\00", align 1
@PDEV_ARCHDATA_FLAG_INIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@hwblk_info = common dso_local global i32 0, align 4
@hwblk_lock = common dso_local global i32 0, align 4
@hwblk_idle_list = common dso_local global i32 0, align 4
@PDEV_ARCHDATA_FLAG_IDLE = common dso_local global i32 0, align 4
@HWBLK_CNT_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"platform_pm_runtime_suspend() [%d] returns %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @platform_pm_runtime_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pdev_archdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.platform_device* @to_platform_device(%struct.device* %8)
  store %struct.platform_device* %9, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.pdev_archdata* %11, %struct.pdev_archdata** %4, align 8
  %12 = load %struct.pdev_archdata*, %struct.pdev_archdata** %4, align 8
  %13 = getelementptr inbounds %struct.pdev_archdata, %struct.pdev_archdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.device*, %struct.device** %2, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %59

21:                                               ; preds = %1
  %22 = call i32 (...) @might_sleep()
  %23 = load i32, i32* @PDEV_ARCHDATA_FLAG_INIT, align 4
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.pdev_archdata, %struct.pdev_archdata* %25, i32 0, i32 2
  %27 = call i64 @test_bit(i32 %23, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %59

32:                                               ; preds = %21
  %33 = load %struct.pdev_archdata*, %struct.pdev_archdata** %4, align 8
  %34 = getelementptr inbounds %struct.pdev_archdata, %struct.pdev_archdata* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* @hwblk_info, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @hwblk_disable(i32 %36, i32 %37)
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_lock_irqsave(i32* @hwblk_lock, i64 %39)
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.pdev_archdata, %struct.pdev_archdata* %42, i32 0, i32 3
  %44 = call i32 @list_add_tail(i32* %43, i32* @hwblk_idle_list)
  %45 = load i32, i32* @PDEV_ARCHDATA_FLAG_IDLE, align 4
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.pdev_archdata, %struct.pdev_archdata* %47, i32 0, i32 2
  %49 = call i32 @__set_bit(i32 %45, i32* %48)
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* @hwblk_lock, i64 %50)
  %52 = load i32, i32* @hwblk_info, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @HWBLK_CNT_IDLE, align 4
  %55 = call i32 @hwblk_cnt_inc(i32 %52, i32 %53, i32 %54)
  %56 = load %struct.pdev_archdata*, %struct.pdev_archdata** %4, align 8
  %57 = getelementptr inbounds %struct.pdev_archdata, %struct.pdev_archdata* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  br label %59

59:                                               ; preds = %32, %29, %20
  %60 = load %struct.device*, %struct.device** %2, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %60, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hwblk_disable(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hwblk_cnt_inc(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
