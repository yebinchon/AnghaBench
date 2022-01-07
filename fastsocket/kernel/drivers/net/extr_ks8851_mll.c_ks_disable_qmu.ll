; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851_mll.c_ks_disable_qmu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851_mll.c_ks_disable_qmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_net = type { i32 }

@KS_TXCR = common dso_local global i32 0, align 4
@TXCR_TXE = common dso_local global i32 0, align 4
@KS_RXCR1 = common dso_local global i32 0, align 4
@RXCR1_RXE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_net*)* @ks_disable_qmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_disable_qmu(%struct.ks_net* %0) #0 {
  %2 = alloca %struct.ks_net*, align 8
  %3 = alloca i32, align 4
  store %struct.ks_net* %0, %struct.ks_net** %2, align 8
  %4 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %5 = load i32, i32* @KS_TXCR, align 4
  %6 = call i32 @ks_rdreg16(%struct.ks_net* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @TXCR_TXE, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %12 = load i32, i32* @KS_TXCR, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @ks_wrreg16(%struct.ks_net* %11, i32 %12, i32 %13)
  %15 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %16 = load i32, i32* @KS_RXCR1, align 4
  %17 = call i32 @ks_rdreg16(%struct.ks_net* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @RXCR1_RXE, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %23 = load i32, i32* @KS_RXCR1, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ks_wrreg16(%struct.ks_net* %22, i32 %23, i32 %24)
  %26 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %27 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  ret void
}

declare dso_local i32 @ks_rdreg16(%struct.ks_net*, i32) #1

declare dso_local i32 @ks_wrreg16(%struct.ks_net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
