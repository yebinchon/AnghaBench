; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_pci.c_iop13xx_atux_pci_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_pci.c_iop13xx_atux_pci_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOP13XX_ATUX_ATUSR = common dso_local global i32 0, align 4
@IOP_PCI_STATUS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"\09\09\09PCI error: ATUSR %#08x\00", align 1
@IOP13XX_ATUX_ATUISR = common dso_local global i32 0, align 4
@IOP13XX_ATUX_ATUISR_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"\09\09\09PCI error interrupt:  ATUISR %#08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iop13xx_atux_pci_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop13xx_atux_pci_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @IOP13XX_ATUX_ATUSR, align 4
  %6 = call i32 @__raw_readw(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @IOP_PCI_STATUS_ERROR, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @PRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @IOP_PCI_STATUS_ERROR, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @IOP13XX_ATUX_ATUSR, align 4
  %21 = call i32 @__raw_writew(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %11
  store i32 1, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32, i32* @IOP13XX_ATUX_ATUISR, align 4
  %25 = call i32 @__raw_readl(i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @IOP13XX_ATUX_ATUISR_ERROR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @PRINTK(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @IOP13XX_ATUX_ATUISR_ERROR, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @IOP13XX_ATUX_ATUISR, align 4
  %40 = call i32 @__raw_writel(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %30
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %23
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @__raw_readw(i32) #1

declare dso_local i32 @PRINTK(i8*, i32) #1

declare dso_local i32 @__raw_writew(i32, i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
