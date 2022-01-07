; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_fpga.c_fpga_mask_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_fpga.c_fpga_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP_FPGA_IRQ_BASE = common dso_local global i64 0, align 8
@OMAP1510_FPGA_IMR_LO = common dso_local global i32 0, align 4
@OMAP1510_FPGA_IMR_HI = common dso_local global i32 0, align 4
@INNOVATOR_FPGA_IMR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fpga_mask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpga_mask_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @OMAP_FPGA_IRQ_BASE, align 8
  %4 = load i32, i32* %2, align 4
  %5 = zext i32 %4 to i64
  %6 = sub nsw i64 %5, %3
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ult i32 %8, 8
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load i32, i32* @OMAP1510_FPGA_IMR_LO, align 4
  %12 = call i32 @__raw_readb(i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = shl i32 1, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %12, %15
  %17 = load i32, i32* @OMAP1510_FPGA_IMR_LO, align 4
  %18 = call i32 @__raw_writeb(i32 %16, i32 %17)
  br label %43

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = icmp ult i32 %20, 16
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i32, i32* @OMAP1510_FPGA_IMR_HI, align 4
  %24 = call i32 @__raw_readb(i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = sub i32 %25, 8
  %27 = shl i32 1, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  %30 = load i32, i32* @OMAP1510_FPGA_IMR_HI, align 4
  %31 = call i32 @__raw_writeb(i32 %29, i32 %30)
  br label %42

32:                                               ; preds = %19
  %33 = load i32, i32* @INNOVATOR_FPGA_IMR2, align 4
  %34 = call i32 @__raw_readb(i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = sub i32 %35, 16
  %37 = shl i32 1, %36
  %38 = xor i32 %37, -1
  %39 = and i32 %34, %38
  %40 = load i32, i32* @INNOVATOR_FPGA_IMR2, align 4
  %41 = call i32 @__raw_writeb(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %32, %22
  br label %43

43:                                               ; preds = %42, %10
  ret void
}

declare dso_local i32 @__raw_writeb(i32, i32) #1

declare dso_local i32 @__raw_readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
