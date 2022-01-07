; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock-imx35.c_get_rate_otg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock-imx35.c_get_rate_otg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@CCM_BASE = common dso_local global i64 0, align 8
@CCM_PDR4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @get_rate_otg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_rate_otg(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %5 = load i64, i64* @CCM_BASE, align 8
  %6 = load i64, i64* @CCM_PDR4, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i64 @__raw_readl(i64 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 512
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i64 (...) @get_rate_arm()
  store i64 %13, i64* %4, align 8
  br label %16

14:                                               ; preds = %1
  %15 = call i64 (...) @get_rate_ppll()
  store i64 %15, i64* %4, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %3, align 8
  %19 = lshr i64 %18, 22
  %20 = and i64 %19, 63
  %21 = call i64 @get_3_3_div(i64 %20)
  %22 = udiv i64 %17, %21
  ret i64 %22
}

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i64 @get_rate_arm(...) #1

declare dso_local i64 @get_rate_ppll(...) #1

declare dso_local i64 @get_3_3_div(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
