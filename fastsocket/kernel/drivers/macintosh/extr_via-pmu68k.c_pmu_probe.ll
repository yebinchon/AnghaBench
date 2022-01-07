; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu68k.c_pmu_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu68k.c_pmu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@macintosh_config = common dso_local global %struct.TYPE_2__* null, align 8
@MAC_ADB_PB1 = common dso_local global i64 0, align 8
@PMU_68K_V1 = common dso_local global i32 0, align 4
@pmu_kind = common dso_local global i32 0, align 4
@MAC_ADB_PB2 = common dso_local global i64 0, align 8
@PMU_68K_V2 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@idle = common dso_local global i32 0, align 4
@pmu_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmu_probe() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macintosh_config, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @MAC_ADB_PB1, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @PMU_68K_V1, align 4
  store i32 %8, i32* @pmu_kind, align 4
  br label %21

9:                                                ; preds = %0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macintosh_config, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAC_ADB_PB2, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @PMU_68K_V2, align 4
  store i32 %16, i32* @pmu_kind, align 4
  br label %20

17:                                               ; preds = %9
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %1, align 4
  br label %23

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %7
  %22 = load i32, i32* @idle, align 4
  store i32 %22, i32* @pmu_state, align 4
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
