; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_cfg_apply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_cfg_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bna_rxf*)* @bna_rxf_cfg_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bna_rxf_cfg_apply(%struct.bna_rxf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bna_rxf*, align 8
  store %struct.bna_rxf* %0, %struct.bna_rxf** %3, align 8
  %4 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %5 = call i64 @bna_rxf_ucast_cfg_apply(%struct.bna_rxf* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %39

8:                                                ; preds = %1
  %9 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %10 = call i64 @bna_rxf_mcast_cfg_apply(%struct.bna_rxf* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %39

13:                                               ; preds = %8
  %14 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %15 = call i64 @bna_rxf_promisc_cfg_apply(%struct.bna_rxf* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %39

18:                                               ; preds = %13
  %19 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %20 = call i64 @bna_rxf_allmulti_cfg_apply(%struct.bna_rxf* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %39

23:                                               ; preds = %18
  %24 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %25 = call i64 @bna_rxf_vlan_cfg_apply(%struct.bna_rxf* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %39

28:                                               ; preds = %23
  %29 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %30 = call i64 @bna_rxf_vlan_strip_cfg_apply(%struct.bna_rxf* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %39

33:                                               ; preds = %28
  %34 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %35 = call i64 @bna_rxf_rss_cfg_apply(%struct.bna_rxf* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %39

38:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %37, %32, %27, %22, %17, %12, %7
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @bna_rxf_ucast_cfg_apply(%struct.bna_rxf*) #1

declare dso_local i64 @bna_rxf_mcast_cfg_apply(%struct.bna_rxf*) #1

declare dso_local i64 @bna_rxf_promisc_cfg_apply(%struct.bna_rxf*) #1

declare dso_local i64 @bna_rxf_allmulti_cfg_apply(%struct.bna_rxf*) #1

declare dso_local i64 @bna_rxf_vlan_cfg_apply(%struct.bna_rxf*) #1

declare dso_local i64 @bna_rxf_vlan_strip_cfg_apply(%struct.bna_rxf*) #1

declare dso_local i64 @bna_rxf_rss_cfg_apply(%struct.bna_rxf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
