; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mxc91231/extr_clock.c_clk_usb_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mxc91231/extr_clock.c_clk_usb_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@MXC_CRMAP_ACSR = common dso_local global i32 0, align 4
@MXC_CRMAP_ASCSR = common dso_local global i32 0, align 4
@MXC_CRMAP_ACSR_ACS = common dso_local global i32 0, align 4
@MXC_CRMAP_ASCSR_USBSEL_MASK = common dso_local global i32 0, align 4
@MXC_CRMAP_ASCSR_USBSEL_OFFSET = common dso_local global i32 0, align 4
@ap_ref_clk = common dso_local global %struct.clk zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.clk*)* @clk_usb_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @clk_usb_parent(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  %7 = load i32, i32* @MXC_CRMAP_ACSR, align 4
  %8 = call i32 @__raw_readl(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @MXC_CRMAP_ASCSR, align 4
  %10 = call i32 @__raw_readl(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MXC_CRMAP_ACSR_ACS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MXC_CRMAP_ASCSR_USBSEL_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @MXC_CRMAP_ASCSR_USBSEL_OFFSET, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.clk* @pll_clk(i32 %21)
  store %struct.clk* %22, %struct.clk** %2, align 8
  br label %24

23:                                               ; preds = %1
  store %struct.clk* @ap_ref_clk, %struct.clk** %2, align 8
  br label %24

24:                                               ; preds = %23, %15
  %25 = load %struct.clk*, %struct.clk** %2, align 8
  ret %struct.clk* %25
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local %struct.clk* @pll_clk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
