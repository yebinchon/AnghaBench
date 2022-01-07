; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_get_sge_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_get_sge_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.port_info = type { i64, %struct.adapter* }
%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.qset_params* }
%struct.qset_params = type { i32*, i32, i32, i32 }

@MAX_RX_BUFFERS = common dso_local global i32 0, align 4
@MAX_RX_JUMBO_BUFFERS = common dso_local global i32 0, align 4
@MAX_TXQ_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @get_sge_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_sge_param(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.qset_params*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.port_info* @netdev_priv(%struct.net_device* %8)
  store %struct.port_info* %9, %struct.port_info** %5, align 8
  %10 = load %struct.port_info*, %struct.port_info** %5, align 8
  %11 = getelementptr inbounds %struct.port_info, %struct.port_info* %10, i32 0, i32 1
  %12 = load %struct.adapter*, %struct.adapter** %11, align 8
  store %struct.adapter* %12, %struct.adapter** %6, align 8
  %13 = load %struct.adapter*, %struct.adapter** %6, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.qset_params*, %struct.qset_params** %16, align 8
  %18 = load %struct.port_info*, %struct.port_info** %5, align 8
  %19 = getelementptr inbounds %struct.port_info, %struct.port_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %17, i64 %20
  store %struct.qset_params* %21, %struct.qset_params** %7, align 8
  %22 = load i32, i32* @MAX_RX_BUFFERS, align 4
  %23 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @MAX_RX_JUMBO_BUFFERS, align 4
  %26 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @MAX_TXQ_ENTRIES, align 4
  %29 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.qset_params*, %struct.qset_params** %7, align 8
  %32 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.qset_params*, %struct.qset_params** %7, align 8
  %37 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %40 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.qset_params*, %struct.qset_params** %7, align 8
  %42 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.qset_params*, %struct.qset_params** %7, align 8
  %47 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  ret void
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
