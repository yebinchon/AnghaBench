; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mmtimer.c_mmtimer_disable_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mmtimer.c_mmtimer_disable_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SH_RTC1_INT_ENABLE = common dso_local global i32 0, align 4
@SH_RTC2_INT_ENABLE = common dso_local global i32 0, align 4
@SH_RTC3_INT_ENABLE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @mmtimer_disable_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmtimer_disable_int(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %49 [
    i32 0, label %7
    i32 1, label %21
    i32 2, label %35
  ]

7:                                                ; preds = %2
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %8, -1
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i32, i32* @SH_RTC1_INT_ENABLE, align 4
  %12 = call i64 @LOCAL_MMR_ADDR(i32 %11)
  %13 = inttoptr i64 %12 to i32*
  %14 = call i32 @HUB_S(i32* %13, i64 0)
  br label %19

15:                                               ; preds = %7
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* @SH_RTC1_INT_ENABLE, align 4
  %18 = call i32 @REMOTE_HUB_S(i64 %16, i32 %17, i64 0)
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i32 [ %14, %10 ], [ %18, %15 ]
  br label %52

21:                                               ; preds = %2
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %22, -1
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* @SH_RTC2_INT_ENABLE, align 4
  %26 = call i64 @LOCAL_MMR_ADDR(i32 %25)
  %27 = inttoptr i64 %26 to i32*
  %28 = call i32 @HUB_S(i32* %27, i64 0)
  br label %33

29:                                               ; preds = %21
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* @SH_RTC2_INT_ENABLE, align 4
  %32 = call i32 @REMOTE_HUB_S(i64 %30, i32 %31, i64 0)
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i32 [ %28, %24 ], [ %32, %29 ]
  br label %52

35:                                               ; preds = %2
  %36 = load i64, i64* %4, align 8
  %37 = icmp eq i64 %36, -1
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* @SH_RTC3_INT_ENABLE, align 4
  %40 = call i64 @LOCAL_MMR_ADDR(i32 %39)
  %41 = inttoptr i64 %40 to i32*
  %42 = call i32 @HUB_S(i32* %41, i64 0)
  br label %47

43:                                               ; preds = %35
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* @SH_RTC3_INT_ENABLE, align 4
  %46 = call i32 @REMOTE_HUB_S(i64 %44, i32 %45, i64 0)
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i32 [ %42, %38 ], [ %46, %43 ]
  br label %52

49:                                               ; preds = %2
  %50 = load i32, i32* @EFAULT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %47, %33, %19
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @HUB_S(i32*, i64) #1

declare dso_local i64 @LOCAL_MMR_ADDR(i32) #1

declare dso_local i32 @REMOTE_HUB_S(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
