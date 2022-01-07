; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_time.c___delay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_time.c___delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__delay(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = call i64 (...) @__USE_RTC()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = call i64 (...) @get_rtcl()
  store i64 %8, i64* %3, align 8
  br label %9

9:                                                ; preds = %20, %7
  %10 = call i64 (...) @get_rtcl()
  %11 = load i64, i64* %3, align 8
  %12 = sub i64 %10, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1000000000
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %9
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %2, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %9, label %25

25:                                               ; preds = %20
  br label %38

26:                                               ; preds = %1
  %27 = call i64 (...) @get_tbl()
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %34, %26
  %29 = call i64 (...) @get_tbl()
  %30 = load i64, i64* %3, align 8
  %31 = sub i64 %29, %30
  %32 = load i64, i64* %2, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 (...) @HMT_low()
  br label %28

36:                                               ; preds = %28
  %37 = call i32 (...) @HMT_medium()
  br label %38

38:                                               ; preds = %36, %25
  ret void
}

declare dso_local i64 @__USE_RTC(...) #1

declare dso_local i64 @get_rtcl(...) #1

declare dso_local i64 @get_tbl(...) #1

declare dso_local i32 @HMT_low(...) #1

declare dso_local i32 @HMT_medium(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
