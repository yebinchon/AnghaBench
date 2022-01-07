; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_ax88178_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_ax88178_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_5__, %struct.TYPE_6__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32*, i32 }
%struct.usb_interface = type { i32 }
%struct.asix_data = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@AX_CMD_READ_GPIOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"GPIO Status: 0x%04x\00", align 1
@AX_CMD_WRITE_ENABLE = common dso_local global i32 0, align 4
@AX_CMD_READ_EEPROM = common dso_local global i32 0, align 4
@AX_CMD_WRITE_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"EEPROM index 0x17 is 0x%04x\00", align 1
@PHY_MODE_MARVELL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"GPIO0: %d, PhyMode: %d\00", align 1
@AX_GPIO_RSE = common dso_local global i32 0, align 4
@AX_GPIO_GPO_1 = common dso_local global i32 0, align 4
@AX_GPIO_GPO1EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"gpio phymode == 1 path\00", align 1
@AX_SWRESET_PRL = common dso_local global i32 0, align 4
@AX_SWRESET_IPPD = common dso_local global i32 0, align 4
@AX_CMD_READ_NODE_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to read MAC address: %d\00", align 1
@asix_mdio_read = common dso_local global i32 0, align 4
@ax88178_netdev_ops = common dso_local global i32 0, align 4
@ax88178_ethtool_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"PHYID=0x%08x\00", align 1
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_CSMA = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@AX88178_MEDIUM_DEFAULT = common dso_local global i32 0, align 4
@AX_DEFAULT_RX_CTL = common dso_local global i32 0, align 4
@FLAG_FRAMING_AX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @ax88178_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88178_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.asix_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %15 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %16 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %15, i32 0, i32 5
  %17 = bitcast i32* %16 to %struct.asix_data*
  store %struct.asix_data* %17, %struct.asix_data** %6, align 8
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %23 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %24 = call i32 @usbnet_get_endpoints(%struct.usbnet* %22, %struct.usb_interface* %23)
  %25 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %26 = load i32, i32* @AX_CMD_READ_GPIOS, align 4
  %27 = call i32 @asix_read_cmd(%struct.usbnet* %25, i32 %26, i32 0, i32 0, i32 1, i64* %11)
  %28 = load i64, i64* %11, align 8
  %29 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %31 = load i32, i32* @AX_CMD_WRITE_ENABLE, align 4
  %32 = call i32 @asix_write_cmd(%struct.usbnet* %30, i32 %31, i32 0, i32 0, i32 0, i32* null)
  %33 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %34 = load i32, i32* @AX_CMD_READ_EEPROM, align 4
  %35 = call i32 @asix_read_cmd(%struct.usbnet* %33, i32 %34, i32 23, i32 0, i32 2, i64* %10)
  %36 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %37 = load i32, i32* @AX_CMD_WRITE_DISABLE, align 4
  %38 = call i32 @asix_write_cmd(%struct.usbnet* %36, i32 %37, i32 0, i32 0, i32 0, i32* null)
  %39 = load i64, i64* %10, align 8
  %40 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @cpu_to_le16(i32 65535)
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %2
  %45 = load i32, i32* @PHY_MODE_MARVELL, align 4
  %46 = load %struct.asix_data*, %struct.asix_data** %6, align 8
  %47 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.asix_data*, %struct.asix_data** %6, align 8
  %49 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  store i32 1, i32* %12, align 4
  br label %67

50:                                               ; preds = %2
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @le16_to_cpu(i64 %51)
  %53 = and i32 %52, 7
  %54 = load %struct.asix_data*, %struct.asix_data** %6, align 8
  %55 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @le16_to_cpu(i64 %56)
  %58 = ashr i32 %57, 8
  %59 = load %struct.asix_data*, %struct.asix_data** %6, align 8
  %60 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @le16_to_cpu(i64 %61)
  %63 = and i32 %62, 128
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 0, i32 1
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %50, %44
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.asix_data*, %struct.asix_data** %6, align 8
  %70 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %71)
  %73 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %74 = load i32, i32* @AX_GPIO_RSE, align 4
  %75 = load i32, i32* @AX_GPIO_GPO_1, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @AX_GPIO_GPO1EN, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @asix_write_gpio(%struct.usbnet* %73, i32 %78, i32 40)
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @le16_to_cpu(i64 %80)
  %82 = ashr i32 %81, 8
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %91

