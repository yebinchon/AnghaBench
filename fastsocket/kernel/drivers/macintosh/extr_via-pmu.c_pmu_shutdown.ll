; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_pmu_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_pmu_shutdown.c"
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
@PMU_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmu_shutdown() #0 {
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
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = load i32, i32* @PMU_SET_INTR_MASK, align 4
  %12 = load i32, i32* @PMU_INT_ADB, align 4
  %13 = load i32, i32* @PMU_INT_TICK, align 4
  %14 = or i32 %12, %13
  %15 = trunc i32 %14 to i8
  %16 = call i32 (%struct.adb_request*, i32*, i32, i32, i8, ...) @pmu_request(%struct.adb_request* %1, i32* null, i32 2, i32 %11, i8 signext %15)
  %17 = call i32 @pmu_wait_complete(%struct.adb_request* %1)
  br label %20

18:                                               ; preds = %5
  %19 = call i32 @pmu_set_server_mode(i32 0)
  br label %20

20:                                               ; preds = %18, %10
  %21 = load i32, i32* @PMU_SHUTDOWN, align 4
  %22 = call i32 (%struct.adb_request*, i32*, i32, i32, i8, ...) @pmu_request(%struct.adb_request* %1, i32* null, i32 5, i32 %21, i8 signext 77, i32 65, i32 84, i32 84)
  %23 = call i32 @pmu_wait_complete(%struct.adb_request* %1)
  br label %24

24:                                               ; preds = %24, %20
  br label %24
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @pmu_request(%struct.adb_request*, i32*, i32, i32, i8 signext, ...) #1

declare dso_local i32 @pmu_wait_complete(%struct.adb_request*) #1

declare dso_local i32 @pmu_set_server_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
