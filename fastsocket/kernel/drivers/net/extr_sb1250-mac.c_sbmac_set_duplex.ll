; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1250-mac.c_sbmac_set_duplex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1250-mac.c_sbmac_set_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbmac_softc = type { i32, i32, i64, i32 }

@sbmac_state_on = common dso_local global i64 0, align 8
@M_MAC_FC_SEL = common dso_local global i32 0, align 4
@M_MAC_FC_CMD = common dso_local global i32 0, align 4
@M_MAC_HDX_EN = common dso_local global i32 0, align 4
@V_MAC_FC_CMD_DISABLED = common dso_local global i32 0, align 4
@V_MAC_FC_CMD_ENABLED = common dso_local global i32 0, align 4
@V_MAC_FC_CMD_ENAB_FALSECARR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbmac_softc*, i32, i32)* @sbmac_set_duplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbmac_set_duplex(%struct.sbmac_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbmac_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sbmac_softc* %0, %struct.sbmac_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.sbmac_softc*, %struct.sbmac_softc** %5, align 8
  %11 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.sbmac_softc*, %struct.sbmac_softc** %5, align 8
  %14 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.sbmac_softc*, %struct.sbmac_softc** %5, align 8
  %16 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @sbmac_state_on, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %78

21:                                               ; preds = %3
  %22 = load %struct.sbmac_softc*, %struct.sbmac_softc** %5, align 8
  %23 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @__raw_readq(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @M_MAC_FC_SEL, align 4
  %27 = load i32, i32* @M_MAC_FC_CMD, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @M_MAC_HDX_EN, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %71 [
    i32 132, label %35
    i32 133, label %58
  ]

35:                                               ; preds = %21
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %56 [
    i32 129, label %37
    i32 130, label %43
    i32 131, label %49
    i32 128, label %55
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* @M_MAC_HDX_EN, align 4
  %39 = load i32, i32* @V_MAC_FC_CMD_DISABLED, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %57

43:                                               ; preds = %35
  %44 = load i32, i32* @M_MAC_HDX_EN, align 4
  %45 = load i32, i32* @V_MAC_FC_CMD_ENABLED, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %57

49:                                               ; preds = %35
  %50 = load i32, i32* @M_MAC_HDX_EN, align 4
  %51 = load i32, i32* @V_MAC_FC_CMD_ENAB_FALSECARR, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %57

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %35, %55
  store i32 0, i32* %4, align 4
  br label %78

57:                                               ; preds = %49, %43, %37
  br label %72

58:                                               ; preds = %21
  %59 = load i32, i32* %7, align 4
  switch i32 %59, label %69 [
    i32 129, label %60
    i32 128, label %64
    i32 130, label %68
    i32 131, label %68
  ]

60:                                               ; preds = %58
  %61 = load i32, i32* @V_MAC_FC_CMD_DISABLED, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %70

64:                                               ; preds = %58
  %65 = load i32, i32* @V_MAC_FC_CMD_ENABLED, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %70

68:                                               ; preds = %58, %58
  br label %69

69:                                               ; preds = %58, %68
  store i32 0, i32* %4, align 4
  br label %78

70:                                               ; preds = %64, %60
  br label %72

71:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %78

72:                                               ; preds = %70, %57
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.sbmac_softc*, %struct.sbmac_softc** %5, align 8
  %75 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @__raw_writeq(i32 %73, i32 %76)
  store i32 1, i32* %4, align 4
  br label %78

78:                                               ; preds = %72, %71, %69, %56, %20
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @__raw_readq(i32) #1

declare dso_local i32 @__raw_writeq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
