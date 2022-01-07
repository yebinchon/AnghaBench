; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_promisc_cfg_apply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_promisc_cfg_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bna* }
%struct.bna = type { i32 }

@BNA_RXMODE_PROMISC = common dso_local global i32 0, align 4
@BNA_STATUS_T_ENABLED = common dso_local global i32 0, align 4
@BFI_INVALID_RID = common dso_local global i32 0, align 4
@BNA_STATUS_T_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bna_rxf*)* @bna_rxf_promisc_cfg_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bna_rxf_promisc_cfg_apply(%struct.bna_rxf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bna_rxf*, align 8
  %4 = alloca %struct.bna*, align 8
  store %struct.bna_rxf* %0, %struct.bna_rxf** %3, align 8
  %5 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %6 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.bna*, %struct.bna** %8, align 8
  store %struct.bna* %9, %struct.bna** %4, align 8
  %10 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %11 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %14 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @is_promisc_enable(i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %20 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %23 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @promisc_inactive(i32 %21, i32 %24)
  %26 = load i32, i32* @BNA_RXMODE_PROMISC, align 4
  %27 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %28 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %32 = load i32, i32* @BNA_STATUS_T_ENABLED, align 4
  %33 = call i32 @bna_bfi_rx_promisc_req(%struct.bna_rxf* %31, i32 %32)
  store i32 1, i32* %2, align 4
  br label %65

34:                                               ; preds = %1
  %35 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %36 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %39 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @is_promisc_disable(i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %34
  %44 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %45 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %48 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @promisc_inactive(i32 %46, i32 %49)
  %51 = load i32, i32* @BNA_RXMODE_PROMISC, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %54 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* @BFI_INVALID_RID, align 4
  %58 = load %struct.bna*, %struct.bna** %4, align 8
  %59 = getelementptr inbounds %struct.bna, %struct.bna* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %61 = load i32, i32* @BNA_STATUS_T_DISABLED, align 4
  %62 = call i32 @bna_bfi_rx_promisc_req(%struct.bna_rxf* %60, i32 %61)
  store i32 1, i32* %2, align 4
  br label %65

63:                                               ; preds = %34
  br label %64

64:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %43, %18
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @is_promisc_enable(i32, i32) #1

declare dso_local i32 @promisc_inactive(i32, i32) #1

declare dso_local i32 @bna_bfi_rx_promisc_req(%struct.bna_rxf*, i32) #1

declare dso_local i64 @is_promisc_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
