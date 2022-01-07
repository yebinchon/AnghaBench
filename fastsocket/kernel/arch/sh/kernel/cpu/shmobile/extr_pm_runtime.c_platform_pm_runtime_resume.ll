; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/shmobile/extr_pm_runtime.c_platform_pm_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/shmobile/extr_pm_runtime.c_platform_pm_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { %struct.pdev_archdata }
%struct.pdev_archdata = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"platform_pm_runtime_resume() [%d]\0A\00", align 1
@PDEV_ARCHDATA_FLAG_INIT = common dso_local global i32 0, align 4
@PDEV_ARCHDATA_FLAG_SUSP = common dso_local global i32 0, align 4
@hwblk_info = common dso_local global i32 0, align 4
@HWBLK_CNT_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"platform_pm_runtime_resume() [%d] returns %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @platform_pm_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pdev_archdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.platform_device* @to_platform_device(%struct.device* %7)
  store %struct.platform_device* %8, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.pdev_archdata* %10, %struct.pdev_archdata** %4, align 8
  %11 = load %struct.pdev_archdata*, %struct.pdev_archdata** %4, align 8
  %12 = getelementptr inbounds %struct.pdev_archdata, %struct.pdev_archdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load %struct.device*, %struct.device** %2, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %56

20:                                               ; preds = %1
  %21 = call i32 (...) @might_sleep()
  %22 = load %struct.pdev_archdata*, %struct.pdev_archdata** %4, align 8
  %23 = getelementptr inbounds %struct.pdev_archdata, %struct.pdev_archdata* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = call i32 @platform_pm_runtime_not_idle(%struct.platform_device* %25)
  %27 = load i32, i32* @PDEV_ARCHDATA_FLAG_INIT, align 4
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.pdev_archdata, %struct.pdev_archdata* %29, i32 0, i32 2
  %31 = call i32 @test_bit(i32 %27, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* @PDEV_ARCHDATA_FLAG_SUSP, align 4
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.pdev_archdata, %struct.pdev_archdata* %36, i32 0, i32 2
  %38 = call i32 @test_bit(i32 %34, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @hwblk_info, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @HWBLK_CNT_IDLE, align 4
  %44 = call i32 @hwblk_cnt_dec(i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %33, %20
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = call i32 @__platform_pm_runtime_resume(%struct.platform_device* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @PDEV_ARCHDATA_FLAG_INIT, align 4
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.pdev_archdata, %struct.pdev_archdata* %50, i32 0, i32 2
  %52 = call i32 @clear_bit(i32 %48, i32* %51)
  %53 = load %struct.pdev_archdata*, %struct.pdev_archdata** %4, align 8
  %54 = getelementptr inbounds %struct.pdev_archdata, %struct.pdev_archdata* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  br label %56

56:                                               ; preds = %45, %19
  %57 = load %struct.device*, %struct.device** %2, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %57, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @platform_pm_runtime_not_idle(%struct.platform_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hwblk_cnt_dec(i32, i32, i32) #1

declare dso_local i32 @__platform_pm_runtime_resume(%struct.platform_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
