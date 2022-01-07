; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-vr41xx.c_read_elapsed_second.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-vr41xx.c_read_elapsed_second.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETIMELREG = common dso_local global i32 0, align 4
@ETIMEMREG = common dso_local global i32 0, align 4
@ETIMEHREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @read_elapsed_second to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_elapsed_second() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  br label %7

7:                                                ; preds = %32, %0
  %8 = load i32, i32* @ETIMELREG, align 4
  %9 = call i64 @rtc1_read(i32 %8)
  store i64 %9, i64* %1, align 8
  %10 = load i32, i32* @ETIMEMREG, align 4
  %11 = call i64 @rtc1_read(i32 %10)
  store i64 %11, i64* %2, align 8
  %12 = load i32, i32* @ETIMEHREG, align 4
  %13 = call i64 @rtc1_read(i32 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i32, i32* @ETIMELREG, align 4
  %15 = call i64 @rtc1_read(i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i32, i32* @ETIMEMREG, align 4
  %17 = call i64 @rtc1_read(i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i32, i32* @ETIMEHREG, align 4
  %19 = call i64 @rtc1_read(i32 %18)
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %7
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %29, %30
  br label %32

32:                                               ; preds = %28, %24, %20
  %33 = phi i1 [ true, %24 ], [ true, %20 ], [ %31, %28 ]
  br i1 %33, label %7, label %34

34:                                               ; preds = %32
  %35 = load i64, i64* %3, align 8
  %36 = shl i64 %35, 17
  %37 = load i64, i64* %2, align 8
  %38 = shl i64 %37, 1
  %39 = or i64 %36, %38
  %40 = load i64, i64* %1, align 8
  %41 = lshr i64 %40, 15
  %42 = or i64 %39, %41
  ret i64 %42
}

declare dso_local i64 @rtc1_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
