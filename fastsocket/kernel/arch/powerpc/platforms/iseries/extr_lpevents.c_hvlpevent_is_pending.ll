; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_lpevents.c_hvlpevent_is_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_lpevents.c_hvlpevent_is_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.HvLpEvent = type { i32 }

@spread_lpevents = common dso_local global i64 0, align 8
@hvlpevent_queue = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hvlpevent_is_pending() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.HvLpEvent*, align 8
  %3 = call i64 (...) @smp_processor_id()
  %4 = load i64, i64* @spread_lpevents, align 8
  %5 = icmp sge i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %19

7:                                                ; preds = %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hvlpevent_queue, i32 0, i32 1), align 8
  %9 = inttoptr i64 %8 to %struct.HvLpEvent*
  store %struct.HvLpEvent* %9, %struct.HvLpEvent** %2, align 8
  %10 = load %struct.HvLpEvent*, %struct.HvLpEvent** %2, align 8
  %11 = call i64 @hvlpevent_is_valid(%struct.HvLpEvent* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hvlpevent_queue, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi i1 [ true, %7 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %16, %6
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i64 @hvlpevent_is_valid(%struct.HvLpEvent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
