; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock.c_ssi1_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock.c_ssi1_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@MXC_CCM_PDR1_SSI1_PODF_MASK = common dso_local global i32 0, align 4
@MXC_CCM_PDR1_SSI1_PODF_OFFSET = common dso_local global i32 0, align 4
@MXC_CCM_PDR1_SSI1_PRE_PODF_MASK = common dso_local global i32 0, align 4
@MXC_CCM_PDR1_SSI1_PRE_PODF_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @ssi1_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ssi1_get_rate(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %5 = load i32, i32* @MXC_CCM_PDR1_SSI1_PODF_MASK, align 4
  %6 = load i32, i32* @MXC_CCM_PDR1_SSI1_PODF_OFFSET, align 4
  %7 = call i64 @PDR1(i32 %5, i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i32, i32* @MXC_CCM_PDR1_SSI1_PRE_PODF_MASK, align 4
  %9 = load i32, i32* @MXC_CCM_PDR1_SSI1_PRE_PODF_OFFSET, align 4
  %10 = call i64 @PDR1(i32 %8, i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.clk*, %struct.clk** %2, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @clk_get_rate(i32 %13)
  %15 = load i64, i64* %4, align 8
  %16 = add i64 %15, 1
  %17 = udiv i64 %14, %16
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 1
  %20 = udiv i64 %17, %19
  ret i64 %20
}

declare dso_local i64 @PDR1(i32, i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
