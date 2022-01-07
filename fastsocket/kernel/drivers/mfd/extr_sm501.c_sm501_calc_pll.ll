; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_calc_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_calc_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm501_clock = type { i32, i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.sm501_clock*, i32)* @sm501_calc_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sm501_calc_pll(i64 %0, %struct.sm501_clock* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.sm501_clock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.sm501_clock* %1, %struct.sm501_clock** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 999999999, i64* %11, align 8
  store i32 2, i32* %8, align 4
  br label %12

12:                                               ; preds = %58, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp ule i32 %13, 255
  br i1 %14, label %15, label %61

15:                                               ; preds = %12
  store i32 2, i32* %9, align 4
  br label %16

16:                                               ; preds = %54, %15
  %17 = load i32, i32* %9, align 4
  %18 = icmp ule i32 %17, 127
  br i1 %18, label %19, label %57

19:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %50, %19
  %21 = load i32, i32* %10, align 4
  %22 = icmp ule i32 %21, 1
  br i1 %22, label %23, label %53

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = mul i64 24000000, %25
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = udiv i64 %26, %28
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = lshr i64 %29, %31
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.sm501_clock*, %struct.sm501_clock** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @sm501_calc_clock(i64 %33, %struct.sm501_clock* %34, i32 %35, i64 %36, i64* %11)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %23
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.sm501_clock*, %struct.sm501_clock** %5, align 8
  %42 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.sm501_clock*, %struct.sm501_clock** %5, align 8
  %45 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.sm501_clock*, %struct.sm501_clock** %5, align 8
  %48 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %39, %23
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %20

53:                                               ; preds = %20
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %16

57:                                               ; preds = %16
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %12

61:                                               ; preds = %12
  %62 = load %struct.sm501_clock*, %struct.sm501_clock** %5, align 8
  %63 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.sm501_clock*, %struct.sm501_clock** %5, align 8
  %66 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.sm501_clock*, %struct.sm501_clock** %5, align 8
  %69 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = shl i64 %67, %70
  %72 = udiv i64 %64, %71
  ret i64 %72
}

declare dso_local i64 @sm501_calc_clock(i64, %struct.sm501_clock*, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
