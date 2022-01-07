; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_time.c_do_set_rtc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_time.c_do_set_rtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@next_rtc_update = common dso_local global i64 0, align 8
@xtime = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@tick_nsec = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_set_rtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_set_rtc() #0 {
  %1 = call i32 (...) @ntp_synced()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %37

4:                                                ; preds = %0
  %5 = load i64, i64* @next_rtc_update, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 1), align 8
  %9 = load i64, i64* @next_rtc_update, align 8
  %10 = call i64 @time_before(i64 %8, i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %37

13:                                               ; preds = %7, %4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 0), align 8
  %15 = load i64, i64* @tick_nsec, align 8
  %16 = trunc i64 %15 to i32
  %17 = lshr i32 %16, 1
  %18 = sub i32 500000000, %17
  %19 = icmp ult i32 %14, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 0), align 8
  %22 = load i64, i64* @tick_nsec, align 8
  %23 = trunc i64 %22 to i32
  %24 = lshr i32 %23, 1
  %25 = add i32 500000000, %24
  %26 = icmp uge i32 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %37

28:                                               ; preds = %20, %13
  %29 = call i64 (...) @set_rtc()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 1), align 8
  %33 = add nsw i64 %32, 60
  store i64 %33, i64* @next_rtc_update, align 8
  br label %37

34:                                               ; preds = %28
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 1), align 8
  %36 = add nsw i64 %35, 660
  store i64 %36, i64* @next_rtc_update, align 8
  br label %37

37:                                               ; preds = %3, %12, %27, %34, %31
  ret void
}

declare dso_local i32 @ntp_synced(...) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @set_rtc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
