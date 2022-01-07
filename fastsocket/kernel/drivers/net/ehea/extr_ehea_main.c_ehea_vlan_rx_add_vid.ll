; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ehea_port = type { i32, %struct.ehea_adapter* }
%struct.ehea_adapter = type { i32 }
%struct.hcp_ehea_port_cb1 = type { i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"no mem for cb1\00", align 1
@H_PORT_CB1 = common dso_local global i32 0, align 4
@H_PORT_CB1_ALL = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"query_ehea_port failed\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"modify_ehea_port failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i16)* @ehea_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_vlan_rx_add_vid(%struct.net_device* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.ehea_port*, align 8
  %6 = alloca %struct.ehea_adapter*, align 8
  %7 = alloca %struct.hcp_ehea_port_cb1*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %10)
  store %struct.ehea_port* %11, %struct.ehea_port** %5, align 8
  %12 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %13 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %12, i32 0, i32 1
  %14 = load %struct.ehea_adapter*, %struct.ehea_adapter** %13, align 8
  store %struct.ehea_adapter* %14, %struct.ehea_adapter** %6, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i64 @get_zeroed_page(i32 %15)
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.hcp_ehea_port_cb1*
  store %struct.hcp_ehea_port_cb1* %18, %struct.hcp_ehea_port_cb1** %7, align 8
  %19 = load %struct.hcp_ehea_port_cb1*, %struct.hcp_ehea_port_cb1** %7, align 8
  %20 = icmp ne %struct.hcp_ehea_port_cb1* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = call i32 @ehea_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %72

23:                                               ; preds = %2
  %24 = load %struct.ehea_adapter*, %struct.ehea_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %28 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @H_PORT_CB1, align 4
  %31 = load i32, i32* @H_PORT_CB1_ALL, align 4
  %32 = load %struct.hcp_ehea_port_cb1*, %struct.hcp_ehea_port_cb1** %7, align 8
  %33 = call i64 @ehea_h_query_ehea_port(i32 %26, i32 %29, i32 %30, i32 %31, %struct.hcp_ehea_port_cb1* %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @H_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = call i32 @ehea_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %72

39:                                               ; preds = %23
  %40 = load i16, i16* %4, align 2
  %41 = zext i16 %40 to i32
  %42 = sdiv i32 %41, 64
  store i32 %42, i32* %8, align 4
  %43 = load i16, i16* %4, align 2
  %44 = zext i16 %43 to i32
  %45 = and i32 %44, 63
  %46 = zext i32 %45 to i64
  %47 = lshr i64 -9223372036854775808, %46
  %48 = load %struct.hcp_ehea_port_cb1*, %struct.hcp_ehea_port_cb1** %7, align 8
  %49 = getelementptr inbounds %struct.hcp_ehea_port_cb1, %struct.hcp_ehea_port_cb1* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = or i64 %54, %47
  store i64 %55, i64* %53, align 8
  %56 = load %struct.ehea_adapter*, %struct.ehea_adapter** %6, align 8
  %57 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %60 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @H_PORT_CB1, align 4
  %63 = load i32, i32* @H_PORT_CB1_ALL, align 4
  %64 = load %struct.hcp_ehea_port_cb1*, %struct.hcp_ehea_port_cb1** %7, align 8
  %65 = call i64 @ehea_h_modify_ehea_port(i32 %58, i32 %61, i32 %62, i32 %63, %struct.hcp_ehea_port_cb1* %64)
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @H_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %39
  %70 = call i32 @ehea_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %39
  br label %72

72:                                               ; preds = %71, %37, %21
  %73 = load %struct.hcp_ehea_port_cb1*, %struct.hcp_ehea_port_cb1** %7, align 8
  %74 = ptrtoint %struct.hcp_ehea_port_cb1* %73 to i64
  %75 = call i32 @free_page(i64 %74)
  ret void
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @ehea_error(i8*) #1

declare dso_local i64 @ehea_h_query_ehea_port(i32, i32, i32, i32, %struct.hcp_ehea_port_cb1*) #1

declare dso_local i64 @ehea_h_modify_ehea_port(i32, i32, i32, i32, %struct.hcp_ehea_port_cb1*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
