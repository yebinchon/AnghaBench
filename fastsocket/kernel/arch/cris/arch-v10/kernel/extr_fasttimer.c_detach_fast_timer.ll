; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_fasttimer.c_detach_fast_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_fasttimer.c_detach_fast_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fast_timer = type { %struct.fast_timer*, %struct.fast_timer* }

@fast_timer_list = common dso_local global %struct.fast_timer* null, align 8
@fast_timers_deleted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fast_timer*)* @detach_fast_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detach_fast_timer(%struct.fast_timer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fast_timer*, align 8
  %4 = alloca %struct.fast_timer*, align 8
  %5 = alloca %struct.fast_timer*, align 8
  store %struct.fast_timer* %0, %struct.fast_timer** %3, align 8
  %6 = load %struct.fast_timer*, %struct.fast_timer** %3, align 8
  %7 = call i32 @fast_timer_pending(%struct.fast_timer* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.fast_timer*, %struct.fast_timer** %3, align 8
  %12 = getelementptr inbounds %struct.fast_timer, %struct.fast_timer* %11, i32 0, i32 0
  %13 = load %struct.fast_timer*, %struct.fast_timer** %12, align 8
  store %struct.fast_timer* %13, %struct.fast_timer** %4, align 8
  %14 = load %struct.fast_timer*, %struct.fast_timer** %3, align 8
  %15 = getelementptr inbounds %struct.fast_timer, %struct.fast_timer* %14, i32 0, i32 1
  %16 = load %struct.fast_timer*, %struct.fast_timer** %15, align 8
  store %struct.fast_timer* %16, %struct.fast_timer** %5, align 8
  %17 = load %struct.fast_timer*, %struct.fast_timer** %4, align 8
  %18 = icmp ne %struct.fast_timer* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = load %struct.fast_timer*, %struct.fast_timer** %5, align 8
  %21 = load %struct.fast_timer*, %struct.fast_timer** %4, align 8
  %22 = getelementptr inbounds %struct.fast_timer, %struct.fast_timer* %21, i32 0, i32 1
  store %struct.fast_timer* %20, %struct.fast_timer** %22, align 8
  br label %23

23:                                               ; preds = %19, %10
  %24 = load %struct.fast_timer*, %struct.fast_timer** %5, align 8
  %25 = icmp ne %struct.fast_timer* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.fast_timer*, %struct.fast_timer** %4, align 8
  %28 = load %struct.fast_timer*, %struct.fast_timer** %5, align 8
  %29 = getelementptr inbounds %struct.fast_timer, %struct.fast_timer* %28, i32 0, i32 0
  store %struct.fast_timer* %27, %struct.fast_timer** %29, align 8
  br label %32

30:                                               ; preds = %23
  %31 = load %struct.fast_timer*, %struct.fast_timer** %4, align 8
  store %struct.fast_timer* %31, %struct.fast_timer** @fast_timer_list, align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, i32* @fast_timers_deleted, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @fast_timers_deleted, align 4
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @fast_timer_pending(%struct.fast_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
