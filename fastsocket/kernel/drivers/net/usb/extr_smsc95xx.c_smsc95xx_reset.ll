; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.net_device*, %struct.TYPE_2__*, i64* }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.smsc95xx_priv = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"entering smsc95xx_reset\00", align 1
@HW_CFG_LRST_ = common dso_local global i32 0, align 4
@HW_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Failed to write HW_CFG_LRST_ bit in HW_CFG register, ret = %d\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to read HW_CFG: %d\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"timeout waiting for completion of Lite Reset\00", align 1
@PM_CTL_PHY_RST_ = common dso_local global i32 0, align 4
@PM_CTRL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to write PM_CTRL: %d\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to read PM_CTRL: %d\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"timeout waiting for PHY Reset\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"MAC Address: %pM\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Read Value from HW_CFG : 0x%08x\00", align 1
@HW_CFG_BIR_ = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [61 x i8] c"Failed to write HW_CFG_BIR_ bit in HW_CFG register, ret = %d\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"Read Value from HW_CFG after writing HW_CFG_BIR_: 0x%08x\00", align 1
@turbo_mode = common dso_local global i64 0, align 8
@MAX_SINGLE_PACKET_SIZE = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@DEFAULT_HS_BURST_CAP_SIZE = common dso_local global i32 0, align 4
@HS_USB_PKT_SIZE = common dso_local global i32 0, align 4
@DEFAULT_FS_BURST_CAP_SIZE = common dso_local global i32 0, align 4
@FS_USB_PKT_SIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"rx_urb_size=%ld\00", align 1
@BURST_CAP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"Failed to write BURST_CAP: %d\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Failed to read BURST_CAP: %d\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"Read Value from BURST_CAP after writing: 0x%08x\00", align 1
@DEFAULT_BULK_IN_DELAY = common dso_local global i32 0, align 4
@BULK_IN_DLY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"ret = %d\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Failed to read BULK_IN_DLY: %d\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"Read Value from BULK_IN_DLY after writing: 0x%08x\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Read Value from HW_CFG: 0x%08x\00", align 1
@HW_CFG_MEF_ = common dso_local global i32 0, align 4
@HW_CFG_BCE_ = common dso_local global i32 0, align 4
@HW_CFG_RXDOFF_ = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [40 x i8] c"Failed to write HW_CFG register, ret=%d\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"Read Value from HW_CFG after writing: 0x%08x\00", align 1
@INT_STS = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [41 x i8] c"Failed to write INT_STS register, ret=%d\00", align 1
@ID_REV = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [26 x i8] c"Failed to read ID_REV: %d\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"ID_REV = 0x%08x\00", align 1
@LED_GPIO_CFG_SPD_LED = common dso_local global i32 0, align 4
@LED_GPIO_CFG_LNK_LED = common dso_local global i32 0, align 4
@LED_GPIO_CFG_FDX_LED = common dso_local global i32 0, align 4
@LED_GPIO_CFG = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [46 x i8] c"Failed to write LED_GPIO_CFG register, ret=%d\00", align 1
@FLOW = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [25 x i8] c"Failed to write FLOW: %d\00", align 1
@AFC_CFG_DEFAULT = common dso_local global i32 0, align 4
@AFC_CFG = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [28 x i8] c"Failed to write AFC_CFG: %d\00", align 1
@MAC_CR = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [26 x i8] c"Failed to read MAC_CR: %d\00", align 1
@ETH_P_8021Q = common dso_local global i64 0, align 8
@VLAN1 = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [25 x i8] c"Failed to write VAN1: %d\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Failed to set csum offload: %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@INT_EP_CTL = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [30 x i8] c"Failed to read INT_EP_CTL: %d\00", align 1
@INT_EP_CTL_PHY_INT_ = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [31 x i8] c"Failed to write INT_EP_CTL: %d\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"smsc95xx_reset, return 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @smsc95xx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_reset(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.smsc95xx_priv*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %11 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 3
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.smsc95xx_priv*
  store %struct.smsc95xx_priv* %16, %struct.smsc95xx_priv** %4, align 8
  %17 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 1
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %5, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %21 = call i64 @netif_msg_ifup(%struct.usbnet* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %25 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %1
  %27 = load i32, i32* @HW_CFG_LRST_, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %29 = load i32, i32* @HW_CFG, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @smsc95xx_write_reg(%struct.usbnet* %28, i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %35, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %2, align 4
  br label %526

39:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %63, %39
  %41 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %42 = load i32, i32* @HW_CFG, align 4
  %43 = call i32 @smsc95xx_read_reg(%struct.usbnet* %41, i32 %42, i32* %6)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %2, align 4
  br label %526

51:                                               ; preds = %40
  %52 = call i32 @msleep(i32 10)
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @HW_CFG_LRST_, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 100
  br label %63

63:                                               ; preds = %60, %55
  %64 = phi i1 [ false, %55 ], [ %62, %60 ]
  br i1 %64, label %40, label %65

65:                                               ; preds = %63
  %66 = load i32, i32* %10, align 4
  %67 = icmp sge i32 %66, 100
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %70 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %69, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %2, align 4
  br label %526

72:                                               ; preds = %65
  %73 = load i32, i32* @PM_CTL_PHY_RST_, align 4
  store i32 %73, i32* %7, align 4
  %74 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %75 = load i32, i32* @PM_CTRL, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @smsc95xx_write_reg(%struct.usbnet* %74, i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %2, align 4
  br label %526

85:                                               ; preds = %72
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %109, %85
  %87 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %88 = load i32, i32* @PM_CTRL, align 4
  %89 = call i32 @smsc95xx_read_reg(%struct.usbnet* %87, i32 %88, i32* %6)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %2, align 4
  br label %526

97:                                               ; preds = %86
  %98 = call i32 @msleep(i32 10)
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @PM_CTL_PHY_RST_, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %107, 100
  br label %109

109:                                              ; preds = %106, %101
  %110 = phi i1 [ false, %101 ], [ %108, %106 ]
  br i1 %110, label %86, label %111

111:                                              ; preds = %109
  %112 = load i32, i32* %10, align 4
  %113 = icmp sge i32 %112, 100
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %116 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %2, align 4
  br label %526

118:                                              ; preds = %111
  %119 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %120 = call i32 @smsc95xx_init_mac_address(%struct.usbnet* %119)
  %121 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %122 = call i32 @smsc95xx_set_mac_address(%struct.usbnet* %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %2, align 4
  br label %526

127:                                              ; preds = %118
  %128 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %129 = call i64 @netif_msg_ifup(%struct.usbnet* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %133 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %134 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %133, i32 0, i32 1
  %135 = load %struct.net_device*, %struct.net_device** %134, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %131, %127
  %140 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %141 = load i32, i32* @HW_CFG, align 4
  %142 = call i32 @smsc95xx_read_reg(%struct.usbnet* %140, i32 %141, i32* %6)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %139
  %146 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %146, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %2, align 4
  br label %526

150:                                              ; preds = %139
  %151 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %152 = call i64 @netif_msg_ifup(%struct.usbnet* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %156 = load i32, i32* %6, align 4
  %157 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %155, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %154, %150
  %159 = load i32, i32* @HW_CFG_BIR_, align 4
  %160 = load i32, i32* %6, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %6, align 4
  %162 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %163 = load i32, i32* @HW_CFG, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @smsc95xx_write_reg(%struct.usbnet* %162, i32 %163, i32 %164)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %158
  %169 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %170 = load i32, i32* %9, align 4
  %171 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %169, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %2, align 4
  br label %526

173:                                              ; preds = %158
  %174 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %175 = load i32, i32* @HW_CFG, align 4
  %176 = call i32 @smsc95xx_read_reg(%struct.usbnet* %174, i32 %175, i32* %6)
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %173
  %180 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %181 = load i32, i32* %9, align 4
  %182 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %180, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %9, align 4
  store i32 %183, i32* %2, align 4
  br label %526

184:                                              ; preds = %173
  %185 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %186 = call i64 @netif_msg_ifup(%struct.usbnet* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %190 = load i32, i32* %6, align 4
  %191 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %189, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %188, %184
  %193 = load i64, i64* @turbo_mode, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %192
  store i32 0, i32* %8, align 4
  %196 = load i32, i32* @MAX_SINGLE_PACKET_SIZE, align 4
  %197 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %198 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  br label %222

199:                                              ; preds = %192
  %200 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %201 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %200, i32 0, i32 2
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @USB_SPEED_HIGH, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %214

207:                                              ; preds = %199
  %208 = load i32, i32* @DEFAULT_HS_BURST_CAP_SIZE, align 4
  %209 = load i32, i32* @HS_USB_PKT_SIZE, align 4
  %210 = sdiv i32 %208, %209
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* @DEFAULT_HS_BURST_CAP_SIZE, align 4
  %212 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %213 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  br label %221

214:                                              ; preds = %199
  %215 = load i32, i32* @DEFAULT_FS_BURST_CAP_SIZE, align 4
  %216 = load i32, i32* @FS_USB_PKT_SIZE, align 4
  %217 = sdiv i32 %215, %216
  store i32 %217, i32* %8, align 4
  %218 = load i32, i32* @DEFAULT_FS_BURST_CAP_SIZE, align 4
  %219 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %220 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  br label %221

221:                                              ; preds = %214, %207
  br label %222

222:                                              ; preds = %221, %195
  %223 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %224 = call i64 @netif_msg_ifup(%struct.usbnet* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %222
  %227 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %228 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %229 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %227, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %230)
  br label %232

232:                                              ; preds = %226, %222
  %233 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %234 = load i32, i32* @BURST_CAP, align 4
  %235 = load i32, i32* %8, align 4
  %236 = call i32 @smsc95xx_write_reg(%struct.usbnet* %233, i32 %234, i32 %235)
  store i32 %236, i32* %9, align 4
  %237 = load i32, i32* %9, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %232
  %240 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %241 = load i32, i32* %9, align 4
  %242 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %240, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %241)
  %243 = load i32, i32* %9, align 4
  store i32 %243, i32* %2, align 4
  br label %526

244:                                              ; preds = %232
  %245 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %246 = load i32, i32* @BURST_CAP, align 4
  %247 = call i32 @smsc95xx_read_reg(%struct.usbnet* %245, i32 %246, i32* %6)
  store i32 %247, i32* %9, align 4
  %248 = load i32, i32* %9, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %244
  %251 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %252 = load i32, i32* %9, align 4
  %253 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %251, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %252)
  %254 = load i32, i32* %9, align 4
  store i32 %254, i32* %2, align 4
  br label %526

255:                                              ; preds = %244
  %256 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %257 = call i64 @netif_msg_ifup(%struct.usbnet* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %255
  %260 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %261 = load i32, i32* %6, align 4
  %262 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %260, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0), i32 %261)
  br label %263

263:                                              ; preds = %259, %255
  %264 = load i32, i32* @DEFAULT_BULK_IN_DELAY, align 4
  store i32 %264, i32* %6, align 4
  %265 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %266 = load i32, i32* @BULK_IN_DLY, align 4
  %267 = load i32, i32* %6, align 4
  %268 = call i32 @smsc95xx_write_reg(%struct.usbnet* %265, i32 %266, i32 %267)
  store i32 %268, i32* %9, align 4
  %269 = load i32, i32* %9, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %263
  %272 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %273 = load i32, i32* %9, align 4
  %274 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %272, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %273)
  %275 = load i32, i32* %9, align 4
  store i32 %275, i32* %2, align 4
  br label %526

276:                                              ; preds = %263
  %277 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %278 = load i32, i32* @BULK_IN_DLY, align 4
  %279 = call i32 @smsc95xx_read_reg(%struct.usbnet* %277, i32 %278, i32* %6)
  store i32 %279, i32* %9, align 4
  %280 = load i32, i32* %9, align 4
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %276
  %283 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %284 = load i32, i32* %9, align 4
  %285 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %283, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %284)
  %286 = load i32, i32* %9, align 4
  store i32 %286, i32* %2, align 4
  br label %526

287:                                              ; preds = %276
  %288 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %289 = call i64 @netif_msg_ifup(%struct.usbnet* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %287
  %292 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %293 = load i32, i32* %6, align 4
  %294 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %292, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0), i32 %293)
  br label %295

295:                                              ; preds = %291, %287
  %296 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %297 = load i32, i32* @HW_CFG, align 4
  %298 = call i32 @smsc95xx_read_reg(%struct.usbnet* %296, i32 %297, i32* %6)
  store i32 %298, i32* %9, align 4
  %299 = load i32, i32* %9, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %295
  %302 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %303 = load i32, i32* %9, align 4
  %304 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %302, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %303)
  %305 = load i32, i32* %9, align 4
  store i32 %305, i32* %2, align 4
  br label %526

306:                                              ; preds = %295
  %307 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %308 = call i64 @netif_msg_ifup(%struct.usbnet* %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %306
  %311 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %312 = load i32, i32* %6, align 4
  %313 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %311, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 %312)
  br label %314

314:                                              ; preds = %310, %306
  %315 = load i64, i64* @turbo_mode, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %314
  %318 = load i32, i32* @HW_CFG_MEF_, align 4
  %319 = load i32, i32* @HW_CFG_BCE_, align 4
  %320 = or i32 %318, %319
  %321 = load i32, i32* %6, align 4
  %322 = or i32 %321, %320
  store i32 %322, i32* %6, align 4
  br label %323

323:                                              ; preds = %317, %314
  %324 = load i32, i32* @HW_CFG_RXDOFF_, align 4
  %325 = xor i32 %324, -1
  %326 = load i32, i32* %6, align 4
  %327 = and i32 %326, %325
  store i32 %327, i32* %6, align 4
  %328 = load i32, i32* @NET_IP_ALIGN, align 4
  %329 = shl i32 %328, 9
  %330 = load i32, i32* %6, align 4
  %331 = or i32 %330, %329
  store i32 %331, i32* %6, align 4
  %332 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %333 = load i32, i32* @HW_CFG, align 4
  %334 = load i32, i32* %6, align 4
  %335 = call i32 @smsc95xx_write_reg(%struct.usbnet* %332, i32 %333, i32 %334)
  store i32 %335, i32* %9, align 4
  %336 = load i32, i32* %9, align 4
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %323
  %339 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %340 = load i32, i32* %9, align 4
  %341 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %339, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0), i32 %340)
  %342 = load i32, i32* %9, align 4
  store i32 %342, i32* %2, align 4
  br label %526

