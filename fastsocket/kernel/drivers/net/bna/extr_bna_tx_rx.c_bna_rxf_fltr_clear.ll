; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_fltr_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_fltr_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32 }

@BNA_HARD_CLEANUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bna_rxf*)* @bna_rxf_fltr_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bna_rxf_fltr_clear(%struct.bna_rxf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bna_rxf*, align 8
  store %struct.bna_rxf* %0, %struct.bna_rxf** %3, align 8
  %4 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %5 = load i32, i32* @BNA_HARD_CLEANUP, align 4
  %6 = call i64 @bna_rxf_ucast_cfg_reset(%struct.bna_rxf* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %28

9:                                                ; preds = %1
  %10 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %11 = load i32, i32* @BNA_HARD_CLEANUP, align 4
  %12 = call i64 @bna_rxf_mcast_cfg_reset(%struct.bna_rxf* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %28

15:                                               ; preds = %9
  %16 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %17 = load i32, i32* @BNA_HARD_CLEANUP, align 4
  %18 = call i64 @bna_rxf_promisc_cfg_reset(%struct.bna_rxf* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %28

21:                                               ; preds = %15
  %22 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %23 = load i32, i32* @BNA_HARD_CLEANUP, align 4
  %24 = call i64 @bna_rxf_allmulti_cfg_reset(%struct.bna_rxf* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %28

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %26, %20, %14, %8
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @bna_rxf_ucast_cfg_reset(%struct.bna_rxf*, i32) #1

declare dso_local i64 @bna_rxf_mcast_cfg_reset(%struct.bna_rxf*, i32) #1

declare dso_local i64 @bna_rxf_promisc_cfg_reset(%struct.bna_rxf*, i32) #1

declare dso_local i64 @bna_rxf_allmulti_cfg_reset(%struct.bna_rxf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
