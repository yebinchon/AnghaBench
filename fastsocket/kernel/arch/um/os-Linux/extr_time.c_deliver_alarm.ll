; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_time.c_deliver_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_time.c_deliver_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UM_NSEC_PER_SEC = common dso_local global i32 0, align 4
@UM_HZ = common dso_local global i32 0, align 4
@last_tick = common dso_local global i64 0, align 8
@skew = common dso_local global i32 0, align 4
@SIGVTALRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @deliver_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deliver_alarm() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i64 (...) @os_nsecs()
  store i64 %3, i64* %1, align 8
  %4 = load i32, i32* @UM_NSEC_PER_SEC, align 4
  %5 = load i32, i32* @UM_HZ, align 4
  %6 = sdiv i32 %4, %5
  store i32 %6, i32* %2, align 4
  %7 = load i64, i64* @last_tick, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %0
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @last_tick, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i64, i64* @last_tick, align 8
  store i64 %14, i64* %1, align 8
  br label %15

15:                                               ; preds = %13, %9, %0
  %16 = load i64, i64* @last_tick, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i64, i64* %1, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = sub i64 %19, %21
  store i64 %22, i64* @last_tick, align 8
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i64, i64* %1, align 8
  %25 = load i64, i64* @last_tick, align 8
  %26 = sub i64 %24, %25
  %27 = load i32, i32* @skew, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* @skew, align 4
  br label %31

31:                                               ; preds = %35, %23
  %32 = load i32, i32* @skew, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* @SIGVTALRM, align 4
  %37 = call i32 @alarm_handler(i32 %36, i32* null)
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @skew, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* @skew, align 4
  br label %31

41:                                               ; preds = %31
  %42 = load i64, i64* %1, align 8
  store i64 %42, i64* @last_tick, align 8
  ret void
}

declare dso_local i64 @os_nsecs(...) #1

declare dso_local i32 @alarm_handler(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
