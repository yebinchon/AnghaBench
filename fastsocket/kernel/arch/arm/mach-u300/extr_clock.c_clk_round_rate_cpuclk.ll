; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_clock.c_clk_round_rate_cpuclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_clock.c_clk_round_rate_cpuclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*, i64)* @clk_round_rate_cpuclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_round_rate_cpuclk(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp uge i64 %6, 13000000
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i64 13000000, i64* %3, align 8
  br label %24

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = icmp uge i64 %10, 52000000
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i64 52000000, i64* %3, align 8
  br label %24

13:                                               ; preds = %9
  %14 = load i64, i64* %5, align 8
  %15 = icmp uge i64 %14, 104000000
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i64 104000000, i64* %3, align 8
  br label %24

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = icmp uge i64 %18, 208000000
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i64 208000000, i64* %3, align 8
  br label %24

21:                                               ; preds = %17
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %21, %20, %16, %12, %8
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
