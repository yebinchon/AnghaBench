; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1250-mac.c_sbmac_initctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1250-mac.c_sbmac_initctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbmac_softc = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@R_MAC_ENABLE = common dso_local global i64 0, align 8
@R_MAC_CFG = common dso_local global i64 0, align 8
@R_MAC_THRSH_CFG = common dso_local global i64 0, align 8
@R_MAC_FRAMECFG = common dso_local global i64 0, align 8
@R_MAC_ADFILTER_CFG = common dso_local global i64 0, align 8
@R_MAC_STATUS = common dso_local global i64 0, align 8
@R_MAC_INT_MASK = common dso_local global i64 0, align 8
@R_MAC_MDIO = common dso_local global i64 0, align 8
@DMA_TX = common dso_local global i32 0, align 4
@SBMAC_MAX_TXDESCR = common dso_local global i32 0, align 4
@DMA_RX = common dso_local global i32 0, align 4
@SBMAC_MAX_RXDESCR = common dso_local global i32 0, align 4
@sbmac_state_off = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbmac_softc*)* @sbmac_initctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbmac_initctx(%struct.sbmac_softc* %0) #0 {
  %2 = alloca %struct.sbmac_softc*, align 8
  store %struct.sbmac_softc* %0, %struct.sbmac_softc** %2, align 8
  %3 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %4 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @R_MAC_ENABLE, align 8
  %7 = add nsw i64 %5, %6
  %8 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %9 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %8, i32 0, i32 11
  store i64 %7, i64* %9, align 8
  %10 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %11 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @R_MAC_CFG, align 8
  %14 = add nsw i64 %12, %13
  %15 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %16 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %15, i32 0, i32 10
  store i64 %14, i64* %16, align 8
  %17 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %18 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @R_MAC_THRSH_CFG, align 8
  %21 = add nsw i64 %19, %20
  %22 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %23 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %22, i32 0, i32 9
  store i64 %21, i64* %23, align 8
  %24 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %25 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @R_MAC_FRAMECFG, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %30 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %29, i32 0, i32 8
  store i64 %28, i64* %30, align 8
  %31 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %32 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @R_MAC_ADFILTER_CFG, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %37 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %36, i32 0, i32 7
  store i64 %35, i64* %37, align 8
  %38 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %39 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @R_MAC_STATUS, align 8
  %42 = add nsw i64 %40, %41
  %43 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %44 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %43, i32 0, i32 6
  store i64 %42, i64* %44, align 8
  %45 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %46 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @R_MAC_INT_MASK, align 8
  %49 = add nsw i64 %47, %48
  %50 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %51 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %50, i32 0, i32 5
  store i64 %49, i64* %51, align 8
  %52 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %53 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @R_MAC_MDIO, align 8
  %56 = add nsw i64 %54, %55
  %57 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %58 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %57, i32 0, i32 4
  store i64 %56, i64* %58, align 8
  %59 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %60 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %59, i32 0, i32 2
  %61 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %62 = load i32, i32* @DMA_TX, align 4
  %63 = load i32, i32* @SBMAC_MAX_TXDESCR, align 4
  %64 = call i32 @sbdma_initctx(i32* %60, %struct.sbmac_softc* %61, i32 0, i32 %62, i32 %63)
  %65 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %66 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %65, i32 0, i32 1
  %67 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %68 = load i32, i32* @DMA_RX, align 4
  %69 = load i32, i32* @SBMAC_MAX_RXDESCR, align 4
  %70 = call i32 @sbdma_initctx(i32* %66, %struct.sbmac_softc* %67, i32 0, i32 %68, i32 %69)
  %71 = load i32, i32* @sbmac_state_off, align 4
  %72 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %73 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  ret i32 0
}

declare dso_local i32 @sbdma_initctx(i32*, %struct.sbmac_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