84:                                               ; preds = %67
  %85 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %86 = call i32 @asix_write_gpio(%struct.usbnet* %85, i32 60, i32 30)
  %87 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %88 = call i32 @asix_write_gpio(%struct.usbnet* %87, i32 28, i32 300)
  %89 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %90 = call i32 @asix_write_gpio(%struct.usbnet* %89, i32 60, i32 30)
  br label %101

91:                                               ; preds = %67
  %92 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %94 = load i32, i32* @AX_GPIO_GPO1EN, align 4
  %95 = call i32 @asix_write_gpio(%struct.usbnet* %93, i32 %94, i32 30)
  %96 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %97 = load i32, i32* @AX_GPIO_GPO1EN, align 4
  %98 = load i32, i32* @AX_GPIO_GPO_1, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @asix_write_gpio(%struct.usbnet* %96, i32 %99, i32 30)
  br label %101

101:                                              ; preds = %91, %84
  %102 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %103 = call i32 @asix_sw_reset(%struct.usbnet* %102, i32 0)
  %104 = call i32 @msleep(i32 150)
  %105 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %106 = load i32, i32* @AX_SWRESET_PRL, align 4
  %107 = load i32, i32* @AX_SWRESET_IPPD, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @asix_sw_reset(%struct.usbnet* %105, i32 %108)
  %110 = call i32 @msleep(i32 150)
  %111 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %112 = call i32 @asix_write_rx_ctl(%struct.usbnet* %111, i32 0)
  %113 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %114 = load i32, i32* @AX_CMD_READ_NODE_ID, align 4
  %115 = load i32, i32* @ETH_ALEN, align 4
  %116 = call i32 @asix_read_cmd(%struct.usbnet* %113, i32 %114, i32 0, i32 0, i32 %115, i64* %21)
  store i32 %116, i32* %7, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %101
  %119 = load i32, i32* %7, align 4
  %120 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  br label %253

121:                                              ; preds = %101
  %122 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %123 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %122, i32 0, i32 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @ETH_ALEN, align 4
  %128 = call i32 @memcpy(i32 %126, i64* %21, i32 %127)
  %129 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %130 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %129, i32 0, i32 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %133 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 6
  store %struct.TYPE_6__* %131, %struct.TYPE_6__** %134, align 8
  %135 = load i32, i32* @asix_mdio_read, align 4
  %136 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %137 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 5
  store i32 %135, i32* %138, align 8
  %139 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %140 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 4
  store i32 (%struct.TYPE_6__*, i32, i32, i32)* @asix_mdio_write, i32 (%struct.TYPE_6__*, i32, i32, i32)** %141, align 8
  %142 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %143 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  store i32 31, i32* %144, align 8
  %145 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %146 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  store i32 255, i32* %147, align 4
  %148 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %149 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 2
  store i32 1, i32* %150, align 8
  %151 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %152 = call i32 @asix_get_phy_addr(%struct.usbnet* %151)
  %153 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %154 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 3
  store i32 %152, i32* %155, align 4
  %156 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %157 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %156, i32 0, i32 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  store i32* @ax88178_netdev_ops, i32** %159, align 8
  %160 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %161 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %160, i32 0, i32 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  store i32* @ax88178_ethtool_ops, i32** %163, align 8
  %164 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %165 = call i32 @asix_get_phyid(%struct.usbnet* %164)
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %166)
  %168 = load %struct.asix_data*, %struct.asix_data** %6, align 8
  %169 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @PHY_MODE_MARVELL, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %121
  %174 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %175 = call i32 @marvell_phy_init(%struct.usbnet* %174)
  %176 = call i32 @msleep(i32 60)
  br label %177

