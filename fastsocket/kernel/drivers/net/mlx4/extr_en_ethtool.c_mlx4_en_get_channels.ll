; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_get_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_get_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i32, i32, i32, i32 }
%struct.mlx4_en_priv = type { i32, i32 }

@MAX_RX_RINGS = common dso_local global i32 0, align 4
@MLX4_EN_MAX_TX_RING_P_UP = common dso_local global i32 0, align 4
@MLX4_EN_NUM_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_channels*)* @mlx4_en_get_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_get_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_channels*, align 8
  %5 = alloca %struct.mlx4_en_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.mlx4_en_priv* %7, %struct.mlx4_en_priv** %5, align 8
  %8 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %9 = call i32 @memset(%struct.ethtool_channels* %8, i32 0, i32 16)
  %10 = load i32, i32* @MAX_RX_RINGS, align 4
  %11 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @MLX4_EN_MAX_TX_RING_P_UP, align 4
  %14 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MLX4_EN_NUM_UP, align 4
  %25 = sdiv i32 %23, %24
  %26 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.ethtool_channels*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
