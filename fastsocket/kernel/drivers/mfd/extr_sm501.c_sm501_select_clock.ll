; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_select_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_select_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm501_clock = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.sm501_clock*, i32)* @sm501_select_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sm501_select_clock(i64 %0, %struct.sm501_clock* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.sm501_clock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.sm501_clock* %1, %struct.sm501_clock** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 999999999, i64* %8, align 8
  store i64 288000000, i64* %7, align 8
  br label %9

9:                                                ; preds = %18, %3
  %10 = load i64, i64* %7, align 8
  %11 = icmp ule i64 %10, 336000000
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.sm501_clock*, %struct.sm501_clock** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @sm501_calc_clock(i64 %13, %struct.sm501_clock* %14, i32 %15, i64 %16, i64* %8)
  br label %18

18:                                               ; preds = %12
  %19 = load i64, i64* %7, align 8
  %20 = add i64 %19, 48000000
  store i64 %20, i64* %7, align 8
  br label %9

21:                                               ; preds = %9
  %22 = load %struct.sm501_clock*, %struct.sm501_clock** %5, align 8
  %23 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sm501_clock*, %struct.sm501_clock** %5, align 8
  %26 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.sm501_clock*, %struct.sm501_clock** %5, align 8
  %29 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = shl i64 %27, %30
  %32 = udiv i64 %24, %31
  ret i64 %32
}

declare dso_local i32 @sm501_calc_clock(i64, %struct.sm501_clock*, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
