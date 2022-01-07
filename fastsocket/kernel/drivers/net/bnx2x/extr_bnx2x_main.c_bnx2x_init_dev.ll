; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_init_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_2__, %struct.pci_dev*, i32, i32, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.net_device*, i64, i32 }
%struct.pci_dev = type { i32, i32, i32, i32, i32 }
%struct.net_device = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32 }

@BCM57710 = common dso_local global i64 0, align 8
@BCM57711 = common dso_local global i64 0, align 8
@BCM57711E = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Cannot enable PCI device, aborting\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Cannot find PCI device base address, aborting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Cannot find second PCI device base address, aborting\0A\00", align 1
@PCICFG_REVISION_ID_OFFSET = common dso_local global i32 0, align 4
@PCICFG_REVESION_ID_MASK = common dso_local global i32 0, align 4
@PCICFG_REVESION_ID_ERROR_VAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"PCI device error, probably due to fan failure, aborting\0A\00", align 1
@DRV_MODULE_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Cannot obtain PCI resources, aborting\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Cannot find power management capability, aborting\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Not PCI Express, aborting\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Cannot map register space, aborting\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCICFG_ME_REGISTER = common dso_local global i32 0, align 4
@ME_REG_ABS_PF_NUM = common dso_local global i32 0, align 4
@ME_REG_ABS_PF_NUM_SHIFT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"me reg PF num: %d\0A\00", align 1
@PCICFG_GRC_ADDRESS = common dso_local global i32 0, align 4
@PCICFG_VENDOR_ID_OFFSET = common dso_local global i32 0, align 4
@PXP2_REG_PGL_ADDR_88_F0 = common dso_local global i32 0, align 4
@PXP2_REG_PGL_ADDR_8C_F0 = common dso_local global i32 0, align 4
@PXP2_REG_PGL_ADDR_90_F0 = common dso_local global i32 0, align 4
@PXP2_REG_PGL_ADDR_94_F0 = common dso_local global i32 0, align 4
@PXP2_REG_PGL_ADDR_88_F1 = common dso_local global i32 0, align 4
@PXP2_REG_PGL_ADDR_8C_F1 = common dso_local global i32 0, align 4
@PXP2_REG_PGL_ADDR_90_F1 = common dso_local global i32 0, align 4
@PXP2_REG_PGL_ADDR_94_F1 = common dso_local global i32 0, align 4
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@bnx2x_netdev_ops = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@USING_DAC_FLAG = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO_ECN = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@MDIO_PRTAD_NONE = common dso_local global i32 0, align 4
@MDIO_SUPPORTS_C45 = common dso_local global i32 0, align 4
@MDIO_EMULATE_C22 = common dso_local global i32 0, align 4
@bnx2x_mdio_read = common dso_local global i32 0, align 4
@bnx2x_mdio_write = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_TX = common dso_local global i32 0, align 4
@bnx2x_dcbnl_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.pci_dev*, %struct.net_device*, i64)* @bnx2x_init_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_init_dev(%struct.bnx2x* %0, %struct.pci_dev* %1, %struct.net_device* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @BCM57710, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @BCM57711, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @BCM57711E, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %20, %16, %4
  %25 = phi i1 [ true, %16 ], [ true, %4 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %12, align 4
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 2
  %30 = call i32 @SET_NETDEV_DEV(%struct.net_device* %27, i32* %29)
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %33 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %32, i32 0, i32 6
  store %struct.net_device* %31, %struct.net_device** %33, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %35 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %36 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %35, i32 0, i32 2
  store %struct.pci_dev* %34, %struct.pci_dev** %36, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %38 = call i32 @pci_enable_device(%struct.pci_dev* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %24
  %42 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %43 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %42, i32 0, i32 2
  %44 = load %struct.pci_dev*, %struct.pci_dev** %43, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 2
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %350

47:                                               ; preds = %24
  %48 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %49 = call i32 @pci_resource_flags(%struct.pci_dev* %48, i32 0)
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %47
  %54 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %55 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %54, i32 0, i32 2
  %56 = load %struct.pci_dev*, %struct.pci_dev** %55, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 2
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %345

61:                                               ; preds = %47
  %62 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %63 = call i64 @IS_PF(%struct.bnx2x* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %67 = call i32 @pci_resource_flags(%struct.pci_dev* %66, i32 2)
  %68 = load i32, i32* @IORESOURCE_MEM, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %65
  %72 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %73 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %72, i32 0, i32 2
  %74 = load %struct.pci_dev*, %struct.pci_dev** %73, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 2
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %10, align 4
  br label %345

79:                                               ; preds = %65, %61
  %80 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %81 = load i32, i32* @PCICFG_REVISION_ID_OFFSET, align 4
  %82 = call i32 @pci_read_config_dword(%struct.pci_dev* %80, i32 %81, i32* %11)
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @PCICFG_REVESION_ID_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @PCICFG_REVESION_ID_ERROR_VAL, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %10, align 4
  br label %345

92:                                               ; preds = %79
  %93 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 0
  %95 = call i32 @atomic_read(i32* %94)
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %114

97:                                               ; preds = %92
  %98 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %99 = load i32, i32* @DRV_MODULE_NAME, align 4
  %100 = call i32 @pci_request_regions(%struct.pci_dev* %98, i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %105 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %104, i32 0, i32 2
  %106 = load %struct.pci_dev*, %struct.pci_dev** %105, align 8
  %107 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %106, i32 0, i32 2
  %108 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %345

109:                                              ; preds = %97
  %110 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %111 = call i32 @pci_set_master(%struct.pci_dev* %110)
  %112 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %113 = call i32 @pci_save_state(%struct.pci_dev* %112)
  br label %114

114:                                              ; preds = %109, %92
  %115 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %116 = call i64 @IS_PF(%struct.bnx2x* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %137

118:                                              ; preds = %114
  %119 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %123 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 8
  %124 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %125 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %118
  %129 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %130 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %129, i32 0, i32 2
  %131 = load %struct.pci_dev*, %struct.pci_dev** %130, align 8
  %132 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %131, i32 0, i32 2
  %133 = call i32 @dev_err(i32* %132, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32, i32* @EIO, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %10, align 4
  br label %336

136:                                              ; preds = %118
  br label %137

137:                                              ; preds = %136, %114
  %138 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %139 = call i32 @pci_is_pcie(%struct.pci_dev* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %137
  %142 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %143 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %142, i32 0, i32 2
  %144 = load %struct.pci_dev*, %struct.pci_dev** %143, align 8
  %145 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %144, i32 0, i32 2
  %146 = call i32 @dev_err(i32* %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %10, align 4
  br label %336

149:                                              ; preds = %137
  %150 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %151 = call i32 @bnx2x_set_coherency_mask(%struct.bnx2x* %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %336

155:                                              ; preds = %149
  %156 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %157 = call i32 @pci_resource_start(%struct.pci_dev* %156, i32 0)
  %158 = load %struct.net_device*, %struct.net_device** %8, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 7
  store i32 %157, i32* %159, align 4
  %160 = load %struct.net_device*, %struct.net_device** %8, align 8
  %161 = getelementptr inbounds %struct.net_device, %struct.net_device* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.net_device*, %struct.net_device** %8, align 8
  %164 = getelementptr inbounds %struct.net_device, %struct.net_device* %163, i32 0, i32 8
  store i32 %162, i32* %164, align 8
  %165 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %166 = call i32 @pci_resource_end(%struct.pci_dev* %165, i32 0)
  %167 = load %struct.net_device*, %struct.net_device** %8, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 8
  %169 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %170 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.net_device*, %struct.net_device** %8, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 4
  %174 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %175 = call i32 @pci_ioremap_bar(%struct.pci_dev* %174, i32 0)
  %176 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %177 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %176, i32 0, i32 4
  store i32 %175, i32* %177, align 4
  %178 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %179 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %190, label %182

182:                                              ; preds = %155
  %183 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %184 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %183, i32 0, i32 2
  %185 = load %struct.pci_dev*, %struct.pci_dev** %184, align 8
  %186 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %185, i32 0, i32 2
  %187 = call i32 @dev_err(i32* %186, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %188 = load i32, i32* @ENOMEM, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %10, align 4
  br label %336

190:                                              ; preds = %155
  %191 = load i32, i32* %12, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %190
  %194 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %195 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @PCI_FUNC(i32 %196)
  %198 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %199 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 8
  br label %213

200:                                              ; preds = %190
  %201 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %202 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %201, i32 0, i32 2
  %203 = load %struct.pci_dev*, %struct.pci_dev** %202, align 8
  %204 = load i32, i32* @PCICFG_ME_REGISTER, align 4
  %205 = call i32 @pci_read_config_dword(%struct.pci_dev* %203, i32 %204, i32* %11)
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* @ME_REG_ABS_PF_NUM, align 4
  %208 = and i32 %206, %207
  %209 = load i32, i32* @ME_REG_ABS_PF_NUM_SHIFT, align 4
  %210 = ashr i32 %208, %209
  %211 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %212 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 8
  br label %213

213:                                              ; preds = %200, %193
  %214 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %215 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %216)
  %218 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %219 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %218, i32 0, i32 2
  %220 = load %struct.pci_dev*, %struct.pci_dev** %219, align 8
  %221 = load i32, i32* @PCICFG_GRC_ADDRESS, align 4
  %222 = load i32, i32* @PCICFG_VENDOR_ID_OFFSET, align 4
  %223 = call i32 @pci_write_config_dword(%struct.pci_dev* %220, i32 %221, i32 %222)
  %224 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %225 = call i64 @IS_PF(%struct.bnx2x* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %263

227:                                              ; preds = %213
  %228 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %229 = load i32, i32* @PXP2_REG_PGL_ADDR_88_F0, align 4
  %230 = call i32 @REG_WR(%struct.bnx2x* %228, i32 %229, i32 0)
  %231 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %232 = load i32, i32* @PXP2_REG_PGL_ADDR_8C_F0, align 4
  %233 = call i32 @REG_WR(%struct.bnx2x* %231, i32 %232, i32 0)
  %234 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %235 = load i32, i32* @PXP2_REG_PGL_ADDR_90_F0, align 4
  %236 = call i32 @REG_WR(%struct.bnx2x* %234, i32 %235, i32 0)
  %237 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %238 = load i32, i32* @PXP2_REG_PGL_ADDR_94_F0, align 4
  %239 = call i32 @REG_WR(%struct.bnx2x* %237, i32 %238, i32 0)
  %240 = load i32, i32* %12, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %255

242:                                              ; preds = %227
  %243 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %244 = load i32, i32* @PXP2_REG_PGL_ADDR_88_F1, align 4
  %245 = call i32 @REG_WR(%struct.bnx2x* %243, i32 %244, i32 0)
  %246 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %247 = load i32, i32* @PXP2_REG_PGL_ADDR_8C_F1, align 4
  %248 = call i32 @REG_WR(%struct.bnx2x* %246, i32 %247, i32 0)
  %249 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %250 = load i32, i32* @PXP2_REG_PGL_ADDR_90_F1, align 4
  %251 = call i32 @REG_WR(%struct.bnx2x* %249, i32 %250, i32 0)
  %252 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %253 = load i32, i32* @PXP2_REG_PGL_ADDR_94_F1, align 4
  %254 = call i32 @REG_WR(%struct.bnx2x* %252, i32 %253, i32 0)
  br label %255

255:                                              ; preds = %242, %227
  %256 = load i32, i32* %12, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %255
  %259 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %260 = load i32, i32* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ, align 4
  %261 = call i32 @REG_WR(%struct.bnx2x* %259, i32 %260, i32 1)
  br label %262

262:                                              ; preds = %258, %255
  br label %263

263:                                              ; preds = %262, %213
  %264 = load i32, i32* @TX_TIMEOUT, align 4
  %265 = load %struct.net_device*, %struct.net_device** %8, align 8
  %266 = getelementptr inbounds %struct.net_device, %struct.net_device* %265, i32 0, i32 4
  store i32 %264, i32* %266, align 8
  %267 = load %struct.net_device*, %struct.net_device** %8, align 8
  %268 = getelementptr inbounds %struct.net_device, %struct.net_device* %267, i32 0, i32 3
  store i32* @bnx2x_netdev_ops, i32** %268, align 8
  %269 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %270 = load %struct.net_device*, %struct.net_device** %8, align 8
  %271 = call i32 @bnx2x_set_ethtool_ops(%struct.bnx2x* %269, %struct.net_device* %270)
  %272 = load i32, i32* @NETIF_F_SG, align 4
  %273 = load %struct.net_device*, %struct.net_device** %8, align 8
  %274 = getelementptr inbounds %struct.net_device, %struct.net_device* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 8
  %277 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %278 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* @NETIF_F_RXHASH, align 4
  %281 = or i32 %279, %280
  %282 = load %struct.net_device*, %struct.net_device** %8, align 8
  %283 = getelementptr inbounds %struct.net_device, %struct.net_device* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 8
  %286 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %287 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @USING_DAC_FLAG, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %263
  %293 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %294 = load %struct.net_device*, %struct.net_device** %8, align 8
  %295 = getelementptr inbounds %struct.net_device, %struct.net_device* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = or i32 %296, %293
  store i32 %297, i32* %295, align 8
  br label %298

298:                                              ; preds = %292, %263
  %299 = load i32, i32* @NETIF_F_TSO, align 4
  %300 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %301 = or i32 %299, %300
  %302 = load %struct.net_device*, %struct.net_device** %8, align 8
  %303 = getelementptr inbounds %struct.net_device, %struct.net_device* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = or i32 %304, %301
  store i32 %305, i32* %303, align 8
  %306 = load i32, i32* @NETIF_F_TSO6, align 4
  %307 = load %struct.net_device*, %struct.net_device** %8, align 8
  %308 = getelementptr inbounds %struct.net_device, %struct.net_device* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = or i32 %309, %306
  store i32 %310, i32* %308, align 8
  %311 = load i32, i32* @MDIO_PRTAD_NONE, align 4
  %312 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %313 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 5
  store i32 %311, i32* %314, align 8
  %315 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %316 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i32 0, i32 4
  store i64 0, i64* %317, align 8
  %318 = load i32, i32* @MDIO_SUPPORTS_C45, align 4
  %319 = load i32, i32* @MDIO_EMULATE_C22, align 4
  %320 = or i32 %318, %319
  %321 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %322 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %322, i32 0, i32 0
  store i32 %320, i32* %323, align 8
  %324 = load %struct.net_device*, %struct.net_device** %8, align 8
  %325 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %326 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 3
  store %struct.net_device* %324, %struct.net_device** %327, align 8
  %328 = load i32, i32* @bnx2x_mdio_read, align 4
  %329 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %330 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 2
  store i32 %328, i32* %331, align 8
  %332 = load i32, i32* @bnx2x_mdio_write, align 4
  %333 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %334 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i32 0, i32 1
  store i32 %332, i32* %335, align 4
  store i32 0, i32* %5, align 4
  br label %352

336:                                              ; preds = %182, %154, %141, %128
  %337 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %338 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %337, i32 0, i32 0
  %339 = call i32 @atomic_read(i32* %338)
  %340 = icmp eq i32 %339, 1
  br i1 %340, label %341, label %344

341:                                              ; preds = %336
  %342 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %343 = call i32 @pci_release_regions(%struct.pci_dev* %342)
  br label %344

344:                                              ; preds = %341, %336
  br label %345

345:                                              ; preds = %344, %103, %88, %71, %53
  %346 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %347 = call i32 @pci_disable_device(%struct.pci_dev* %346)
  %348 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %349 = call i32 @pci_set_drvdata(%struct.pci_dev* %348, i32* null)
  br label %350

350:                                              ; preds = %345, %41
  %351 = load i32, i32* %10, align 4
  store i32 %351, i32* %5, align 4
  br label %352

352:                                              ; preds = %350, %298
  %353 = load i32, i32* %5, align 4
  ret i32 %353
}

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @bnx2x_set_coherency_mask(%struct.bnx2x*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_end(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @BNX2X_DEV_INFO(i8*, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_set_ethtool_ops(%struct.bnx2x*, %struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
