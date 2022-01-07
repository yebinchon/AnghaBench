; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_ax88772_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_ax88772_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_5__, %struct.TYPE_6__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32*, i32 }
%struct.usb_interface = type { i32 }
%struct.asix_data = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@AX88772_EEPROM_LEN = common dso_local global i32 0, align 4
@AX_GPIO_RSE = common dso_local global i32 0, align 4
@AX_GPIO_GPO_2 = common dso_local global i32 0, align 4
@AX_GPIO_GPO2EN = common dso_local global i32 0, align 4
@AX_CMD_SW_PHY_SELECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Select PHY #1 failed: %d\00", align 1
@AX_SWRESET_IPPD = common dso_local global i32 0, align 4
@AX_SWRESET_PRL = common dso_local global i32 0, align 4
@AX_SWRESET_CLEAR = common dso_local global i32 0, align 4
@AX_SWRESET_IPRL = common dso_local global i32 0, align 4
@AX_SWRESET_PRTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"RX_CTL is 0x%04x after software reset\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"RX_CTL is 0x%04x setting to 0x0000\00", align 1
@AX_CMD_READ_NODE_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to read MAC address: %d\00", align 1
@asix_mdio_read = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"PHYID=0x%08x\00", align 1
@ax88772_netdev_ops = common dso_local global i32 0, align 4
@ax88772_ethtool_ops = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_CSMA = common dso_local global i32 0, align 4
@AX88772_MEDIUM_DEFAULT = common dso_local global i32 0, align 4
@AX_CMD_WRITE_IPG0 = common dso_local global i32 0, align 4
@AX88772_IPG0_DEFAULT = common dso_local global i32 0, align 4
@AX88772_IPG1_DEFAULT = common dso_local global i32 0, align 4
@AX88772_IPG2_DEFAULT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Write IPG,IPG1,IPG2 failed: %d\00", align 1
@AX_DEFAULT_RX_CTL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"RX_CTL is 0x%04x after all initializations\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Medium Status is 0x%04x after all initializations\00", align 1
@FLAG_FRAMING_AX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @ax88772_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88772_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.asix_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %14 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 5
  %16 = bitcast i32* %15 to %struct.asix_data*
  store %struct.asix_data* %16, %struct.asix_data** %9, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* @AX88772_EEPROM_LEN, align 4
  %22 = load %struct.asix_data*, %struct.asix_data** %9, align 8
  %23 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %25 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %26 = call i32 @usbnet_get_endpoints(%struct.usbnet* %24, %struct.usb_interface* %25)
  %27 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %28 = load i32, i32* @AX_GPIO_RSE, align 4
  %29 = load i32, i32* @AX_GPIO_GPO_2, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @AX_GPIO_GPO2EN, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @asix_write_gpio(%struct.usbnet* %27, i32 %32, i32 5)
  store i32 %33, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %248

36:                                               ; preds = %2
  %37 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %38 = call i32 @asix_get_phy_addr(%struct.usbnet* %37)
  %39 = and i32 %38, 31
  %40 = icmp eq i32 %39, 16
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  store i32 %42, i32* %7, align 4
  %43 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %44 = load i32, i32* @AX_CMD_SW_PHY_SELECT, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @asix_write_cmd(%struct.usbnet* %43, i32 %44, i32 %45, i32 0, i32 0, i32* null)
  store i32 %46, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %248

