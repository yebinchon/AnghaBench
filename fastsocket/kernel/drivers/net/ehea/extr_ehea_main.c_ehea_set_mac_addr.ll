; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32 }
%struct.ehea_port = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32* }
%struct.hcp_ehea_port_cb0 = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"no mem for cb0\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@H_PORT_CB0 = common dso_local global i32 0, align 4
@H_PORT_CB0_MAC = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EHEA_PORT_UP = common dso_local global i64 0, align 8
@H_DEREG_BCMC = common dso_local global i32 0, align 4
@H_REG_BCMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @ehea_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_set_mac_addr(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ehea_port*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.hcp_ehea_port_cb0*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %10)
  store %struct.ehea_port* %11, %struct.ehea_port** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.sockaddr*
  store %struct.sockaddr* %13, %struct.sockaddr** %6, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @is_valid_ether_addr(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EADDRNOTAVAIL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  br label %118

22:                                               ; preds = %2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i64 @get_zeroed_page(i32 %23)
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.hcp_ehea_port_cb0*
  store %struct.hcp_ehea_port_cb0* %26, %struct.hcp_ehea_port_cb0** %7, align 8
  %27 = load %struct.hcp_ehea_port_cb0*, %struct.hcp_ehea_port_cb0** %7, align 8
  %28 = icmp ne %struct.hcp_ehea_port_cb0* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = call i32 @ehea_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %118

33:                                               ; preds = %22
  %34 = load %struct.hcp_ehea_port_cb0*, %struct.hcp_ehea_port_cb0** %7, align 8
  %35 = getelementptr inbounds %struct.hcp_ehea_port_cb0, %struct.hcp_ehea_port_cb0* %34, i32 0, i32 0
  %36 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %37 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @memcpy(i32* %35, i32* %39, i32 %40)
  %42 = load %struct.hcp_ehea_port_cb0*, %struct.hcp_ehea_port_cb0** %7, align 8
  %43 = getelementptr inbounds %struct.hcp_ehea_port_cb0, %struct.hcp_ehea_port_cb0* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 16
  %46 = load %struct.hcp_ehea_port_cb0*, %struct.hcp_ehea_port_cb0** %7, align 8
  %47 = getelementptr inbounds %struct.hcp_ehea_port_cb0, %struct.hcp_ehea_port_cb0* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %49 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %54 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @H_PORT_CB0, align 4
  %57 = load i32, i32* @H_PORT_CB0_MAC, align 4
  %58 = call i32 @EHEA_BMASK_SET(i32 %57, i32 1)
  %59 = load %struct.hcp_ehea_port_cb0*, %struct.hcp_ehea_port_cb0** %7, align 8
  %60 = call i64 @ehea_h_modify_ehea_port(i32 %52, i32 %55, i32 %56, i32 %58, %struct.hcp_ehea_port_cb0* %59)
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* @H_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %33
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %114

67:                                               ; preds = %33
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %72 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @memcpy(i32* %70, i32* %73, i32 %76)
  %78 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %79 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @EHEA_PORT_UP, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %67
  %84 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %85 = load i32, i32* @H_DEREG_BCMC, align 4
  %86 = call i32 @ehea_broadcast_reg_helper(%struct.ehea_port* %84, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %112

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %67
  %92 = load %struct.hcp_ehea_port_cb0*, %struct.hcp_ehea_port_cb0** %7, align 8
  %93 = getelementptr inbounds %struct.hcp_ehea_port_cb0, %struct.hcp_ehea_port_cb0* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 16
  %96 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %97 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %99 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @EHEA_PORT_UP, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %91
  %104 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %105 = load i32, i32* @H_REG_BCMC, align 4
  %106 = call i32 @ehea_broadcast_reg_helper(%struct.ehea_port* %104, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %112

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %91
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %111, %109, %89
  %113 = call i32 (...) @ehea_update_bcmc_registrations()
  br label %114

114:                                              ; preds = %112, %64
  %115 = load %struct.hcp_ehea_port_cb0*, %struct.hcp_ehea_port_cb0** %7, align 8
  %116 = ptrtoint %struct.hcp_ehea_port_cb0* %115 to i64
  %117 = call i32 @free_page(i64 %116)
  br label %118

118:                                              ; preds = %114, %29, %19
  %119 = load i32, i32* %8, align 4
  ret i32 %119
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @ehea_error(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @ehea_h_modify_ehea_port(i32, i32, i32, i32, %struct.hcp_ehea_port_cb0*) #1

declare dso_local i32 @EHEA_BMASK_SET(i32, i32) #1

declare dso_local i32 @ehea_broadcast_reg_helper(%struct.ehea_port*, i32) #1

declare dso_local i32 @ehea_update_bcmc_registrations(...) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