343:                                              ; preds = %323
  %344 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %345 = load i32, i32* @HW_CFG, align 4
  %346 = call i32 @smsc95xx_read_reg(%struct.usbnet* %344, i32 %345, i32* %6)
  store i32 %346, i32* %9, align 4
  %347 = load i32, i32* %9, align 4
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %349, label %354

349:                                              ; preds = %343
  %350 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %351 = load i32, i32* %9, align 4
  %352 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %350, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %351)
  %353 = load i32, i32* %9, align 4
  store i32 %353, i32* %2, align 4
  br label %526

354:                                              ; preds = %343
  %355 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %356 = call i64 @netif_msg_ifup(%struct.usbnet* %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %362

358:                                              ; preds = %354
  %359 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %360 = load i32, i32* %6, align 4
  %361 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %359, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0), i32 %360)
  br label %362

362:                                              ; preds = %358, %354
  store i32 -1, i32* %7, align 4
  %363 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %364 = load i32, i32* @INT_STS, align 4
  %365 = load i32, i32* %7, align 4
  %366 = call i32 @smsc95xx_write_reg(%struct.usbnet* %363, i32 %364, i32 %365)
  store i32 %366, i32* %9, align 4
  %367 = load i32, i32* %9, align 4
  %368 = icmp slt i32 %367, 0
  br i1 %368, label %369, label %374

