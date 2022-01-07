; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock.c_csi_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock.c_csi_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@MXC_CCM_PDR0 = common dso_local global i32 0, align 4
@MXC_CCM_PDR0_CSI_PRDF_MASK = common dso_local global i64 0, align 8
@MXC_CCM_PDR0_CSI_PRDF_OFFSET = common dso_local global i64 0, align 8
@MXC_CCM_PDR0_CSI_PODF_MASK = common dso_local global i64 0, align 8
@MXC_CCM_PDR0_CSI_PODF_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @csi_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @csi_get_rate(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %6 = load i32, i32* @MXC_CCM_PDR0, align 4
  %7 = call i64 @__raw_readl(i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @MXC_CCM_PDR0_CSI_PRDF_MASK, align 8
  %10 = and i64 %8, %9
  %11 = load i64, i64* @MXC_CCM_PDR0_CSI_PRDF_OFFSET, align 8
  %12 = lshr i64 %10, %11
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @MXC_CCM_PDR0_CSI_PODF_MASK, align 8
  %17 = and i64 %15, %16
  %18 = load i64, i64* @MXC_CCM_PDR0_CSI_PODF_OFFSET, align 8
  %19 = lshr i64 %17, %18
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %5, align 8
  %22 = load %struct.clk*, %struct.clk** %2, align 8
  %23 = getelementptr inbounds %struct.clk, %struct.clk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @clk_get_rate(i32 %24)
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = mul i64 %26, %27
  %29 = udiv i64 %25, %28
  ret i64 %29
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
