; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851_mll.c_ks_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851_mll.c_ks_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_net = type { i32, i64, i64 }

@KS_TXFDPR = common dso_local global i32 0, align 4
@TXFDPR_TXFPAI = common dso_local global i32 0, align 4
@KS_RXFDPR = common dso_local global i32 0, align 4
@RXFDPR_RXFPAI = common dso_local global i32 0, align 4
@KS_RXFCTR = common dso_local global i32 0, align 4
@RXFCTR_THRESHOLD_MASK = common dso_local global i32 0, align 4
@RXQCR_CMD_CNTL = common dso_local global i32 0, align 4
@KS_RXQCR = common dso_local global i32 0, align 4
@KS_P1MBCR = common dso_local global i32 0, align 4
@P1MBCR_FORCE_FDX = common dso_local global i32 0, align 4
@TXCR_TXFCE = common dso_local global i32 0, align 4
@TXCR_TXPE = common dso_local global i32 0, align 4
@TXCR_TXCRC = common dso_local global i32 0, align 4
@TXCR_TCGIP = common dso_local global i32 0, align 4
@KS_TXCR = common dso_local global i32 0, align 4
@RXCR1_RXFCE = common dso_local global i32 0, align 4
@RXCR1_RXBE = common dso_local global i32 0, align 4
@RXCR1_RXUE = common dso_local global i32 0, align 4
@RXCR1_RXME = common dso_local global i32 0, align 4
@RXCR1_RXIPFCC = common dso_local global i32 0, align 4
@RXCR1_RXAE = common dso_local global i32 0, align 4
@RXCR1_RXINVF = common dso_local global i32 0, align 4
@RXCR1_RXMAFMA = common dso_local global i32 0, align 4
@RXCR1_RXPAFMA = common dso_local global i32 0, align 4
@KS_RXCR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_net*)* @ks_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_setup(%struct.ks_net* %0) #0 {
  %2 = alloca %struct.ks_net*, align 8
  %3 = alloca i32, align 4
  store %struct.ks_net* %0, %struct.ks_net** %2, align 8
  %4 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %5 = load i32, i32* @KS_TXFDPR, align 4
  %6 = load i32, i32* @TXFDPR_TXFPAI, align 4
  %7 = call i32 @ks_wrreg16(%struct.ks_net* %4, i32 %5, i32 %6)
  %8 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %9 = load i32, i32* @KS_RXFDPR, align 4
  %10 = load i32, i32* @RXFDPR_RXFPAI, align 4
  %11 = call i32 @ks_wrreg16(%struct.ks_net* %8, i32 %9, i32 %10)
  %12 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %13 = load i32, i32* @KS_RXFCTR, align 4
  %14 = load i32, i32* @RXFCTR_THRESHOLD_MASK, align 4
  %15 = and i32 1, %14
  %16 = call i32 @ks_wrreg16(%struct.ks_net* %12, i32 %13, i32 %15)
  %17 = load i32, i32* @RXQCR_CMD_CNTL, align 4
  %18 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %19 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %21 = load i32, i32* @KS_RXQCR, align 4
  %22 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %23 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ks_wrreg16(%struct.ks_net* %20, i32 %21, i32 %24)
  %26 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %27 = load i32, i32* @KS_P1MBCR, align 4
  %28 = call i32 @ks_rdreg16(%struct.ks_net* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @P1MBCR_FORCE_FDX, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %34 = load i32, i32* @KS_P1MBCR, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @ks_wrreg16(%struct.ks_net* %33, i32 %34, i32 %35)
  %37 = load i32, i32* @TXCR_TXFCE, align 4
  %38 = load i32, i32* @TXCR_TXPE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @TXCR_TXCRC, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @TXCR_TCGIP, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %3, align 4
  %44 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %45 = load i32, i32* @KS_TXCR, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @ks_wrreg16(%struct.ks_net* %44, i32 %45, i32 %46)
  %48 = load i32, i32* @RXCR1_RXFCE, align 4
  %49 = load i32, i32* @RXCR1_RXBE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @RXCR1_RXUE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @RXCR1_RXME, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @RXCR1_RXIPFCC, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %3, align 4
  %57 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %58 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %1
  %62 = load i32, i32* @RXCR1_RXAE, align 4
  %63 = load i32, i32* @RXCR1_RXINVF, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %3, align 4
  br label %85

67:                                               ; preds = %1
  %68 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %69 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i32, i32* @RXCR1_RXAE, align 4
  %74 = load i32, i32* @RXCR1_RXMAFMA, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @RXCR1_RXPAFMA, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %3, align 4
  br label %84

80:                                               ; preds = %67
  %81 = load i32, i32* @RXCR1_RXPAFMA, align 4
  %82 = load i32, i32* %3, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %72
  br label %85

85:                                               ; preds = %84, %61
  %86 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %87 = load i32, i32* @KS_RXCR1, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @ks_wrreg16(%struct.ks_net* %86, i32 %87, i32 %88)
  ret void
}

declare dso_local i32 @ks_wrreg16(%struct.ks_net*, i32, i32) #1

declare dso_local i32 @ks_rdreg16(%struct.ks_net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
