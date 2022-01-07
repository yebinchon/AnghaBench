; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_free_desc_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_free_desc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_ring, %struct.ixgbe_ring, %struct.ixgbe_hw }
%struct.ixgbe_ring = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_RXCTRL = common dso_local global i32 0, align 4
@IXGBE_RXCTRL_RXEN = common dso_local global i32 0, align 4
@IXGBE_TXDCTL_ENABLE = common dso_local global i32 0, align 4
@IXGBE_DMATXCTL = common dso_local global i32 0, align 4
@IXGBE_DMATXCTL_TE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_free_desc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_free_desc_rings(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_ring*, align 8
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 1
  store %struct.ixgbe_ring* %8, %struct.ixgbe_ring** %3, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 0
  store %struct.ixgbe_ring* %10, %struct.ixgbe_ring** %4, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 2
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %5, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %14 = load i32, i32* @IXGBE_RXCTRL, align 4
  %15 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @IXGBE_RXCTRL_RXEN, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %21 = load i32, i32* @IXGBE_RXCTRL, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %20, i32 %21, i32 %22)
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %25 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %26 = call i32 @ixgbe_disable_rx_queue(%struct.ixgbe_adapter* %24, %struct.ixgbe_ring* %25)
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %28 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %29 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IXGBE_TXDCTL(i32 %30)
  %32 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %27, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @IXGBE_TXDCTL_ENABLE, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %38 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %39 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IXGBE_TXDCTL(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %37, i32 %41, i32 %42)
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %45 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %60 [
    i32 129, label %48
    i32 128, label %48
  ]

48:                                               ; preds = %1, %1
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %50 = load i32, i32* @IXGBE_DMATXCTL, align 4
  %51 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @IXGBE_DMATXCTL_TE, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %57 = load i32, i32* @IXGBE_DMATXCTL, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %56, i32 %57, i32 %58)
  br label %61

60:                                               ; preds = %1
  br label %61

61:                                               ; preds = %60, %48
  %62 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %63 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %62)
  %64 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %65 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %64, i32 0, i32 1
  %66 = call i32 @ixgbe_free_tx_resources(%struct.ixgbe_ring* %65)
  %67 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %67, i32 0, i32 0
  %69 = call i32 @ixgbe_free_rx_resources(%struct.ixgbe_ring* %68)
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_disable_rx_queue(%struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @IXGBE_TXDCTL(i32) #1

declare dso_local i32 @ixgbe_reset(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_free_tx_resources(%struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_free_rx_resources(%struct.ixgbe_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
