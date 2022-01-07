; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_promisc_cfg_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_promisc_cfg_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bna* }
%struct.bna = type { i32 }

@BNA_RXMODE_PROMISC = common dso_local global i32 0, align 4
@BFI_INVALID_RID = common dso_local global i32 0, align 4
@BNA_HARD_CLEANUP = common dso_local global i32 0, align 4
@BNA_STATUS_T_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bna_rxf*, i32)* @bna_rxf_promisc_cfg_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bna_rxf_promisc_cfg_reset(%struct.bna_rxf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bna_rxf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bna*, align 8
  store %struct.bna_rxf* %0, %struct.bna_rxf** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %8 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.bna*, %struct.bna** %10, align 8
  store %struct.bna* %11, %struct.bna** %6, align 8
  %12 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %13 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %16 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @is_promisc_disable(i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %2
  %21 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %22 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %25 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @promisc_inactive(i32 %23, i32 %26)
  %28 = load i32, i32* @BNA_RXMODE_PROMISC, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %31 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @BFI_INVALID_RID, align 4
  %35 = load %struct.bna*, %struct.bna** %6, align 8
  %36 = getelementptr inbounds %struct.bna, %struct.bna* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @BNA_HARD_CLEANUP, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %20
  %41 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %42 = load i32, i32* @BNA_STATUS_T_DISABLED, align 4
  %43 = call i32 @bna_bfi_rx_promisc_req(%struct.bna_rxf* %41, i32 %42)
  store i32 1, i32* %3, align 4
  br label %75

44:                                               ; preds = %20
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %47 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @BNA_RXMODE_PROMISC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %45
  %53 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %54 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %57 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @promisc_enable(i32 %55, i32 %58)
  %60 = load i32, i32* @BNA_RXMODE_PROMISC, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %63 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @BNA_HARD_CLEANUP, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %52
  %70 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %71 = load i32, i32* @BNA_STATUS_T_DISABLED, align 4
  %72 = call i32 @bna_bfi_rx_promisc_req(%struct.bna_rxf* %70, i32 %71)
  store i32 1, i32* %3, align 4
  br label %75

73:                                               ; preds = %52
  br label %74

74:                                               ; preds = %73, %45
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %69, %40
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @is_promisc_disable(i32, i32) #1

declare dso_local i32 @promisc_inactive(i32, i32) #1

declare dso_local i32 @bna_bfi_rx_promisc_req(%struct.bna_rxf*, i32) #1

declare dso_local i32 @promisc_enable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
