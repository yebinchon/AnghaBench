; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_ethtool_to_net_trans_rule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_ethtool_to_net_trans_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ethhdr }
%struct.ethhdr = type { i32, i32* }
%struct.list_head = type { i32 }
%struct.mlx4_spec_list = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mlx4_en_priv = type { i32 }

@FLOW_EXT = common dso_local global i32 0, align 4
@FLOW_MAC_EXT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, %struct.list_head*)* @mlx4_en_ethtool_to_net_trans_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_ethtool_to_net_trans_rule(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_rxnfc*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ethhdr*, align 8
  %10 = alloca %struct.mlx4_spec_list*, align 8
  %11 = alloca %struct.mlx4_en_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.mlx4_en_priv* %13, %struct.mlx4_en_priv** %11, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %16 = call i32 @mlx4_en_validate_flow(%struct.net_device* %14, %struct.ethtool_rxnfc* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %84

21:                                               ; preds = %3
  %22 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %23 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FLOW_EXT, align 4
  %27 = load i32, i32* @FLOW_MAC_EXT, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %25, %29
  switch i32 %30, label %82 [
    i32 131, label %31
    i32 130, label %67
    i32 129, label %72
    i32 128, label %77
  ]

31:                                               ; preds = %21
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.mlx4_spec_list* @kzalloc(i32 8, i32 %32)
  store %struct.mlx4_spec_list* %33, %struct.mlx4_spec_list** %10, align 8
  %34 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %35 = icmp ne %struct.mlx4_spec_list* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %84

39:                                               ; preds = %31
  %40 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %41 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store %struct.ethhdr* %43, %struct.ethhdr** %9, align 8
  %44 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %45 = load %struct.list_head*, %struct.list_head** %7, align 8
  %46 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %47 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %48 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = call i32 @mlx4_en_ethtool_add_mac_rule(%struct.ethtool_rxnfc* %44, %struct.list_head* %45, %struct.mlx4_spec_list* %46, i32* %50)
  %52 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %53 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %56 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %59 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %39
  %63 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %64 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %39
  br label %82

67:                                               ; preds = %21
  %68 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %11, align 8
  %69 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %70 = load %struct.list_head*, %struct.list_head** %7, align 8
  %71 = call i32 @add_ip_rule(%struct.mlx4_en_priv* %68, %struct.ethtool_rxnfc* %69, %struct.list_head* %70)
  store i32 %71, i32* %8, align 4
  br label %82

72:                                               ; preds = %21
  %73 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %11, align 8
  %74 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %75 = load %struct.list_head*, %struct.list_head** %7, align 8
  %76 = call i32 @add_tcp_udp_rule(%struct.mlx4_en_priv* %73, %struct.ethtool_rxnfc* %74, %struct.list_head* %75, i32 129)
  store i32 %76, i32* %8, align 4
  br label %82

77:                                               ; preds = %21
  %78 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %11, align 8
  %79 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %80 = load %struct.list_head*, %struct.list_head** %7, align 8
  %81 = call i32 @add_tcp_udp_rule(%struct.mlx4_en_priv* %78, %struct.ethtool_rxnfc* %79, %struct.list_head* %80, i32 128)
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %21, %77, %72, %67, %66
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %36, %19
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx4_en_validate_flow(%struct.net_device*, %struct.ethtool_rxnfc*) #1

declare dso_local %struct.mlx4_spec_list* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx4_en_ethtool_add_mac_rule(%struct.ethtool_rxnfc*, %struct.list_head*, %struct.mlx4_spec_list*, i32*) #1

declare dso_local i32 @add_ip_rule(%struct.mlx4_en_priv*, %struct.ethtool_rxnfc*, %struct.list_head*) #1

declare dso_local i32 @add_tcp_udp_rule(%struct.mlx4_en_priv*, %struct.ethtool_rxnfc*, %struct.list_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
