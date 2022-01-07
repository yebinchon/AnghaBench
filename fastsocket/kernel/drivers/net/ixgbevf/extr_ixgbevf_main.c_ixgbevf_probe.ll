; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_info = type { i32, i32* }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32* }
%struct.ixgbevf_adapter = type { i32, i32, i32, %struct.TYPE_6__, %struct.ixgbe_hw, i32, %struct.pci_dev*, %struct.net_device* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.ixgbe_hw = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.ixgbevf_adapter* }
%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@ixgbevf_info_tbl = common dso_local global %struct.ixgbevf_info** null, align 8
@ixgbevf_probe.cards_found = internal global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"No usable DMA configuration, aborting\0A\00", align 1
@ixgbevf_driver_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"pci_request_regions failed 0x%x\0A\00", align 1
@MAX_TX_QUEUES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEFAULT_MSG_ENABLE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ixgbevf_mbx_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid MAC address\0A\00", align 1
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_FILTER = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@ixgbevf_watchdog = common dso_local global i32 0, align 4
@ixgbevf_reset_task = common dso_local global i32 0, align 4
@ixgbevf_watchdog_task = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"eth%d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%pM\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"MAC: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Intel(R) 82599 Virtual Function\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ixgbevf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ixgbevf_adapter*, align 8
  %8 = alloca %struct.ixgbe_hw*, align 8
  %9 = alloca %struct.ixgbevf_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.ixgbevf_adapter* null, %struct.ixgbevf_adapter** %7, align 8
  store %struct.ixgbe_hw* null, %struct.ixgbe_hw** %8, align 8
  %12 = load %struct.ixgbevf_info**, %struct.ixgbevf_info*** @ixgbevf_info_tbl, align 8
  %13 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %14 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_info*, %struct.ixgbevf_info** %12, i64 %15
  %17 = load %struct.ixgbevf_info*, %struct.ixgbevf_info** %16, align 8
  store %struct.ixgbevf_info* %17, %struct.ixgbevf_info** %9, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i32 @pci_enable_device(%struct.pci_dev* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %3, align 4
  br label %312

24:                                               ; preds = %2
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = call i32 @DMA_BIT_MASK(i32 64)
  %28 = call i32 @dma_set_mask(i32* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = call i32 @DMA_BIT_MASK(i32 64)
  %34 = call i32 @dma_set_coherent_mask(i32* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 1, i32* %11, align 4
  br label %57

37:                                               ; preds = %30, %24
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = call i32 @DMA_BIT_MASK(i32 32)
  %41 = call i32 @dma_set_mask(i32* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = call i32 @DMA_BIT_MASK(i32 32)
  %48 = call i32 @dma_set_coherent_mask(i32* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = call i32 (i32*, i8*, ...) @dev_err(i32* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %308

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %37
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %56, %36
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = load i32, i32* @ixgbevf_driver_name, align 4
  %60 = call i32 @pci_request_regions(%struct.pci_dev* %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i32*, i8*, ...) @dev_err(i32* %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %307

68:                                               ; preds = %57
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = call i32 @pci_set_master(%struct.pci_dev* %69)
  %71 = load i32, i32* @MAX_TX_QUEUES, align 4
  %72 = call %struct.net_device* @alloc_etherdev_mq(i32 104, i32 %71)
  store %struct.net_device* %72, %struct.net_device** %6, align 8
  %73 = load %struct.net_device*, %struct.net_device** %6, align 8
  %74 = icmp ne %struct.net_device* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %10, align 4
  br label %304

78:                                               ; preds = %68
  %79 = load %struct.net_device*, %struct.net_device** %6, align 8
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 0
  %82 = call i32 @SET_NETDEV_DEV(%struct.net_device* %79, i32* %81)
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = load %struct.net_device*, %struct.net_device** %6, align 8
  %85 = call i32 @pci_set_drvdata(%struct.pci_dev* %83, %struct.net_device* %84)
  %86 = load %struct.net_device*, %struct.net_device** %6, align 8
  %87 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %86)
  store %struct.ixgbevf_adapter* %87, %struct.ixgbevf_adapter** %7, align 8
  %88 = load %struct.net_device*, %struct.net_device** %6, align 8
  %89 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %90 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %89, i32 0, i32 7
  store %struct.net_device* %88, %struct.net_device** %90, align 8
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %93 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %92, i32 0, i32 6
  store %struct.pci_dev* %91, %struct.pci_dev** %93, align 8
  %94 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %95 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %94, i32 0, i32 4
  store %struct.ixgbe_hw* %95, %struct.ixgbe_hw** %8, align 8
  %96 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %97 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %98 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %97, i32 0, i32 3
  store %struct.ixgbevf_adapter* %96, %struct.ixgbevf_adapter** %98, align 8
  %99 = load i32, i32* @debug, align 4
  %100 = load i32, i32* @DEFAULT_MSG_ENABLE, align 4
  %101 = call i32 @netif_msg_init(i32 %99, i32 %100)
  %102 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %103 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 8
  %104 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %105 = call i32 @pci_save_state(%struct.pci_dev* %104)
  %106 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %107 = call i32 @pci_resource_start(%struct.pci_dev* %106, i32 0)
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = call i32 @pci_resource_len(%struct.pci_dev* %108, i32 0)
  %110 = call i32 @ioremap(i32 %107, i32 %109)
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %112 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %114 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %78
  %118 = load i32, i32* @EIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %10, align 4
  br label %301

120:                                              ; preds = %78
  %121 = load %struct.net_device*, %struct.net_device** %6, align 8
  %122 = call i32 @ixgbevf_assign_netdev_ops(%struct.net_device* %121)
  %123 = load i32, i32* @ixgbevf_probe.cards_found, align 4
  %124 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %125 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %127 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  %129 = load %struct.ixgbevf_info*, %struct.ixgbevf_info** %9, align 8
  %130 = getelementptr inbounds %struct.ixgbevf_info, %struct.ixgbevf_info* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @memcpy(i32* %128, i32* %131, i32 4)
  %133 = load %struct.ixgbevf_info*, %struct.ixgbevf_info** %9, align 8
  %134 = getelementptr inbounds %struct.ixgbevf_info, %struct.ixgbevf_info* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %137 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  %139 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %140 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = call i32 @memcpy(i32* %141, i32* @ixgbevf_mbx_ops, i32 4)
  %143 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %144 = call i32 @ixgbevf_sw_init(%struct.ixgbevf_adapter* %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %120
  br label %294

148:                                              ; preds = %120
  %149 = load %struct.net_device*, %struct.net_device** %6, align 8
  %150 = getelementptr inbounds %struct.net_device, %struct.net_device* %149, i32 0, i32 5
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %153 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.net_device*, %struct.net_device** %6, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @memcpy(i32* %151, i32* %156, i32 %159)
  %161 = load %struct.net_device*, %struct.net_device** %6, align 8
  %162 = getelementptr inbounds %struct.net_device, %struct.net_device* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @is_valid_ether_addr(i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %148
  %167 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %168 = load i32, i32* @EIO, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %10, align 4
  br label %294

170:                                              ; preds = %148
  %171 = load i32, i32* @NETIF_F_SG, align 4
  %172 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @NETIF_F_HW_VLAN_TX, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @NETIF_F_HW_VLAN_RX, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @NETIF_F_HW_VLAN_FILTER, align 4
  %179 = or i32 %177, %178
  %180 = load %struct.net_device*, %struct.net_device** %6, align 8
  %181 = getelementptr inbounds %struct.net_device, %struct.net_device* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %183 = load %struct.net_device*, %struct.net_device** %6, align 8
  %184 = getelementptr inbounds %struct.net_device, %struct.net_device* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  %187 = load i32, i32* @NETIF_F_TSO, align 4
  %188 = load %struct.net_device*, %struct.net_device** %6, align 8
  %189 = getelementptr inbounds %struct.net_device, %struct.net_device* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load i32, i32* @NETIF_F_TSO6, align 4
  %193 = load %struct.net_device*, %struct.net_device** %6, align 8
  %194 = getelementptr inbounds %struct.net_device, %struct.net_device* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 4
  %197 = load i32, i32* @NETIF_F_GRO, align 4
  %198 = load %struct.net_device*, %struct.net_device** %6, align 8
  %199 = getelementptr inbounds %struct.net_device, %struct.net_device* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 4
  %202 = load i32, i32* @NETIF_F_TSO, align 4
  %203 = load %struct.net_device*, %struct.net_device** %6, align 8
  %204 = getelementptr inbounds %struct.net_device, %struct.net_device* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  %207 = load i32, i32* @NETIF_F_TSO6, align 4
  %208 = load %struct.net_device*, %struct.net_device** %6, align 8
  %209 = getelementptr inbounds %struct.net_device, %struct.net_device* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 8
  %212 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %213 = load %struct.net_device*, %struct.net_device** %6, align 8
  %214 = getelementptr inbounds %struct.net_device, %struct.net_device* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 8
  %217 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %218 = load %struct.net_device*, %struct.net_device** %6, align 8
  %219 = getelementptr inbounds %struct.net_device, %struct.net_device* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 8
  %222 = load i32, i32* @NETIF_F_SG, align 4
  %223 = load %struct.net_device*, %struct.net_device** %6, align 8
  %224 = getelementptr inbounds %struct.net_device, %struct.net_device* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 8
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %170
  %230 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %231 = load %struct.net_device*, %struct.net_device** %6, align 8
  %232 = getelementptr inbounds %struct.net_device, %struct.net_device* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 4
  br label %235

235:                                              ; preds = %229, %170
  %236 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %237 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %236, i32 0, i32 3
  %238 = call i32 @init_timer(%struct.TYPE_6__* %237)
  %239 = load i32, i32* @ixgbevf_watchdog, align 4
  %240 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %241 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 1
  store i32 %239, i32* %242, align 8
  %243 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %244 = ptrtoint %struct.ixgbevf_adapter* %243 to i64
  %245 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %246 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  store i64 %244, i64* %247, align 8
  %248 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %249 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %248, i32 0, i32 2
  %250 = load i32, i32* @ixgbevf_reset_task, align 4
  %251 = call i32 @INIT_WORK(i32* %249, i32 %250)
  %252 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %253 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %252, i32 0, i32 1
  %254 = load i32, i32* @ixgbevf_watchdog_task, align 4
  %255 = call i32 @INIT_WORK(i32* %253, i32 %254)
  %256 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %257 = call i32 @ixgbevf_init_interrupt_scheme(%struct.ixgbevf_adapter* %256)
  store i32 %257, i32* %10, align 4
  %258 = load i32, i32* %10, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %235
  br label %294

261:                                              ; preds = %235
  %262 = load %struct.net_device*, %struct.net_device** %6, align 8
  %263 = getelementptr inbounds %struct.net_device, %struct.net_device* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @strcpy(i32 %264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %266 = load %struct.net_device*, %struct.net_device** %6, align 8
  %267 = call i32 @register_netdev(%struct.net_device* %266)
  store i32 %267, i32* %10, align 4
  %268 = load i32, i32* %10, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %261
  br label %291

271:                                              ; preds = %261
  %272 = load %struct.net_device*, %struct.net_device** %6, align 8
  %273 = call i32 @netif_carrier_off(%struct.net_device* %272)
  %274 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %275 = call i32 @ixgbevf_init_last_counter_stats(%struct.ixgbevf_adapter* %274)
  %276 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %277 = load %struct.net_device*, %struct.net_device** %6, align 8
  %278 = getelementptr inbounds %struct.net_device, %struct.net_device* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %276, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %279)
  %281 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %282 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %283 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %281, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %285)
  %287 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %288 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %287, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %289 = load i32, i32* @ixgbevf_probe.cards_found, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* @ixgbevf_probe.cards_found, align 4
  store i32 0, i32* %3, align 4
  br label %312

291:                                              ; preds = %270
  %292 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %293 = call i32 @ixgbevf_clear_interrupt_scheme(%struct.ixgbevf_adapter* %292)
  br label %294

294:                                              ; preds = %291, %260, %166, %147
  %295 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %296 = call i32 @ixgbevf_reset_interrupt_capability(%struct.ixgbevf_adapter* %295)
  %297 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %298 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @iounmap(i32 %299)
  br label %301

301:                                              ; preds = %294, %117
  %302 = load %struct.net_device*, %struct.net_device** %6, align 8
  %303 = call i32 @free_netdev(%struct.net_device* %302)
  br label %304

304:                                              ; preds = %301, %75
  %305 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %306 = call i32 @pci_release_regions(%struct.pci_dev* %305)
  br label %307

307:                                              ; preds = %304, %63
  br label %308

308:                                              ; preds = %307, %51
  %309 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %310 = call i32 @pci_disable_device(%struct.pci_dev* %309)
  %311 = load i32, i32* %10, align 4
  store i32 %311, i32* %3, align 4
  br label %312

312:                                              ; preds = %308, %271, %22
  %313 = load i32, i32* %3, align 4
  ret i32 %313
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_set_coherent_mask(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @ixgbevf_assign_netdev_ops(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ixgbevf_sw_init(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @init_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ixgbevf_init_interrupt_scheme(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_init_last_counter_stats(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, ...) #1

declare dso_local i32 @ixgbevf_clear_interrupt_scheme(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_reset_interrupt_capability(%struct.ixgbevf_adapter*) #1

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
