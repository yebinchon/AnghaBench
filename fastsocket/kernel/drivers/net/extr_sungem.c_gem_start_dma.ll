; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_start_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i64 }

@TXDMA_CFG = common dso_local global i64 0, align 8
@TXDMA_CFG_ENABLE = common dso_local global i32 0, align 4
@RXDMA_CFG = common dso_local global i64 0, align 8
@RXDMA_CFG_ENABLE = common dso_local global i32 0, align 4
@MAC_TXCFG = common dso_local global i64 0, align 8
@MAC_TXCFG_ENAB = common dso_local global i32 0, align 4
@MAC_RXCFG = common dso_local global i64 0, align 8
@MAC_RXCFG_ENAB = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@RXDMA_KICK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem*)* @gem_start_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_start_dma(%struct.gem* %0) #0 {
  %2 = alloca %struct.gem*, align 8
  %3 = alloca i32, align 4
  store %struct.gem* %0, %struct.gem** %2, align 8
  %4 = load %struct.gem*, %struct.gem** %2, align 8
  %5 = getelementptr inbounds %struct.gem, %struct.gem* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TXDMA_CFG, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @TXDMA_CFG_ENABLE, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.gem*, %struct.gem** %2, align 8
  %14 = getelementptr inbounds %struct.gem, %struct.gem* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TXDMA_CFG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load %struct.gem*, %struct.gem** %2, align 8
  %20 = getelementptr inbounds %struct.gem, %struct.gem* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RXDMA_CFG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @RXDMA_CFG_ENABLE, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.gem*, %struct.gem** %2, align 8
  %29 = getelementptr inbounds %struct.gem, %struct.gem* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RXDMA_CFG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load %struct.gem*, %struct.gem** %2, align 8
  %35 = getelementptr inbounds %struct.gem, %struct.gem* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MAC_TXCFG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @MAC_TXCFG_ENAB, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.gem*, %struct.gem** %2, align 8
  %44 = getelementptr inbounds %struct.gem, %struct.gem* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MAC_TXCFG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load %struct.gem*, %struct.gem** %2, align 8
  %50 = getelementptr inbounds %struct.gem, %struct.gem* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MAC_RXCFG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readl(i64 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @MAC_RXCFG_ENAB, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.gem*, %struct.gem** %2, align 8
  %59 = getelementptr inbounds %struct.gem, %struct.gem* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MAC_RXCFG, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  %64 = load %struct.gem*, %struct.gem** %2, align 8
  %65 = getelementptr inbounds %struct.gem, %struct.gem* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MAC_RXCFG, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @readl(i64 %68)
  %70 = call i32 @udelay(i32 100)
  %71 = load %struct.gem*, %struct.gem** %2, align 8
  %72 = call i32 @gem_enable_ints(%struct.gem* %71)
  %73 = load i32, i32* @RX_RING_SIZE, align 4
  %74 = sub nsw i32 %73, 4
  %75 = load %struct.gem*, %struct.gem** %2, align 8
  %76 = getelementptr inbounds %struct.gem, %struct.gem* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @RXDMA_KICK, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gem_enable_ints(%struct.gem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
