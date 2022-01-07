; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_cmm.c_cmm_set_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_cmm.c_cmm_set_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }

@cmm_timed_pages_target = common dso_local global i64 0, align 8
@cmm_timeout_seconds = common dso_local global i32 0, align 4
@cmm_timer = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@cmm_timer_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cmm_set_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmm_set_timer() #0 {
  %1 = load i64, i64* @cmm_timed_pages_target, align 8
  %2 = icmp sle i64 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @cmm_timeout_seconds, align 4
  %5 = icmp sle i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3, %0
  %7 = call i64 @timer_pending(%struct.TYPE_6__* @cmm_timer)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 @del_timer(%struct.TYPE_6__* @cmm_timer)
  br label %11

11:                                               ; preds = %9, %6
  br label %35

12:                                               ; preds = %3
  %13 = call i64 @timer_pending(%struct.TYPE_6__* @cmm_timer)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i32, i32* @cmm_timeout_seconds, align 4
  %18 = load i32, i32* @HZ, align 4
  %19 = mul nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %16, %20
  %22 = call i64 @mod_timer(%struct.TYPE_6__* @cmm_timer, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %35

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %12
  %27 = load i32, i32* @cmm_timer_fn, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cmm_timer, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cmm_timer, i32 0, i32 1), align 8
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i32, i32* @cmm_timeout_seconds, align 4
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %28, %32
  store i64 %33, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cmm_timer, i32 0, i32 0), align 8
  %34 = call i32 @add_timer(%struct.TYPE_6__* @cmm_timer)
  br label %35

35:                                               ; preds = %26, %24, %11
  ret void
}

declare dso_local i64 @timer_pending(%struct.TYPE_6__*) #1

declare dso_local i32 @del_timer(%struct.TYPE_6__*) #1

declare dso_local i64 @mod_timer(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
