; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_clock.c_pll4_round_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_clock.c_pll4_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.clk = type { i32 }

@CLK_RATE_208MHZ = common dso_local global i32 0, align 4
@hclk_ck = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CLK_RATE_13MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i32)* @pll4_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll4_round_rate(%struct.clk* %0, i32 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CLK_RATE_208MHZ, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @CLK_RATE_208MHZ, align 4
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @CLK_RATE_208MHZ, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hclk_ck, i32 0, i32 0), align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* @CLK_RATE_208MHZ, align 4
  %19 = load i32, i32* @CLK_RATE_13MHZ, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %14, %10
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hclk_ck, i32 0, i32 0), align 4
  %25 = load i32, i32* @CLK_RATE_13MHZ, align 4
  %26 = mul nsw i32 %24, %25
  %27 = srem i32 %23, %26
  %28 = sub nsw i32 %22, %27
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
