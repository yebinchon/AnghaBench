; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_pmu_enable_irled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_pmu_enable_irled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32 }

@vias = common dso_local global i32* null, align 8
@pmu_kind = common dso_local global i64 0, align 8
@PMU_KEYLARGO_BASED = common dso_local global i64 0, align 8
@PMU_POWER_CTRL = common dso_local global i32 0, align 4
@PMU_POW_IRLED = common dso_local global i32 0, align 4
@PMU_POW_ON = common dso_local global i32 0, align 4
@PMU_POW_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmu_enable_irled(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adb_request, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** @vias, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %26

7:                                                ; preds = %1
  %8 = load i64, i64* @pmu_kind, align 8
  %9 = load i64, i64* @PMU_KEYLARGO_BASED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %26

12:                                               ; preds = %7
  %13 = load i32, i32* @PMU_POWER_CTRL, align 4
  %14 = load i32, i32* @PMU_POW_IRLED, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @PMU_POW_ON, align 4
  br label %21

19:                                               ; preds = %12
  %20 = load i32, i32* @PMU_POW_OFF, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = or i32 %14, %22
  %24 = call i32 @pmu_request(%struct.adb_request* %3, i32* null, i32 2, i32 %13, i32 %23)
  %25 = call i32 @pmu_wait_complete(%struct.adb_request* %3)
  br label %26

26:                                               ; preds = %21, %11, %6
  ret void
}

declare dso_local i32 @pmu_request(%struct.adb_request*, i32*, i32, i32, i32) #1

declare dso_local i32 @pmu_wait_complete(%struct.adb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
