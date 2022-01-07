; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_timed_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_timed_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mce_paniced = common dso_local global i32 0, align 4
@monarch_timeout = common dso_local global i32 0, align 4
@SPINUNIT = common dso_local global i64 0, align 8
@tolerant = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Timeout synchronizing machine check over CPUs\00", align 1
@cpu_missing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @mce_timed_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mce_timed_out(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  %4 = call i32 (...) @rmb()
  %5 = call i64 @atomic_read(i32* @mce_paniced)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (...) @wait_for_panic()
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* @monarch_timeout, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  br label %29

13:                                               ; preds = %9
  %14 = load i64*, i64** %3, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SPINUNIT, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32, i32* @tolerant, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @mce_panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  br label %23

23:                                               ; preds = %21, %18
  store i32 1, i32* @cpu_missing, align 4
  store i32 1, i32* %2, align 4
  br label %31

24:                                               ; preds = %13
  %25 = load i64, i64* @SPINUNIT, align 8
  %26 = load i64*, i64** %3, align 8
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, %25
  store i64 %28, i64* %26, align 8
  br label %29

29:                                               ; preds = %24, %12
  %30 = call i32 (...) @touch_nmi_watchdog()
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %23
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wait_for_panic(...) #1

declare dso_local i32 @mce_panic(i8*, i32*, i32*) #1

declare dso_local i32 @touch_nmi_watchdog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