369:                                              ; preds = %362
  %370 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %371 = load i32, i32* %9, align 4
  %372 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %370, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i32 %371)
  %373 = load i32, i32* %9, align 4
  store i32 %373, i32* %2, align 4
  br label %526

374:                                              ; preds = %362
  %375 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %376 = load i32, i32* @ID_REV, align 4
  %377 = call i32 @smsc95xx_read_reg(%struct.usbnet* %375, i32 %376, i32* %6)
  store i32 %377, i32* %9, align 4
  %378 = load i32, i32* %9, align 4
  %379 = icmp slt i32 %378, 0
  br i1 %379, label %380, label %385

380:                                              ; preds = %374
  %381 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %382 = load i32, i32* %9, align 4
  %383 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %381, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i32 %382)
  %384 = load i32, i32* %9, align 4
  store i32 %384, i32* %2, align 4
  br label %526

385:                                              ; preds = %374
  %386 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %387 = call i64 @netif_msg_ifup(%struct.usbnet* %386)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %393

389:                                              ; preds = %385
  %390 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %391 = load i32, i32* %6, align 4
  %392 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %390, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 %391)
  br label %393

393:                                              ; preds = %389, %385
  %394 = load i32, i32* @LED_GPIO_CFG_SPD_LED, align 4
  %395 = load i32, i32* @LED_GPIO_CFG_LNK_LED, align 4
  %396 = or i32 %394, %395
  %397 = load i32, i32* @LED_GPIO_CFG_FDX_LED, align 4
  %398 = or i32 %396, %397
  store i32 %398, i32* %7, align 4
  %399 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %400 = load i32, i32* @LED_GPIO_CFG, align 4
  %401 = load i32, i32* %7, align 4
  %402 = call i32 @smsc95xx_write_reg(%struct.usbnet* %399, i32 %400, i32 %401)
  store i32 %402, i32* %9, align 4
  %403 = load i32, i32* %9, align 4
  %404 = icmp slt i32 %403, 0
  br i1 %404, label %405, label %410

