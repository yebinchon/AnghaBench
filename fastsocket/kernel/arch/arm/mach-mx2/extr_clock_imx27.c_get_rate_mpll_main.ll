; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_clock_imx27.c_get_rate_mpll_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_clock_imx27.c_get_rate_mpll_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }

@CHIP_REV_2_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @get_rate_mpll_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_rate_mpll_main(%struct.clk* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %5 = load %struct.clk*, %struct.clk** %3, align 8
  %6 = getelementptr inbounds %struct.clk, %struct.clk* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @clk_get_rate(i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = call i64 (...) @mx27_revision()
  %10 = load i64, i64* @CHIP_REV_2_0, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.clk*, %struct.clk** %3, align 8
  %14 = getelementptr inbounds %struct.clk, %struct.clk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i64, i64* %4, align 8
  %19 = mul i64 2, %18
  %20 = udiv i64 %19, 3
  store i64 %20, i64* %2, align 8
  br label %23

21:                                               ; preds = %12, %1
  %22 = load i64, i64* %4, align 8
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i64, i64* %2, align 8
  ret i64 %24
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @mx27_revision(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
