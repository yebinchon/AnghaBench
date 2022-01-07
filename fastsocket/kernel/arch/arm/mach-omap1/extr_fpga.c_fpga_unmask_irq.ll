; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_fpga.c_fpga_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_fpga.c_fpga_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP_FPGA_IRQ_BASE = common dso_local global i64 0, align 8
@OMAP1510_FPGA_IMR_LO = common dso_local global i32 0, align 4
@OMAP1510_FPGA_IMR_HI = common dso_local global i32 0, align 4
@INNOVATOR_FPGA_IMR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fpga_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpga_unmask_irq(i32 %0) #0 {
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
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i32, i32* @OMAP1510_FPGA_IMR_LO, align 4
  %12 = call i32 @__raw_readb(i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = shl i32 1, %13
  %15 = or i32 %12, %14
  %16 = load i32, i32* @OMAP1510_FPGA_IMR_LO, align 4
  %17 = call i32 @__raw_writeb(i32 %15, i32 %16)
  br label %40

18:                                               ; preds = %1
  %19 = load i32, i32* %2, align 4
  %20 = icmp ult i32 %19, 16
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, i32* @OMAP1510_FPGA_IMR_HI, align 4
  %23 = call i32 @__raw_readb(i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = sub i32 %24, 8
  %26 = shl i32 1, %25
  %27 = or i32 %23, %26
  %28 = load i32, i32* @OMAP1510_FPGA_IMR_HI, align 4
  %29 = call i32 @__raw_writeb(i32 %27, i32 %28)
  br label %39

30:                                               ; preds = %18
  %31 = load i32, i32* @INNOVATOR_FPGA_IMR2, align 4
  %32 = call i32 @__raw_readb(i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = sub i32 %33, 16
  %35 = shl i32 1, %34
  %36 = or i32 %32, %35
  %37 = load i32, i32* @INNOVATOR_FPGA_IMR2, align 4
  %38 = call i32 @__raw_writeb(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %30, %21
  br label %40

40:                                               ; preds = %39, %10
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
