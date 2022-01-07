; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_pmu_restart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_pmu_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32 }

@via = common dso_local global i32* null, align 8
@drop_interrupts = common dso_local global i32 0, align 4
@pmu_kind = common dso_local global i64 0, align 8
@PMU_KEYLARGO_BASED = common dso_local global i64 0, align 8
@PMU_SET_INTR_MASK = common dso_local global i32 0, align 4
@PMU_INT_ADB = common dso_local global i32 0, align 4
@PMU_INT_TICK = common dso_local global i32 0, align 4
@PMU_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmu_restart() #0 {
  %1 = alloca %struct.adb_request, align 4
  %2 = load i32*, i32** @via, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  ret void

5:                                                ; preds = %0
  %6 = call i32 (...) @local_irq_disable()
  store i32 1, i32* @drop_interrupts, align 4
  %7 = load i64, i64* @pmu_kind, align 8
  %8 = load i64, i64* @PMU_KEYLARGO_BASED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %5
  %11 = load i32, i32* @PMU_SET_INTR_MASK, align 4
  %12 = load i32, i32* @PMU_INT_ADB, align 4
  %13 = load i32, i32* @PMU_INT_TICK, align 4
  %14 = or i32 %12, %13
  %15 = call i32 (%struct.adb_request*, i32*, i32, i32, ...) @pmu_request(%struct.adb_request* %1, i32* null, i32 2, i32 %11, i32 %14)
  br label %16

16:                                               ; preds = %21, %10
  %17 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (...) @pmu_poll()
  br label %16

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %5
  %25 = load i32, i32* @PMU_RESET, align 4
  %26 = call i32 (%struct.adb_request*, i32*, i32, i32, ...) @pmu_request(%struct.adb_request* %1, i32* null, i32 1, i32 %25)
  %27 = call i32 @pmu_wait_complete(%struct.adb_request* %1)
  br label %28

28:                                               ; preds = %28, %24
  br label %28
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @pmu_request(%struct.adb_request*, i32*, i32, i32, ...) #1

declare dso_local i32 @pmu_poll(...) #1

declare dso_local i32 @pmu_wait_complete(%struct.adb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
