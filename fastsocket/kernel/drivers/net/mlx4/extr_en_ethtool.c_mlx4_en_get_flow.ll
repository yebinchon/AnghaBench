; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_get_flow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_get_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32 }
%struct.ethtool_flow_id = type { i32, i64 }
%struct.mlx4_en_priv = type { %struct.ethtool_flow_id* }

@MAX_NUM_OF_FS_RULES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32)* @mlx4_en_get_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_get_flow(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_rxnfc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ethtool_flow_id*, align 8
  %10 = alloca %struct.mlx4_en_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.mlx4_en_priv* %12, %struct.mlx4_en_priv** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MAX_NUM_OF_FS_RULES, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %44

22:                                               ; preds = %15
  %23 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %10, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %23, i32 0, i32 0
  %25 = load %struct.ethtool_flow_id*, %struct.ethtool_flow_id** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ethtool_flow_id, %struct.ethtool_flow_id* %25, i64 %27
  store %struct.ethtool_flow_id* %28, %struct.ethtool_flow_id** %9, align 8
  %29 = load %struct.ethtool_flow_id*, %struct.ethtool_flow_id** %9, align 8
  %30 = getelementptr inbounds %struct.ethtool_flow_id, %struct.ethtool_flow_id* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %35 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %34, i32 0, i32 0
  %36 = load %struct.ethtool_flow_id*, %struct.ethtool_flow_id** %9, align 8
  %37 = getelementptr inbounds %struct.ethtool_flow_id, %struct.ethtool_flow_id* %36, i32 0, i32 0
  %38 = call i32 @memcpy(i32* %35, i32* %37, i32 4)
  br label %42

39:                                               ; preds = %22
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %33
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %19
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
