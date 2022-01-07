; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/shmobile/extr_pm_runtime.c___platform_pm_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/shmobile/extr_pm_runtime.c___platform_pm_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.pdev_archdata, %struct.device }
%struct.pdev_archdata = type { i32, i32 }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.device*)* }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"__platform_pm_runtime_suspend() [%d]\0A\00", align 1
@PDEV_ARCHDATA_FLAG_IDLE = common dso_local global i32 0, align 4
@hwblk_info = common dso_local global i32 0, align 4
@PDEV_ARCHDATA_FLAG_SUSP = common dso_local global i32 0, align 4
@HWBLK_CNT_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"__platform_pm_runtime_suspend() [%d] - returns %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @__platform_pm_runtime_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__platform_pm_runtime_suspend(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pdev_archdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 1
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.pdev_archdata* %10, %struct.pdev_archdata** %4, align 8
  %11 = load %struct.pdev_archdata*, %struct.pdev_archdata** %4, align 8
  %12 = getelementptr inbounds %struct.pdev_archdata, %struct.pdev_archdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @ENOSYS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %77

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %77

30:                                               ; preds = %23
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.device*)*, i32 (%struct.device*)** %36, align 8
  %38 = icmp ne i32 (%struct.device*)* %37, null
  br i1 %38, label %39, label %77

39:                                               ; preds = %30
  %40 = load i32, i32* @PDEV_ARCHDATA_FLAG_IDLE, align 4
  %41 = load %struct.pdev_archdata*, %struct.pdev_archdata** %4, align 8
  %42 = getelementptr inbounds %struct.pdev_archdata, %struct.pdev_archdata* %41, i32 0, i32 1
  %43 = call i32 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load i32, i32* @hwblk_info, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @hwblk_enable(i32 %48, i32 %49)
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = getelementptr inbounds %struct.device, %struct.device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32 (%struct.device*)*, i32 (%struct.device*)** %56, align 8
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = call i32 %57(%struct.device* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @hwblk_info, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @hwblk_disable(i32 %60, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %39
  %66 = load i32, i32* @PDEV_ARCHDATA_FLAG_SUSP, align 4
  %67 = load %struct.pdev_archdata*, %struct.pdev_archdata** %4, align 8
  %68 = getelementptr inbounds %struct.pdev_archdata, %struct.pdev_archdata* %67, i32 0, i32 1
  %69 = call i32 @set_bit(i32 %66, i32* %68)
  %70 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %71 = call i32 @platform_pm_runtime_not_idle(%struct.platform_device* %70)
  %72 = load i32, i32* @hwblk_info, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @HWBLK_CNT_IDLE, align 4
  %75 = call i32 @hwblk_cnt_dec(i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %65, %39
  br label %77

77:                                               ; preds = %76, %30, %23, %1
  %78 = load %struct.device*, %struct.device** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %78, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hwblk_enable(i32, i32) #1

declare dso_local i32 @hwblk_disable(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @platform_pm_runtime_not_idle(%struct.platform_device*) #1

declare dso_local i32 @hwblk_cnt_dec(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
