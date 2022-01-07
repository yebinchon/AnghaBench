; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_find_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_find_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sm501_devdata = type { i32 }
%struct.sm501_clock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sm501_find_clock(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.sm501_devdata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sm501_clock, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.sm501_devdata* @dev_get_drvdata(%struct.device* %10)
  store %struct.sm501_devdata* %11, %struct.sm501_devdata** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %42 [
    i32 129, label %13
    i32 128, label %32
    i32 130, label %38
    i32 131, label %38
  ]

13:                                               ; preds = %3
  %14 = load %struct.sm501_devdata*, %struct.sm501_devdata** %7, align 8
  %15 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 192
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i64, i64* %6, align 8
  %20 = mul i64 2, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @sm501_calc_pll(i32 %21, %struct.sm501_clock* %9, i32 5)
  %23 = sdiv i32 %22, 2
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %8, align 8
  br label %31

25:                                               ; preds = %13
  %26 = load i64, i64* %6, align 8
  %27 = mul i64 2, %26
  %28 = call i32 @sm501_select_clock(i64 %27, %struct.sm501_clock* %9, i32 5)
  %29 = sdiv i32 %28, 2
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %25, %18
  br label %43

32:                                               ; preds = %3
  %33 = load i64, i64* %6, align 8
  %34 = mul i64 2, %33
  %35 = call i32 @sm501_select_clock(i64 %34, %struct.sm501_clock* %9, i32 3)
  %36 = sdiv i32 %35, 2
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %8, align 8
  br label %43

38:                                               ; preds = %3, %3
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @sm501_select_clock(i64 %39, %struct.sm501_clock* %9, i32 3)
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %8, align 8
  br label %43

42:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %43

43:                                               ; preds = %42, %38, %32, %31
  %44 = load i64, i64* %8, align 8
  ret i64 %44
}

declare dso_local %struct.sm501_devdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sm501_calc_pll(i32, %struct.sm501_clock*, i32) #1

declare dso_local i32 @sm501_select_clock(i64, %struct.sm501_clock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
