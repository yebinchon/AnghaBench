; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_setup_netdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_setup_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { %struct.net_device*, %struct.TYPE_6__*, i64, i64, i32, %struct.TYPE_5__, %struct.TYPE_7__, i64, %struct.TYPE_7__ }
%struct.net_device = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { void (i64)*, i64 }
%struct.device_node = type { i32 }
%struct.sockaddr = type { i32 }

@spider_net_cleanup_tx_ring = common dso_local global i64 0, align 8
@SPIDER_NET_RX_CSUM_DEFAULT = common dso_local global i32 0, align 4
@spider_net_poll = common dso_local global i32 0, align 4
@SPIDER_NET_NAPI_WEIGHT = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_LLTX = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"local-mac-address\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to set MAC address: %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Couldn't register net_device: %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Initialized device %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spider_net_card*)* @spider_net_setup_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spider_net_setup_netdev(%struct.spider_net_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spider_net_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.sockaddr, align 4
  %8 = alloca i32*, align 8
  store %struct.spider_net_card* %0, %struct.spider_net_card** %3, align 8
  %9 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %10 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %14 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = call i32 @SET_NETDEV_DEV(%struct.net_device* %12, i32* %16)
  %18 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %19 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call i32 @pci_set_drvdata(%struct.TYPE_6__* %20, %struct.net_device* %21)
  %23 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %24 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %23, i32 0, i32 8
  %25 = call i32 @init_timer(%struct.TYPE_7__* %24)
  %26 = load i64, i64* @spider_net_cleanup_tx_ring, align 8
  %27 = inttoptr i64 %26 to void (i64)*
  %28 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %29 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store void (i64)* %27, void (i64)** %30, align 8
  %31 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %32 = ptrtoint %struct.spider_net_card* %31 to i64
  %33 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %34 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i64 %32, i64* %35, align 8
  %36 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %37 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %44 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %43, i32 0, i32 7
  store i64 0, i64* %44, align 8
  %45 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %46 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %45, i32 0, i32 6
  %47 = call i32 @init_timer(%struct.TYPE_7__* %46)
  %48 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %49 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store void (i64)* @spider_net_link_phy, void (i64)** %50, align 8
  %51 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %52 = ptrtoint %struct.spider_net_card* %51 to i64
  %53 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %54 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i64 %52, i64* %55, align 8
  %56 = load i32, i32* @SPIDER_NET_RX_CSUM_DEFAULT, align 4
  %57 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %58 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %62 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %61, i32 0, i32 4
  %63 = load i32, i32* @spider_net_poll, align 4
  %64 = load i32, i32* @SPIDER_NET_NAPI_WEIGHT, align 4
  %65 = call i32 @netif_napi_add(%struct.net_device* %60, i32* %62, i32 %63, i32 %64)
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = call i32 @spider_net_setup_netdev_ops(%struct.net_device* %66)
  %68 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %69 = load i32, i32* @NETIF_F_LLTX, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.net_device*, %struct.net_device** %5, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %74 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.net_device*, %struct.net_device** %5, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %81 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %83 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %85 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = call %struct.device_node* @pci_device_to_OF_node(%struct.TYPE_6__* %86)
  store %struct.device_node* %87, %struct.device_node** %6, align 8
  %88 = load %struct.device_node*, %struct.device_node** %6, align 8
  %89 = icmp ne %struct.device_node* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %1
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %150

93:                                               ; preds = %1
  %94 = load %struct.device_node*, %struct.device_node** %6, align 8
  %95 = call i32* @of_get_property(%struct.device_node* %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %95, i32** %8, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %150

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %7, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* @ETH_ALEN, align 4
  %106 = call i32 @memcpy(i32 %103, i32* %104, i32 %105)
  %107 = load %struct.net_device*, %struct.net_device** %5, align 8
  %108 = call i32 @spider_net_set_mac(%struct.net_device* %107, %struct.sockaddr* %7)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %101
  %112 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %113 = call i64 @netif_msg_probe(%struct.spider_net_card* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %117 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %116, i32 0, i32 0
  %118 = load %struct.net_device*, %struct.net_device** %117, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 2
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %115, %111, %101
  %123 = load %struct.net_device*, %struct.net_device** %5, align 8
  %124 = call i32 @register_netdev(%struct.net_device* %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %122
  %128 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %129 = call i64 @netif_msg_probe(%struct.spider_net_card* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %133 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %132, i32 0, i32 0
  %134 = load %struct.net_device*, %struct.net_device** %133, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 2
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @dev_err(i32* %135, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %131, %127
  %139 = load i32, i32* %4, align 4
  store i32 %139, i32* %2, align 4
  br label %150

140:                                              ; preds = %122
  %141 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %142 = call i64 @netif_msg_probe(%struct.spider_net_card* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load %struct.net_device*, %struct.net_device** %5, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %144, %140
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %149, %138, %98, %90
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.TYPE_6__*, %struct.net_device*) #1

declare dso_local i32 @init_timer(%struct.TYPE_7__*) #1

declare dso_local void @spider_net_link_phy(i64) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @spider_net_setup_netdev_ops(%struct.net_device*) #1

declare dso_local %struct.device_node* @pci_device_to_OF_node(%struct.TYPE_6__*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @spider_net_set_mac(%struct.net_device*, %struct.sockaddr*) #1

declare dso_local i64 @netif_msg_probe(%struct.spider_net_card*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
