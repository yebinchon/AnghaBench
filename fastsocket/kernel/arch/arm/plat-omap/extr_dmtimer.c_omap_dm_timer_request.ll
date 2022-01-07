; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dmtimer.c_omap_dm_timer_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dmtimer.c_omap_dm_timer_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dm_timer = type { i32 }

@dm_timer_lock = common dso_local global i32 0, align 4
@dm_timer_count = common dso_local global i32 0, align 4
@dm_timers = common dso_local global %struct.omap_dm_timer* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.omap_dm_timer* @omap_dm_timer_request() #0 {
  %1 = alloca %struct.omap_dm_timer*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store %struct.omap_dm_timer* null, %struct.omap_dm_timer** %1, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @dm_timer_lock, i64 %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %26, %0
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @dm_timer_count, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** @dm_timers, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %11, i64 %13
  %15 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %26

19:                                               ; preds = %10
  %20 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** @dm_timers, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %20, i64 %22
  store %struct.omap_dm_timer* %23, %struct.omap_dm_timer** %1, align 8
  %24 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %1, align 8
  %25 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %6

29:                                               ; preds = %19, %6
  %30 = load i64, i64* %2, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* @dm_timer_lock, i64 %30)
  %32 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %1, align 8
  %33 = icmp ne %struct.omap_dm_timer* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %1, align 8
  %36 = call i32 @omap_dm_timer_prepare(%struct.omap_dm_timer* %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %1, align 8
  ret %struct.omap_dm_timer* %38
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @omap_dm_timer_prepare(%struct.omap_dm_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