177:                                              ; preds = %173, %121
  %178 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %179 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %178, i32 0, i32 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %182 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @MII_BMCR, align 4
  %186 = load i32, i32* @BMCR_RESET, align 4
  %187 = load i32, i32* @BMCR_ANENABLE, align 4
  %188 = or i32 %186, %187
  %189 = call i32 @asix_mdio_write(%struct.TYPE_6__* %180, i32 %184, i32 %185, i32 %188)
  %190 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %191 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %190, i32 0, i32 4
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %194 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @MII_ADVERTISE, align 4
  %198 = load i32, i32* @ADVERTISE_ALL, align 4
  %199 = load i32, i32* @ADVERTISE_CSMA, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @asix_mdio_write(%struct.TYPE_6__* %192, i32 %196, i32 %197, i32 %202)
  %204 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %205 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %204, i32 0, i32 4
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %208 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @MII_CTRL1000, align 4
  %212 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %213 = call i32 @asix_mdio_write(%struct.TYPE_6__* %206, i32 %210, i32 %211, i32 %212)
  %214 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %215 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %214, i32 0, i32 3
  %216 = call i32 @mii_nway_restart(%struct.TYPE_5__* %215)
  %217 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %218 = load i32, i32* @AX88178_MEDIUM_DEFAULT, align 4
  %219 = call i32 @asix_write_medium_mode(%struct.usbnet* %217, i32 %218)
  store i32 %219, i32* %7, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %177
  br label %253

222:                                              ; preds = %177
  %223 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %224 = load i32, i32* @AX_DEFAULT_RX_CTL, align 4
  %225 = call i32 @asix_write_rx_ctl(%struct.usbnet* %223, i32 %224)
  store i32 %225, i32* %7, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %222
  br label %253

228:                                              ; preds = %222
  %229 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %230 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %229, i32 0, i32 2
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @FLAG_FRAMING_AX, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %228
  %238 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %239 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %238, i32 0, i32 0
  store i32 2048, i32* %239, align 8
  br label %240

240:                                              ; preds = %237, %228
  %241 = load i32, i32* @GFP_KERNEL, align 4
  %242 = call i32 @kzalloc(i32 4, i32 %241)
  %243 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %244 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %243, i32 0, i32 1
  store i32 %242, i32* %244, align 4
  %245 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %246 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %240
  %250 = load i32, i32* @ENOMEM, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %255

252:                                              ; preds = %240
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %255

253:                                              ; preds = %227, %221, %118
  %254 = load i32, i32* %7, align 4
  store i32 %254, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %255

255:                                              ; preds = %253, %252, %249
  %256 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %256)
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usbnet_get_endpoints(%struct.usbnet*, %struct.usb_interface*) #2

declare dso_local i32 @asix_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i64*) #2

declare dso_local i32 @dbg(i8*, ...) #2

declare dso_local i32 @asix_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #2

declare dso_local i64 @cpu_to_le16(i32) #2

declare dso_local i32 @le16_to_cpu(i64) #2

declare dso_local i32 @asix_write_gpio(%struct.usbnet*, i32, i32) #2

declare dso_local i32 @asix_sw_reset(%struct.usbnet*, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @asix_write_rx_ctl(%struct.usbnet*, i32) #2

declare dso_local i32 @memcpy(i32, i64*, i32) #2

declare dso_local i32 @asix_mdio_write(%struct.TYPE_6__*, i32, i32, i32) #2

declare dso_local i32 @asix_get_phy_addr(%struct.usbnet*) #2

declare dso_local i32 @asix_get_phyid(%struct.usbnet*) #2

declare dso_local i32 @marvell_phy_init(%struct.usbnet*) #2

declare dso_local i32 @mii_nway_restart(%struct.TYPE_5__*) #2

declare dso_local i32 @asix_write_medium_mode(%struct.usbnet*, i32) #2

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