405:                                              ; preds = %393
  %406 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %407 = load i32, i32* %9, align 4
  %408 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %406, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i64 0, i64 0), i32 %407)
  %409 = load i32, i32* %9, align 4
  store i32 %409, i32* %2, align 4
  br label %526

410:                                              ; preds = %393
  store i32 0, i32* %7, align 4
  %411 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %412 = load i32, i32* @FLOW, align 4
  %413 = load i32, i32* %7, align 4
  %414 = call i32 @smsc95xx_write_reg(%struct.usbnet* %411, i32 %412, i32 %413)
  store i32 %414, i32* %9, align 4
  %415 = load i32, i32* %9, align 4
  %416 = icmp slt i32 %415, 0
  br i1 %416, label %417, label %422

417:                                              ; preds = %410
  %418 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %419 = load i32, i32* %9, align 4
  %420 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %418, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 %419)
  %421 = load i32, i32* %9, align 4
  store i32 %421, i32* %2, align 4
  br label %526

422:                                              ; preds = %410
  %423 = load i32, i32* @AFC_CFG_DEFAULT, align 4
  store i32 %423, i32* %6, align 4
  %424 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %425 = load i32, i32* @AFC_CFG, align 4
  %426 = load i32, i32* %6, align 4
  %427 = call i32 @smsc95xx_write_reg(%struct.usbnet* %424, i32 %425, i32 %426)
  store i32 %427, i32* %9, align 4
  %428 = load i32, i32* %9, align 4
  %429 = icmp slt i32 %428, 0
  br i1 %429, label %430, label %435

