; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_compute_hw_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_compute_hw_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_enet_priv = type { i32, i32 }

@VLAN_ETH_HLEN = common dso_local global i64 0, align 8
@BCMENET_MAX_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@BCMENET_DMA_MAXBURST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_enet_priv*, i32)* @compute_hw_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_hw_mtu(%struct.bcm_enet_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_enet_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcm_enet_priv* %0, %struct.bcm_enet_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, %8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 64
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @BCMENET_MAX_MTU, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %35

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %25 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @ETH_FCS_LEN, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* @BCMENET_DMA_MAXBURST, align 4
  %31 = mul nsw i32 %30, 4
  %32 = call i32 @ALIGN(i64 %29, i32 %31)
  %33 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %34 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %22, %19
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @ALIGN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
