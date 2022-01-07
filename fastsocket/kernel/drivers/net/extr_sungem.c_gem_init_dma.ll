; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_init_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_init_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i32, i32, i64, i32 }

@TXDMA_CFG_BASE = common dso_local global i32 0, align 4
@TXDMA_CFG_PMODE = common dso_local global i32 0, align 4
@TXDMA_CFG = common dso_local global i64 0, align 8
@TXDMA_DBHI = common dso_local global i64 0, align 8
@TXDMA_DBLOW = common dso_local global i64 0, align 8
@INIT_BLOCK_TX_RING_SIZE = common dso_local global i32 0, align 4
@TXDMA_KICK = common dso_local global i64 0, align 8
@RXDMA_CFG_BASE = common dso_local global i32 0, align 4
@RX_OFFSET = common dso_local global i32 0, align 4
@RXDMA_CFG_FTHRESH_128 = common dso_local global i32 0, align 4
@RXDMA_CFG = common dso_local global i64 0, align 8
@RXDMA_DBHI = common dso_local global i64 0, align 8
@RXDMA_DBLOW = common dso_local global i64 0, align 8
@RX_RING_SIZE = common dso_local global i32 0, align 4
@RXDMA_KICK = common dso_local global i64 0, align 8
@RXDMA_PTHRESH_OFF = common dso_local global i32 0, align 4
@RXDMA_PTHRESH_ON = common dso_local global i32 0, align 4
@RXDMA_PTHRESH = common dso_local global i64 0, align 8
@GREG_BIFCFG = common dso_local global i64 0, align 8
@GREG_BIFCFG_M66EN = common dso_local global i32 0, align 4
@RXDMA_BLANK_IPKTS = common dso_local global i32 0, align 4
@RXDMA_BLANK_ITIME = common dso_local global i32 0, align 4
@RXDMA_BLANK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem*)* @gem_init_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_init_dma(%struct.gem* %0) #0 {
  %2 = alloca %struct.gem*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.gem* %0, %struct.gem** %2, align 8
  %5 = load %struct.gem*, %struct.gem** %2, align 8
  %6 = getelementptr inbounds %struct.gem, %struct.gem* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @TXDMA_CFG_BASE, align 4
  %9 = or i32 %8, 2096128
  %10 = load i32, i32* @TXDMA_CFG_PMODE, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.gem*, %struct.gem** %2, align 8
  %14 = getelementptr inbounds %struct.gem, %struct.gem* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TXDMA_CFG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load i32, i32* %3, align 4
  %20 = ashr i32 %19, 32
  %21 = load %struct.gem*, %struct.gem** %2, align 8
  %22 = getelementptr inbounds %struct.gem, %struct.gem* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TXDMA_DBHI, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.gem*, %struct.gem** %2, align 8
  %29 = getelementptr inbounds %struct.gem, %struct.gem* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TXDMA_DBLOW, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load i32, i32* @INIT_BLOCK_TX_RING_SIZE, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  %41 = load %struct.gem*, %struct.gem** %2, align 8
  %42 = getelementptr inbounds %struct.gem, %struct.gem* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TXDMA_KICK, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 0, i64 %45)
  %47 = load i32, i32* @RXDMA_CFG_BASE, align 4
  %48 = load i32, i32* @RX_OFFSET, align 4
  %49 = shl i32 %48, 10
  %50 = or i32 %47, %49
  %51 = or i32 %50, 57344
  %52 = load i32, i32* @RXDMA_CFG_FTHRESH_128, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.gem*, %struct.gem** %2, align 8
  %56 = getelementptr inbounds %struct.gem, %struct.gem* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RXDMA_CFG, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load i32, i32* %3, align 4
  %62 = ashr i32 %61, 32
  %63 = load %struct.gem*, %struct.gem** %2, align 8
  %64 = getelementptr inbounds %struct.gem, %struct.gem* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @RXDMA_DBHI, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.gem*, %struct.gem** %2, align 8
  %71 = getelementptr inbounds %struct.gem, %struct.gem* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @RXDMA_DBLOW, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  %76 = load i32, i32* @RX_RING_SIZE, align 4
  %77 = sub nsw i32 %76, 4
  %78 = load %struct.gem*, %struct.gem** %2, align 8
  %79 = getelementptr inbounds %struct.gem, %struct.gem* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @RXDMA_KICK, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  %84 = load %struct.gem*, %struct.gem** %2, align 8
  %85 = getelementptr inbounds %struct.gem, %struct.gem* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sdiv i32 %86, 64
  %88 = shl i32 %87, 0
  %89 = load i32, i32* @RXDMA_PTHRESH_OFF, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %4, align 4
  %91 = load %struct.gem*, %struct.gem** %2, align 8
  %92 = getelementptr inbounds %struct.gem, %struct.gem* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sdiv i32 %93, 64
  %95 = shl i32 %94, 12
  %96 = load i32, i32* @RXDMA_PTHRESH_ON, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* %4, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.gem*, %struct.gem** %2, align 8
  %102 = getelementptr inbounds %struct.gem, %struct.gem* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @RXDMA_PTHRESH, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i32 %100, i64 %105)
  %107 = load %struct.gem*, %struct.gem** %2, align 8
  %108 = getelementptr inbounds %struct.gem, %struct.gem* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @GREG_BIFCFG, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @readl(i64 %111)
  %113 = load i32, i32* @GREG_BIFCFG_M66EN, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %1
  %117 = load i32, i32* @RXDMA_BLANK_IPKTS, align 4
  %118 = and i32 5, %117
  %119 = load i32, i32* @RXDMA_BLANK_ITIME, align 4
  %120 = and i32 32768, %119
  %121 = or i32 %118, %120
  %122 = load %struct.gem*, %struct.gem** %2, align 8
  %123 = getelementptr inbounds %struct.gem, %struct.gem* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @RXDMA_BLANK, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @writel(i32 %121, i64 %126)
  br label %140

128:                                              ; preds = %1
  %129 = load i32, i32* @RXDMA_BLANK_IPKTS, align 4
  %130 = and i32 5, %129
  %131 = load i32, i32* @RXDMA_BLANK_ITIME, align 4
  %132 = and i32 16384, %131
  %133 = or i32 %130, %132
  %134 = load %struct.gem*, %struct.gem** %2, align 8
  %135 = getelementptr inbounds %struct.gem, %struct.gem* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @RXDMA_BLANK, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writel(i32 %133, i64 %138)
  br label %140

140:                                              ; preds = %128, %116
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
