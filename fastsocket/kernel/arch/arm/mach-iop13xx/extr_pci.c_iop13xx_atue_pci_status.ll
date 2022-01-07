; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_pci.c_iop13xx_atue_pci_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_pci.c_iop13xx_atue_pci_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOP13XX_ATUE_ATUSR = common dso_local global i32 0, align 4
@IOP_PCI_STATUS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"\09\09\09PCI error: ATUSR %#08x\00", align 1
@IOP13XX_ATUE_ATUISR = common dso_local global i32 0, align 4
@IOP13XX_ATUE_ATUISR_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"\09\09\09PCI error: ATUISR %#08x\00", align 1
@IOP13XX_ATUE_STAT_PCI_IFACE_ERR = common dso_local global i32 0, align 4
@IOP13XX_ATUE_PIE_STS = common dso_local global i32 0, align 4
@IOP13XX_ATUE_PIE_MSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"\09\09\09PCI-E error: ATUE_PIE_STS %#08x\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\09\09\09PCI-E error: ATUE_PIE_MSK %#08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iop13xx_atue_pci_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop13xx_atue_pci_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @IOP13XX_ATUE_ATUSR, align 4
  %6 = call i32 @__raw_readw(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @IOP_PCI_STATUS_ERROR, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

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
  %20 = load i32, i32* @IOP13XX_ATUE_ATUSR, align 4
  %21 = call i32 @__raw_writew(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %11
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %1
  %26 = load i32, i32* @IOP13XX_ATUE_ATUISR, align 4
  %27 = call i32 @__raw_readl(i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @IOP13XX_ATUE_ATUISR_ERROR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %82

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @PRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @IOP13XX_ATUE_ATUISR_ERROR, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @IOP13XX_ATUE_ATUISR, align 4
  %42 = call i32 @__raw_writew(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @IOP13XX_ATUE_STAT_PCI_IFACE_ERR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %81

50:                                               ; preds = %43
  %51 = load i32, i32* @IOP13XX_ATUE_PIE_STS, align 4
  %52 = call i32 @__raw_readl(i32 %51)
  %53 = load i32, i32* @IOP13XX_ATUE_PIE_MSK, align 4
  %54 = call i32 @__raw_readl(i32 %53)
  %55 = xor i32 %54, -1
  %56 = and i32 %52, %55
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = load i32, i32* @IOP13XX_ATUE_PIE_STS, align 4
  %61 = call i32 @__raw_readl(i32 %60)
  %62 = call i32 @PRINTK(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %73

65:                                               ; preds = %50
  %66 = load i32, i32* @IOP13XX_ATUE_PIE_STS, align 4
  %67 = call i32 @__raw_readl(i32 %66)
  %68 = call i32 @PRINTK(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @IOP13XX_ATUE_PIE_MSK, align 4
  %70 = call i32 @__raw_readl(i32 %69)
  %71 = call i32 @PRINTK(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = call i32 (...) @BUG()
  br label %73

73:                                               ; preds = %65, %59
  %74 = load i32, i32* %2, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @IOP13XX_ATUE_PIE_STS, align 4
  %79 = call i32 @__raw_writel(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %80, %43
  br label %82

82:                                               ; preds = %81, %25
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @__raw_readw(i32) #1

declare dso_local i32 @PRINTK(i8*, i32) #1

declare dso_local i32 @__raw_writew(i32, i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