430:                                              ; preds = %422
  %431 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %432 = load i32, i32* %9, align 4
  %433 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %431, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0), i32 %432)
  %434 = load i32, i32* %9, align 4
  store i32 %434, i32* %2, align 4
  br label %526

435:                                              ; preds = %422
  %436 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %437 = load i32, i32* @MAC_CR, align 4
  %438 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %439 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %438, i32 0, i32 0
  %440 = call i32 @smsc95xx_read_reg(%struct.usbnet* %436, i32 %437, i32* %439)
  store i32 %440, i32* %9, align 4
  %441 = load i32, i32* %9, align 4
  %442 = icmp slt i32 %441, 0
  br i1 %442, label %443, label %448

443:                                              ; preds = %435
  %444 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %445 = load i32, i32* %9, align 4
  %446 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %444, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), i32 %445)
  %447 = load i32, i32* %9, align 4
  store i32 %447, i32* %2, align 4
  br label %526

448:                                              ; preds = %435
  %449 = load i64, i64* @ETH_P_8021Q, align 8
  %450 = trunc i64 %449 to i32
  store i32 %450, i32* %7, align 4
  %451 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %452 = load i32, i32* @VLAN1, align 4
  %453 = load i32, i32* %7, align 4
  %454 = call i32 @smsc95xx_write_reg(%struct.usbnet* %451, i32 %452, i32 %453)
  store i32 %454, i32* %9, align 4
  %455 = load i32, i32* %9, align 4
  %456 = icmp slt i32 %455, 0
  br i1 %456, label %457, label %462

457:                                              ; preds = %448
  %458 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %459 = load i32, i32* %9, align 4
  %460 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %458, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i32 %459)
  %461 = load i32, i32* %9, align 4
  store i32 %461, i32* %2, align 4
  br label %526

462:                                              ; preds = %448
  %463 = load %struct.net_device*, %struct.net_device** %5, align 8
  %464 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %465 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = call i32 @ethtool_op_set_tx_hw_csum(%struct.net_device* %463, i32 %466)
  %468 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %469 = call i32 @smsc95xx_set_csums(%struct.usbnet* %468)
  store i32 %469, i32* %9, align 4
  %470 = load i32, i32* %9, align 4
  %471 = icmp slt i32 %470, 0
  br i1 %471, label %472, label %477

