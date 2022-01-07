; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_msi-octeon.c_octeon_msi_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_msi-octeon.c_octeon_msi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@octeon_dma_bar_type = common dso_local global i64 0, align 8
@OCTEON_DMA_BAR_TYPE_PCIE = common dso_local global i64 0, align 8
@CVMX_PEXP_NPEI_MSI_RCV0 = common dso_local global i32 0, align 4
@CVMX_NPI_NPI_MSI_RCV = common dso_local global i32 0, align 4
@OCTEON_IRQ_MSI_BIT0 = common dso_local global i32 0, align 4
@irq_desc = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Spurious MSI interrupt %d\0A\00", align 1
@OCTEON_FEATURE_PCIE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @octeon_msi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_msi_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i64, i64* @octeon_dma_bar_type, align 8
  %9 = load i64, i64* @OCTEON_DMA_BAR_TYPE_PCIE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @CVMX_PEXP_NPEI_MSI_RCV0, align 4
  %13 = call i32 @cvmx_read_csr(i32 %12)
  store i32 %13, i32* %6, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @CVMX_NPI_NPI_MSI_RCV, align 4
  %16 = call i32 @cvmx_read_csr(i32 %15)
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @fls64(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %17
  %23 = load i32, i32* @OCTEON_IRQ_MSI_BIT0, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_desc, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @do_IRQ(i32 %35)
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %37, i32* %3, align 4
  br label %64

38:                                               ; preds = %22
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @OCTEON_FEATURE_PCIE, align 4
  %42 = call i64 @octeon_has_feature(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load i32, i32* @CVMX_PEXP_NPEI_MSI_RCV0, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @OCTEON_IRQ_MSI_BIT0, align 4
  %48 = sub nsw i32 %46, %47
  %49 = zext i32 %48 to i64
  %50 = shl i64 1, %49
  %51 = call i32 @cvmx_write_csr(i32 %45, i64 %50)
  br label %60

52:                                               ; preds = %38
  %53 = load i32, i32* @CVMX_NPI_NPI_MSI_RCV, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @OCTEON_IRQ_MSI_BIT0, align 4
  %56 = sub nsw i32 %54, %55
  %57 = zext i32 %56 to i64
  %58 = shl i64 1, %57
  %59 = call i32 @cvmx_write_csr(i32 %53, i64 %58)
  br label %60

60:                                               ; preds = %52, %44
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61, %17
  %63 = load i32, i32* @IRQ_NONE, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %34
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @fls64(i32) #1

declare dso_local i32 @do_IRQ(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
