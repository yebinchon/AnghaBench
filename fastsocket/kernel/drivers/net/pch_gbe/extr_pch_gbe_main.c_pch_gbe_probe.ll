; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i32* }
%struct.pch_gbe_adapter = type { %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, %struct.pci_dev*, %struct.net_device* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.pch_gbe_adapter* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"ERR: No usable DMA configuration, aborting\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"ERR: Can't reserve PCI I/O and memory resources\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"ERR: Can't allocate and set up an Ethernet device\0A\00", align 1
@PCH_GBE_PCI_BAR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Can't ioremap\0A\00", align 1
@pch_gbe_netdev_ops = common dso_local global i32 0, align 4
@PCH_GBE_WATCHDOG_PERIOD = common dso_local global i32 0, align 4
@pch_gbe_napi_poll = common dso_local global i32 0, align 4
@PCH_GBE_RX_WEIGHT = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"PHY initialize error\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"MAC address Read Error\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Invalid MAC address, interface disabled.\0A\00", align 1
@pch_gbe_watchdog = common dso_local global i32 0, align 4
@pch_gbe_reset_task = common dso_local global i32 0, align 4
@PCH_GBE_WL_INIT_SETTING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"MAC address : %pM\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"OKIsemi(R) PCH Network Connection\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @pch_gbe_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.pch_gbe_adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @pci_enable_device(%struct.pci_dev* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %246

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i32 @DMA_BIT_MASK(i32 64)
  %18 = call i32 @pci_set_dma_mask(%struct.pci_dev* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call i32 @DMA_BIT_MASK(i32 64)
  %23 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %20, %15
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i32 @DMA_BIT_MASK(i32 32)
  %28 = call i32 @pci_set_dma_mask(%struct.pci_dev* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = call i32 @DMA_BIT_MASK(i32 32)
  %34 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %242

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %25
  br label %43

43:                                               ; preds = %42, %20
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = load i32, i32* @KBUILD_MODNAME, align 4
  %46 = call i32 @pci_request_regions(%struct.pci_dev* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %242

53:                                               ; preds = %43
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = call i32 @pci_set_master(%struct.pci_dev* %54)
  %56 = call %struct.net_device* @alloc_etherdev(i32 56)
  store %struct.net_device* %56, %struct.net_device** %6, align 8
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = icmp ne %struct.net_device* %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %239

65:                                               ; preds = %53
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 0
  %69 = call i32 @SET_NETDEV_DEV(%struct.net_device* %66, i32* %68)
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = load %struct.net_device*, %struct.net_device** %6, align 8
  %72 = call i32 @pci_set_drvdata(%struct.pci_dev* %70, %struct.net_device* %71)
  %73 = load %struct.net_device*, %struct.net_device** %6, align 8
  %74 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %73)
  store %struct.pch_gbe_adapter* %74, %struct.pch_gbe_adapter** %7, align 8
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %77 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %76, i32 0, i32 8
  store %struct.net_device* %75, %struct.net_device** %77, align 8
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %80 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %79, i32 0, i32 7
  store %struct.pci_dev* %78, %struct.pci_dev** %80, align 8
  %81 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %82 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %83 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  store %struct.pch_gbe_adapter* %81, %struct.pch_gbe_adapter** %84, align 8
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = load i32, i32* @PCH_GBE_PCI_BAR, align 4
  %87 = call i32 @pci_iomap(%struct.pci_dev* %85, i32 %86, i32 0)
  %88 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %89 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %92 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %65
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %8, align 4
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 0
  %101 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %236

102:                                              ; preds = %65
  %103 = load %struct.net_device*, %struct.net_device** %6, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 4
  store i32* @pch_gbe_netdev_ops, i32** %104, align 8
  %105 = load i32, i32* @PCH_GBE_WATCHDOG_PERIOD, align 4
  %106 = load %struct.net_device*, %struct.net_device** %6, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.net_device*, %struct.net_device** %6, align 8
  %109 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %110 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %109, i32 0, i32 6
  %111 = load i32, i32* @pch_gbe_napi_poll, align 4
  %112 = load i32, i32* @PCH_GBE_RX_WEIGHT, align 4
  %113 = call i32 @netif_napi_add(%struct.net_device* %108, i32* %110, i32 %111, i32 %112)
  %114 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %115 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.net_device*, %struct.net_device** %6, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.net_device*, %struct.net_device** %6, align 8
  %122 = call i32 @pch_gbe_set_ethtool_ops(%struct.net_device* %121)
  %123 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %124 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %123, i32 0, i32 0
  %125 = call i32 @pch_gbe_mac_load_mac_addr(%struct.TYPE_8__* %124)
  %126 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %127 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %126, i32 0, i32 0
  %128 = call i32 @pch_gbe_mac_reset_hw(%struct.TYPE_8__* %127)
  %129 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %130 = call i32 @pch_gbe_sw_init(%struct.pch_gbe_adapter* %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %102
  br label %230

134:                                              ; preds = %102
  %135 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %136 = call i32 @pch_gbe_init_phy(%struct.pch_gbe_adapter* %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %141 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %140, i32 0, i32 0
  %142 = call i32 @dev_err(i32* %141, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %218

143:                                              ; preds = %134
  %144 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %145 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %144, i32 0, i32 0
  %146 = call i32 @pch_gbe_hal_get_bus_info(%struct.TYPE_8__* %145)
  %147 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %148 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %147, i32 0, i32 0
  %149 = call i32 @pch_gbe_hal_read_mac_addr(%struct.TYPE_8__* %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %143
  %153 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %154 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %153, i32 0, i32 0
  %155 = call i32 @dev_err(i32* %154, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %218

156:                                              ; preds = %143
  %157 = load %struct.net_device*, %struct.net_device** %6, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %161 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.net_device*, %struct.net_device** %6, align 8
  %166 = getelementptr inbounds %struct.net_device, %struct.net_device* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @memcpy(i32 %159, i32 %164, i32 %167)
  %169 = load %struct.net_device*, %struct.net_device** %6, align 8
  %170 = getelementptr inbounds %struct.net_device, %struct.net_device* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @is_valid_ether_addr(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %156
  %175 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %176 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %175, i32 0, i32 0
  %177 = call i32 @dev_err(i32* %176, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %178

178:                                              ; preds = %174, %156
  %179 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %180 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %179, i32 0, i32 5
  %181 = load i32, i32* @pch_gbe_watchdog, align 4
  %182 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %183 = ptrtoint %struct.pch_gbe_adapter* %182 to i64
  %184 = call i32 @setup_timer(i32* %180, i32 %181, i64 %183)
  %185 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %186 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %185, i32 0, i32 4
  %187 = load i32, i32* @pch_gbe_reset_task, align 4
  %188 = call i32 @INIT_WORK(i32* %186, i32 %187)
  %189 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %190 = call i32 @pch_gbe_check_options(%struct.pch_gbe_adapter* %189)
  %191 = load i32, i32* @PCH_GBE_WL_INIT_SETTING, align 4
  %192 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %193 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 8
  %194 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %195 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %194, i32 0, i32 0
  %196 = load %struct.net_device*, %struct.net_device** %6, align 8
  %197 = getelementptr inbounds %struct.net_device, %struct.net_device* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @dev_info(i32* %195, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %198)
  %200 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %201 = call i32 @pch_gbe_reset(%struct.pch_gbe_adapter* %200)
  %202 = load %struct.net_device*, %struct.net_device** %6, align 8
  %203 = call i32 @register_netdev(%struct.net_device* %202)
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %178
  br label %218

207:                                              ; preds = %178
  %208 = load %struct.net_device*, %struct.net_device** %6, align 8
  %209 = call i32 @netif_carrier_off(%struct.net_device* %208)
  %210 = load %struct.net_device*, %struct.net_device** %6, align 8
  %211 = call i32 @netif_stop_queue(%struct.net_device* %210)
  %212 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %213 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %212, i32 0, i32 0
  %214 = call i32 @dev_dbg(i32* %213, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %215 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %216 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %215, i32 0, i32 0
  %217 = call i32 @device_set_wakeup_enable(i32* %216, i32 1)
  store i32 0, i32* %3, align 4
  br label %246

218:                                              ; preds = %206, %152, %139
  %219 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %220 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %219, i32 0, i32 0
  %221 = call i32 @pch_gbe_hal_phy_hw_reset(%struct.TYPE_8__* %220)
  %222 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %223 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @kfree(i32 %224)
  %226 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %227 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @kfree(i32 %228)
  br label %230

230:                                              ; preds = %218, %133
  %231 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %232 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @iounmap(i32 %234)
  br label %236

236:                                              ; preds = %230, %96
  %237 = load %struct.net_device*, %struct.net_device** %6, align 8
  %238 = call i32 @free_netdev(%struct.net_device* %237)
  br label %239

239:                                              ; preds = %236, %59
  %240 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %241 = call i32 @pci_release_regions(%struct.pci_dev* %240)
  br label %242

242:                                              ; preds = %239, %49, %37
  %243 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %244 = call i32 @pci_disable_device(%struct.pci_dev* %243)
  %245 = load i32, i32* %8, align 4
  store i32 %245, i32* %3, align 4
  br label %246

246:                                              ; preds = %242, %207, %13
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @pch_gbe_set_ethtool_ops(%struct.net_device*) #1

declare dso_local i32 @pch_gbe_mac_load_mac_addr(%struct.TYPE_8__*) #1

declare dso_local i32 @pch_gbe_mac_reset_hw(%struct.TYPE_8__*) #1

declare dso_local i32 @pch_gbe_sw_init(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_init_phy(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_hal_get_bus_info(%struct.TYPE_8__*) #1

declare dso_local i32 @pch_gbe_hal_read_mac_addr(%struct.TYPE_8__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @pch_gbe_check_options(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @pch_gbe_reset(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

declare dso_local i32 @pch_gbe_hal_phy_hw_reset(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