472:                                              ; preds = %462
  %473 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %474 = load i32, i32* %9, align 4
  %475 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %473, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 %474)
  %476 = load i32, i32* %9, align 4
  store i32 %476, i32* %2, align 4
  br label %526

477:                                              ; preds = %462
  %478 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %479 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %478, i32 0, i32 1
  %480 = load %struct.net_device*, %struct.net_device** %479, align 8
  %481 = call i32 @smsc95xx_set_multicast(%struct.net_device* %480)
  %482 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %483 = call i64 @smsc95xx_phy_initialize(%struct.usbnet* %482)
  %484 = icmp slt i64 %483, 0
  br i1 %484, label %485, label %488

485:                                              ; preds = %477
  %486 = load i32, i32* @EIO, align 4
  %487 = sub nsw i32 0, %486
  store i32 %487, i32* %2, align 4
  br label %526

488:                                              ; preds = %477
  %489 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %490 = load i32, i32* @INT_EP_CTL, align 4
  %491 = call i32 @smsc95xx_read_reg(%struct.usbnet* %489, i32 %490, i32* %6)
  store i32 %491, i32* %9, align 4
  %492 = load i32, i32* %9, align 4
  %493 = icmp slt i32 %492, 0
  br i1 %493, label %494, label %499

494:                                              ; preds = %488
  %495 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %496 = load i32, i32* %9, align 4
  %497 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %495, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0), i32 %496)
  %498 = load i32, i32* %9, align 4
  store i32 %498, i32* %2, align 4
  br label %526

499:                                              ; preds = %488
  %500 = load i32, i32* @INT_EP_CTL_PHY_INT_, align 4
  %501 = load i32, i32* %6, align 4
  %502 = or i32 %501, %500
  store i32 %502, i32* %6, align 4
  %503 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %504 = load i32, i32* @INT_EP_CTL, align 4
  %505 = load i32, i32* %6, align 4
  %506 = call i32 @smsc95xx_write_reg(%struct.usbnet* %503, i32 %504, i32 %505)
  store i32 %506, i32* %9, align 4
  %507 = load i32, i32* %9, align 4
  %508 = icmp slt i32 %507, 0
  br i1 %508, label %509, label %514

509:                                              ; preds = %499
  %510 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %511 = load i32, i32* %9, align 4
  %512 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %510, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), i32 %511)
  %513 = load i32, i32* %9, align 4
  store i32 %513, i32* %2, align 4
  br label %526

514:                                              ; preds = %499
  %515 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %516 = call i32 @smsc95xx_start_tx_path(%struct.usbnet* %515)
  %517 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %518 = call i32 @smsc95xx_start_rx_path(%struct.usbnet* %517)
  %519 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %520 = call i64 @netif_msg_ifup(%struct.usbnet* %519)
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %522, label %525

522:                                              ; preds = %514
  %523 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %524 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %523, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0))
  br label %525

525:                                              ; preds = %522, %514
  store i32 0, i32* %2, align 4
  br label %526

526:                                              ; preds = %525, %509, %494, %485, %472, %457, %443, %430, %417, %405, %380, %369, %349, %338, %301, %282, %271, %250, %239, %179, %168, %145, %125, %114, %92, %80, %68, %46, %34
  %527 = load i32, i32* %2, align 4
  ret i32 %527
}

declare dso_local i64 @netif_msg_ifup(%struct.usbnet*) #1

declare dso_local i32 @devdbg(%struct.usbnet*, i8*, ...) #1

declare dso_local i32 @smsc95xx_write_reg(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @devwarn(%struct.usbnet*, i8*, ...) #1

declare dso_local i32 @smsc95xx_read_reg(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @smsc95xx_init_mac_address(%struct.usbnet*) #1

declare dso_local i32 @smsc95xx_set_mac_address(%struct.usbnet*) #1

declare dso_local i32 @ethtool_op_set_tx_hw_csum(%struct.net_device*, i32) #1

declare dso_local i32 @smsc95xx_set_csums(%struct.usbnet*) #1

declare dso_local i32 @smsc95xx_set_multicast(%struct.net_device*) #1

declare dso_local i64 @smsc95xx_phy_initialize(%struct.usbnet*) #1

declare dso_local i32 @smsc95xx_start_tx_path(%struct.usbnet*) #1

declare dso_local i32 @smsc95xx_start_rx_path(%struct.usbnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
