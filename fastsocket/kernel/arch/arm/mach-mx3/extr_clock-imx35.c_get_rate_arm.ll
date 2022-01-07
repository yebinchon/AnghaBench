; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock-imx35.c_get_rate_arm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock-imx35.c_get_rate_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_ahb_div = type { i64, i64 }

@CCM_BASE = common dso_local global i64 0, align 8
@CCM_PDR0 = common dso_local global i64 0, align 8
@clk_consumer = common dso_local global %struct.arm_ahb_div* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @get_rate_arm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_rate_arm() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.arm_ahb_div*, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @CCM_BASE, align 8
  %5 = load i64, i64* @CCM_PDR0, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i64 @__raw_readl(i64 %6)
  store i64 %7, i64* %1, align 8
  %8 = call i64 (...) @get_rate_mpll()
  store i64 %8, i64* %3, align 8
  %9 = load %struct.arm_ahb_div*, %struct.arm_ahb_div** @clk_consumer, align 8
  %10 = load i64, i64* %1, align 8
  %11 = lshr i64 %10, 16
  %12 = and i64 %11, 15
  %13 = getelementptr inbounds %struct.arm_ahb_div, %struct.arm_ahb_div* %9, i64 %12
  store %struct.arm_ahb_div* %13, %struct.arm_ahb_div** %2, align 8
  %14 = load %struct.arm_ahb_div*, %struct.arm_ahb_div** %2, align 8
  %15 = getelementptr inbounds %struct.arm_ahb_div, %struct.arm_ahb_div* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %0
  %19 = load i64, i64* %3, align 8
  %20 = mul i64 %19, 2
  %21 = udiv i64 %20, 3
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %18, %0
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.arm_ahb_div*, %struct.arm_ahb_div** %2, align 8
  %25 = getelementptr inbounds %struct.arm_ahb_div, %struct.arm_ahb_div* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = udiv i64 %23, %26
  ret i64 %27
}

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i64 @get_rate_mpll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
