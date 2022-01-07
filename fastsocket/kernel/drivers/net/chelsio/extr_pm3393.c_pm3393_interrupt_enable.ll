; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_pm3393.c_pm3393_interrupt_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_pm3393.c_pm3393_interrupt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SUNI1x10GEXP_REG_SERDES_3125_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_XRF_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_XRF_DIAG_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXOAM_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_0 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_1 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_2 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_3 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_IFLX_FIFO_OVERFLOW_ENABLE = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_PL4ODP_INTERRUPT_MASK = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_XTEF_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_TXOAM_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_CONFIG_3 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_PL4IO_LOCK_DETECT_MASK = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_TXXG_CONFIG_3 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_PL4IDU_INTERRUPT_MASK = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_EFLX_FIFO_OVERFLOW_ERROR_ENABLE = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_GLOBAL_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@A_PL_ENABLE = common dso_local global i64 0, align 8
@F_PL_INTR_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmac*)* @pm3393_interrupt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm3393_interrupt_enable(%struct.cmac* %0) #0 {
  %2 = alloca %struct.cmac*, align 8
  %3 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %2, align 8
  %4 = load %struct.cmac*, %struct.cmac** %2, align 8
  %5 = load i32, i32* @SUNI1x10GEXP_REG_SERDES_3125_INTERRUPT_ENABLE, align 4
  %6 = call i32 @pmwrite(%struct.cmac* %4, i32 %5, i32 65535)
  %7 = load %struct.cmac*, %struct.cmac** %2, align 8
  %8 = load i32, i32* @SUNI1x10GEXP_REG_XRF_INTERRUPT_ENABLE, align 4
  %9 = call i32 @pmwrite(%struct.cmac* %7, i32 %8, i32 65535)
  %10 = load %struct.cmac*, %struct.cmac** %2, align 8
  %11 = load i32, i32* @SUNI1x10GEXP_REG_XRF_DIAG_INTERRUPT_ENABLE, align 4
  %12 = call i32 @pmwrite(%struct.cmac* %10, i32 %11, i32 65535)
  %13 = load %struct.cmac*, %struct.cmac** %2, align 8
  %14 = load i32, i32* @SUNI1x10GEXP_REG_RXOAM_INTERRUPT_ENABLE, align 4
  %15 = call i32 @pmwrite(%struct.cmac* %13, i32 %14, i32 65535)
  %16 = load %struct.cmac*, %struct.cmac** %2, align 8
  %17 = load i32, i32* @SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_0, align 4
  %18 = call i32 @pmwrite(%struct.cmac* %16, i32 %17, i32 0)
  %19 = load %struct.cmac*, %struct.cmac** %2, align 8
  %20 = load i32, i32* @SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_1, align 4
  %21 = call i32 @pmwrite(%struct.cmac* %19, i32 %20, i32 0)
  %22 = load %struct.cmac*, %struct.cmac** %2, align 8
  %23 = load i32, i32* @SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_2, align 4
  %24 = call i32 @pmwrite(%struct.cmac* %22, i32 %23, i32 0)
  %25 = load %struct.cmac*, %struct.cmac** %2, align 8
  %26 = load i32, i32* @SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_3, align 4
  %27 = call i32 @pmwrite(%struct.cmac* %25, i32 %26, i32 0)
  %28 = load %struct.cmac*, %struct.cmac** %2, align 8
  %29 = load i32, i32* @SUNI1x10GEXP_REG_IFLX_FIFO_OVERFLOW_ENABLE, align 4
  %30 = call i32 @pmwrite(%struct.cmac* %28, i32 %29, i32 65535)
  %31 = load %struct.cmac*, %struct.cmac** %2, align 8
  %32 = load i32, i32* @SUNI1x10GEXP_REG_PL4ODP_INTERRUPT_MASK, align 4
  %33 = call i32 @pmwrite(%struct.cmac* %31, i32 %32, i32 65535)
  %34 = load %struct.cmac*, %struct.cmac** %2, align 8
  %35 = load i32, i32* @SUNI1x10GEXP_REG_XTEF_INTERRUPT_ENABLE, align 4
  %36 = call i32 @pmwrite(%struct.cmac* %34, i32 %35, i32 65535)
  %37 = load %struct.cmac*, %struct.cmac** %2, align 8
  %38 = load i32, i32* @SUNI1x10GEXP_REG_TXOAM_INTERRUPT_ENABLE, align 4
  %39 = call i32 @pmwrite(%struct.cmac* %37, i32 %38, i32 65535)
  %40 = load %struct.cmac*, %struct.cmac** %2, align 8
  %41 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_CONFIG_3, align 4
  %42 = call i32 @pmwrite(%struct.cmac* %40, i32 %41, i32 65535)
  %43 = load %struct.cmac*, %struct.cmac** %2, align 8
  %44 = load i32, i32* @SUNI1x10GEXP_REG_PL4IO_LOCK_DETECT_MASK, align 4
  %45 = call i32 @pmwrite(%struct.cmac* %43, i32 %44, i32 65535)
  %46 = load %struct.cmac*, %struct.cmac** %2, align 8
  %47 = load i32, i32* @SUNI1x10GEXP_REG_TXXG_CONFIG_3, align 4
  %48 = call i32 @pmwrite(%struct.cmac* %46, i32 %47, i32 65535)
  %49 = load %struct.cmac*, %struct.cmac** %2, align 8
  %50 = load i32, i32* @SUNI1x10GEXP_REG_PL4IDU_INTERRUPT_MASK, align 4
  %51 = call i32 @pmwrite(%struct.cmac* %49, i32 %50, i32 65535)
  %52 = load %struct.cmac*, %struct.cmac** %2, align 8
  %53 = load i32, i32* @SUNI1x10GEXP_REG_EFLX_FIFO_OVERFLOW_ERROR_ENABLE, align 4
  %54 = call i32 @pmwrite(%struct.cmac* %52, i32 %53, i32 65535)
  %55 = load %struct.cmac*, %struct.cmac** %2, align 8
  %56 = load i32, i32* @SUNI1x10GEXP_REG_GLOBAL_INTERRUPT_ENABLE, align 4
  %57 = call i32 @pmwrite(%struct.cmac* %55, i32 %56, i32 0)
  %58 = load %struct.cmac*, %struct.cmac** %2, align 8
  %59 = getelementptr inbounds %struct.cmac, %struct.cmac* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @A_PL_ENABLE, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readl(i64 %64)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* @F_PL_INTR_EXT, align 4
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.cmac*, %struct.cmac** %2, align 8
  %71 = getelementptr inbounds %struct.cmac, %struct.cmac* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @A_PL_ENABLE, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %69, i64 %76)
  ret i32 0
}

declare dso_local i32 @pmwrite(%struct.cmac*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
