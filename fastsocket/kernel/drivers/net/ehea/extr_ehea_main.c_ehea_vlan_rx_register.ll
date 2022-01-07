; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_vlan_rx_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_vlan_rx_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_group = type { i32 }
%struct.ehea_port = type { i32, %struct.vlan_group*, %struct.ehea_adapter* }
%struct.ehea_adapter = type { i32 }
%struct.hcp_ehea_port_cb1 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"no mem for cb1\00", align 1
@H_PORT_CB1 = common dso_local global i32 0, align 4
@H_PORT_CB1_ALL = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"modify_ehea_port failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.vlan_group*)* @ehea_vlan_rx_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_vlan_rx_register(%struct.net_device* %0, %struct.vlan_group* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vlan_group*, align 8
  %5 = alloca %struct.ehea_port*, align 8
  %6 = alloca %struct.ehea_adapter*, align 8
  %7 = alloca %struct.hcp_ehea_port_cb1*, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.vlan_group* %1, %struct.vlan_group** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %9)
  store %struct.ehea_port* %10, %struct.ehea_port** %5, align 8
  %11 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %12 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %11, i32 0, i32 2
  %13 = load %struct.ehea_adapter*, %struct.ehea_adapter** %12, align 8
  store %struct.ehea_adapter* %13, %struct.ehea_adapter** %6, align 8
  %14 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %15 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %16 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %15, i32 0, i32 1
  store %struct.vlan_group* %14, %struct.vlan_group** %16, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @get_zeroed_page(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.hcp_ehea_port_cb1*
  store %struct.hcp_ehea_port_cb1* %20, %struct.hcp_ehea_port_cb1** %7, align 8
  %21 = load %struct.hcp_ehea_port_cb1*, %struct.hcp_ehea_port_cb1** %7, align 8
  %22 = icmp ne %struct.hcp_ehea_port_cb1* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = call i32 @ehea_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %45

25:                                               ; preds = %2
  %26 = load %struct.ehea_adapter*, %struct.ehea_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %30 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @H_PORT_CB1, align 4
  %33 = load i32, i32* @H_PORT_CB1_ALL, align 4
  %34 = load %struct.hcp_ehea_port_cb1*, %struct.hcp_ehea_port_cb1** %7, align 8
  %35 = call i64 @ehea_h_modify_ehea_port(i32 %28, i32 %31, i32 %32, i32 %33, %struct.hcp_ehea_port_cb1* %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @H_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = call i32 @ehea_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %25
  %42 = load %struct.hcp_ehea_port_cb1*, %struct.hcp_ehea_port_cb1** %7, align 8
  %43 = ptrtoint %struct.hcp_ehea_port_cb1* %42 to i64
  %44 = call i32 @free_page(i64 %43)
  br label %45

45:                                               ; preds = %41, %23
  ret void
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @ehea_error(i8*) #1

declare dso_local i64 @ehea_h_modify_ehea_port(i32, i32, i32, i32, %struct.hcp_ehea_port_cb1*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
