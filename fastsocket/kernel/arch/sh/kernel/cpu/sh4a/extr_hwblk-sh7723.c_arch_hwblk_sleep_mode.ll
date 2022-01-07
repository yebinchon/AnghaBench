; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4a/extr_hwblk-sh7723.c_arch_hwblk_sleep_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4a/extr_hwblk-sh7723.c_arch_hwblk_sleep_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@sh7723_hwblk_area = common dso_local global %struct.TYPE_2__* null, align 8
@CORE_AREA = common dso_local global i64 0, align 8
@HWBLK_CNT_USAGE = common dso_local global i64 0, align 8
@SUSP_SH_STANDBY = common dso_local global i32 0, align 4
@SUSP_SH_SF = common dso_local global i32 0, align 4
@CORE_AREA_BM = common dso_local global i64 0, align 8
@SUSP_SH_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_hwblk_sleep_mode() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh7723_hwblk_area, align 8
  %3 = load i64, i64* @CORE_AREA, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i64 %3
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @HWBLK_CNT_USAGE, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @SUSP_SH_STANDBY, align 4
  %13 = load i32, i32* @SUSP_SH_SF, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %1, align 4
  br label %31

15:                                               ; preds = %0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh7723_hwblk_area, align 8
  %17 = load i64, i64* @CORE_AREA_BM, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @HWBLK_CNT_USAGE, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @SUSP_SH_SLEEP, align 4
  %27 = load i32, i32* @SUSP_SH_SF, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %1, align 4
  br label %31

29:                                               ; preds = %15
  %30 = load i32, i32* @SUSP_SH_SLEEP, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %29, %25, %11
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