51:                                               ; preds = %36
  %52 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %53 = load i32, i32* @AX_SWRESET_IPPD, align 4
  %54 = load i32, i32* @AX_SWRESET_PRL, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @asix_sw_reset(%struct.usbnet* %52, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %248

59:                                               ; preds = %51
  %60 = call i32 @msleep(i32 150)
  %61 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %62 = load i32, i32* @AX_SWRESET_CLEAR, align 4
  %63 = call i32 @asix_sw_reset(%struct.usbnet* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %248

66:                                               ; preds = %59
  %67 = call i32 @msleep(i32 150)
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %72 = load i32, i32* @AX_SWRESET_IPRL, align 4
  %73 = call i32 @asix_sw_reset(%struct.usbnet* %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %248

76:                                               ; preds = %70
  br label %84

77:                                               ; preds = %66
  %78 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %79 = load i32, i32* @AX_SWRESET_PRTE, align 4
  %80 = call i32 @asix_sw_reset(%struct.usbnet* %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %248

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %76
  %85 = call i32 @msleep(i32 150)
  %86 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %87 = call i32 @asix_read_rx_ctl(%struct.usbnet* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %91 = call i32 @asix_write_rx_ctl(%struct.usbnet* %90, i32 0)
  store i32 %91, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %248

94:                                               ; preds = %84
  %95 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %96 = call i32 @asix_read_rx_ctl(%struct.usbnet* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %100 = load i32, i32* @AX_CMD_READ_NODE_ID, align 4
  %101 = load i32, i32* @ETH_ALEN, align 4
  %102 = call i32 @asix_read_cmd(%struct.usbnet* %99, i32 %100, i32 0, i32 0, i32 %101, i32* %20)
  store i32 %102, i32* %6, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %94
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  br label %248

107:                                              ; preds = %94
  %108 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %109 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %108, i32 0, i32 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @ETH_ALEN, align 4
  %114 = call i32 @memcpy(i32 %112, i32* %20, i32 %113)
  %115 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %116 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %115, i32 0, i32 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %119 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 5
  store %struct.TYPE_6__* %117, %struct.TYPE_6__** %120, align 8
  %121 = load i32, i32* @asix_mdio_read, align 4
  %122 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %123 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 4
  store i32 %121, i32* %124, align 8
  %125 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %126 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  store i32 (%struct.TYPE_6__*, i32, i32, i32)* @asix_mdio_write, i32 (%struct.TYPE_6__*, i32, i32, i32)** %127, align 8
  %128 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %129 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i32 31, i32* %130, align 8
  %131 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %132 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  store i32 31, i32* %133, align 4
  %134 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %135 = call i32 @asix_get_phy_addr(%struct.usbnet* %134)
  %136 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %137 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  store i32 %135, i32* %138, align 8
  %139 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %140 = call i32 @asix_get_phyid(%struct.usbnet* %139)
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %141)
  %143 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %144 = load i32, i32* @AX_SWRESET_PRL, align 4
  %145 = call i32 @asix_sw_reset(%struct.usbnet* %143, i32 %144)
  store i32 %145, i32* %6, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %107
  br label %248

148:                                              ; preds = %107
  %149 = call i32 @msleep(i32 150)
  %150 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %151 = load i32, i32* @AX_SWRESET_IPRL, align 4
  %152 = load i32, i32* @AX_SWRESET_PRL, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @asix_sw_reset(%struct.usbnet* %150, i32 %153)
  store i32 %154, i32* %6, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  br label %248

157:                                              ; preds = %148
  %158 = call i32 @msleep(i32 150)
  %159 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %160 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %159, i32 0, i32 4
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  store i32* @ax88772_netdev_ops, i32** %162, align 8
  %163 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %164 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %163, i32 0, i32 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  store i32* @ax88772_ethtool_ops, i32** %166, align 8
  %167 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %168 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %167, i32 0, i32 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %171 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @MII_BMCR, align 4
  %175 = load i32, i32* @BMCR_RESET, align 4
  %176 = call i32 @asix_mdio_write(%struct.TYPE_6__* %169, i32 %173, i32 %174, i32 %175)
  %177 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %178 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %177, i32 0, i32 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %181 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @MII_ADVERTISE, align 4
  %185 = load i32, i32* @ADVERTISE_ALL, align 4
  %186 = load i32, i32* @ADVERTISE_CSMA, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @asix_mdio_write(%struct.TYPE_6__* %179, i32 %183, i32 %184, i32 %187)
  %189 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %190 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %189, i32 0, i32 3
  %191 = call i32 @mii_nway_restart(%struct.TYPE_5__* %190)
  %192 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %193 = load i32, i32* @AX88772_MEDIUM_DEFAULT, align 4
  %194 = call i32 @asix_write_medium_mode(%struct.usbnet* %192, i32 %193)
  store i32 %194, i32* %6, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %157
  br label %248

197:                                              ; preds = %157
  %198 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %199 = load i32, i32* @AX_CMD_WRITE_IPG0, align 4
  %200 = load i32, i32* @AX88772_IPG0_DEFAULT, align 4
  %201 = load i32, i32* @AX88772_IPG1_DEFAULT, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @AX88772_IPG2_DEFAULT, align 4
  %204 = call i32 @asix_write_cmd(%struct.usbnet* %198, i32 %199, i32 %202, i32 %203, i32 0, i32* null)
  store i32 %204, i32* %6, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %197
  %207 = load i32, i32* %6, align 4
  %208 = call i32 @dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %207)
  br label %248

209:                                              ; preds = %197
  %210 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %211 = load i32, i32* @AX_DEFAULT_RX_CTL, align 4
  %212 = call i32 @asix_write_rx_ctl(%struct.usbnet* %210, i32 %211)
  store i32 %212, i32* %6, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  br label %248

215:                                              ; preds = %209
  %216 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %217 = call i32 @asix_read_rx_ctl(%struct.usbnet* %216)
  store i32 %217, i32* %8, align 4
  %218 = load i32, i32* %8, align 4
  %219 = call i32 @dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %218)
  %220 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %221 = call i32 @asix_read_medium_status(%struct.usbnet* %220)
  store i32 %221, i32* %8, align 4
  %222 = load i32, i32* %8, align 4
  %223 = call i32 @dbg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %222)
  %224 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %225 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %224, i32 0, i32 2
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @FLAG_FRAMING_AX, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %215
  %233 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %234 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %233, i32 0, i32 0
  store i32 2048, i32* %234, align 8
  br label %235

235:                                              ; preds = %232, %215
  %236 = load i32, i32* @GFP_KERNEL, align 4
  %237 = call i32 @kzalloc(i32 4, i32 %236)
  %238 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %239 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 4
  %240 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %241 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %235
  %245 = load i32, i32* @ENOMEM, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %250

247:                                              ; preds = %235
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %250

248:                                              ; preds = %214, %206, %196, %156, %147, %104, %93, %82, %75, %65, %58, %48, %35
  %249 = load i32, i32* %6, align 4
  store i32 %249, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %250

250:                                              ; preds = %248, %247, %244
  %251 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %251)
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usbnet_get_endpoints(%struct.usbnet*, %struct.usb_interface*) #2

declare dso_local i32 @asix_write_gpio(%struct.usbnet*, i32, i32) #2

declare dso_local i32 @asix_get_phy_addr(%struct.usbnet*) #2

declare dso_local i32 @asix_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @dbg(i8*, i32) #2

declare dso_local i32 @asix_sw_reset(%struct.usbnet*, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @asix_read_rx_ctl(%struct.usbnet*) #2

declare dso_local i32 @asix_write_rx_ctl(%struct.usbnet*, i32) #2

declare dso_local i32 @asix_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @asix_mdio_write(%struct.TYPE_6__*, i32, i32, i32) #2

declare dso_local i32 @asix_get_phyid(%struct.usbnet*) #2

declare dso_local i32 @mii_nway_restart(%struct.TYPE_5__*) #2

declare dso_local i32 @asix_write_medium_mode(%struct.usbnet*, i32) #2

declare dso_local i32 @asix_read_medium_status(%struct.usbnet*) #2

declare dso_local i32 @kzalloc(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
