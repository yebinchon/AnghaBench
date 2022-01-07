; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_vlan_strip_cfg_apply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_vlan_strip_cfg_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bna_rxf*)* @bna_rxf_vlan_strip_cfg_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bna_rxf_vlan_strip_cfg_apply(%struct.bna_rxf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bna_rxf*, align 8
  store %struct.bna_rxf* %0, %struct.bna_rxf** %3, align 8
  %4 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %5 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %10 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %12 = call i32 @bna_bfi_vlan_strip_enable(%struct.bna_rxf* %11)
  store i32 1, i32* %2, align 4
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local i32 @bna_bfi_vlan_strip_enable(%struct.bna_rxf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
