; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_vlan_cfg_apply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_vlan_cfg_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bna_rxf*)* @bna_rxf_vlan_cfg_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bna_rxf_vlan_cfg_apply(%struct.bna_rxf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bna_rxf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bna_rxf* %0, %struct.bna_rxf** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %7 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %12 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %19, %10
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %14

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %29 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @bna_bfi_rx_vlan_filter_set(%struct.bna_rxf* %32, i32 %33)
  store i32 1, i32* %2, align 4
  br label %36

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @bna_bfi_rx_vlan_filter_set(%struct.bna_rxf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
