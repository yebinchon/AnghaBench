; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_calc_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_calc_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm501_clock = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.sm501_clock*, i32, i64, i64*)* @sm501_calc_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501_calc_clock(i64 %0, %struct.sm501_clock* %1, i32 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.sm501_clock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store %struct.sm501_clock* %1, %struct.sm501_clock** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %15

15:                                               ; preds = %58, %5
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %61

19:                                               ; preds = %15
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %54, %19
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %57

23:                                               ; preds = %20
  %24 = load i64, i64* %9, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = shl i32 %25, %26
  %28 = call i64 @sm501fb_round_div(i64 %24, i32 %27)
  %29 = load i64, i64* %6, align 8
  %30 = sub i64 %28, %29
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i64, i64* %14, align 8
  %35 = sub nsw i64 0, %34
  store i64 %35, i64* %14, align 8
  br label %36

36:                                               ; preds = %33, %23
  %37 = load i64, i64* %14, align 8
  %38 = load i64*, i64** %10, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load i64, i64* %14, align 8
  %43 = load i64*, i64** %10, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.sm501_clock*, %struct.sm501_clock** %7, align 8
  %46 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.sm501_clock*, %struct.sm501_clock** %7, align 8
  %49 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.sm501_clock*, %struct.sm501_clock** %7, align 8
  %52 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  store i32 1, i32* %11, align 4
  br label %53

53:                                               ; preds = %41, %36
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %20

57:                                               ; preds = %20
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 2
  store i32 %60, i32* %12, align 4
  br label %15

61:                                               ; preds = %15
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local i64 @sm501fb_round_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
