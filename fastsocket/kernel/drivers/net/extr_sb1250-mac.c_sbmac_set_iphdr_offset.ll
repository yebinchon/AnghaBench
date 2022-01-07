; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1250-mac.c_sbmac_set_iphdr_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1250-mac.c_sbmac_set_iphdr_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbmac_softc = type { i32, i32 }

@M_MAC_IPHDR_OFFSET = common dso_local global i32 0, align 4
@soc_type = common dso_local global i64 0, align 8
@K_SYS_SOC_TYPE_BCM1250 = common dso_local global i64 0, align 8
@periph_rev = common dso_local global i32 0, align 4
@DISABLE = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbmac_softc*)* @sbmac_set_iphdr_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbmac_set_iphdr_offset(%struct.sbmac_softc* %0) #0 {
  %2 = alloca %struct.sbmac_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.sbmac_softc* %0, %struct.sbmac_softc** %2, align 8
  %4 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %5 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @__raw_readq(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @M_MAC_IPHDR_OFFSET, align 4
  %9 = xor i32 %8, -1
  %10 = call i32 @V_MAC_IPHDR_OFFSET(i32 15)
  %11 = or i32 %9, %10
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %16 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @__raw_writeq(i32 %14, i32 %17)
  %19 = load i64, i64* @soc_type, align 8
  %20 = load i64, i64* @K_SYS_SOC_TYPE_BCM1250, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load i32, i32* @periph_rev, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @DISABLE, align 4
  %27 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %28 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %33

29:                                               ; preds = %22, %1
  %30 = load i32, i32* @ENABLE, align 4
  %31 = load %struct.sbmac_softc*, %struct.sbmac_softc** %2, align 8
  %32 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %25
  ret void
}

declare dso_local i32 @__raw_readq(i32) #1

declare dso_local i32 @V_MAC_IPHDR_OFFSET(i32) #1

declare dso_local i32 @__raw_writeq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
