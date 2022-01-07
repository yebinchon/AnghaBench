; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_8727_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_8727_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32, i64 }
%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i64, i32, i32 }

@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_CTRL = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_RXSTAT = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"8727 RX_ALARM_STATUS  0x%x\0A\00", align 1
@MDIO_PMA_LASI_TXSTAT = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_TXCTRL = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_STAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"8727 LASI status 0x%x\0A\00", align 1
@MDIO_PMA_REG_M8051_MSGOUT_REG = common dso_local global i32 0, align 4
@FLAGS_NOC = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8727_GPIO_CTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"8727 Power fault has been detected on port %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [206 x i8] c"Error: Power fault on Port %d has been detected and the power to that SFP+ module has been removed to prevent failure of the card. Please remove the SFP+ module and restart the system to clear this error.\0A\00", align 1
@MDIO_PMA_LASI_RXCTRL = common dso_local global i32 0, align 4
@MDIO_PMA_REG_PHY_IDENTIFIER = common dso_local global i32 0, align 4
@FLAGS_SFP_NOT_APPROVED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Enabling 8727 TX laser\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Tx is disabled\0A\00", align 1
@MDIO_PMA_REG_8073_SPEED_LINK_STATUS = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"port %x: External link up in 10G\0A\00", align 1
@SPEED_1000 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [33 x i8] c"port %x: External link up in 1G\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"port %x: External link is down\0A\00", align 1
@DUPLEX_FULL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"duplex = 0x%x\0A\00", align 1
@MDIO_PMA_REG_8727_PCS_GP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_8727_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_8727_read_status(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x_phy*, align 8
  %6 = alloca %struct.link_params*, align 8
  %7 = alloca %struct.link_vars*, align 8
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %5, align 8
  store %struct.link_params* %1, %struct.link_params** %6, align 8
  store %struct.link_vars* %2, %struct.link_vars** %7, align 8
  %15 = load %struct.link_params*, %struct.link_params** %6, align 8
  %16 = getelementptr inbounds %struct.link_params, %struct.link_params* %15, i32 0, i32 1
  %17 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  store %struct.bnx2x* %17, %struct.bnx2x** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.link_params*, %struct.link_params** %6, align 8
  %19 = getelementptr inbounds %struct.link_params, %struct.link_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %22 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %23 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %24 = load i32, i32* @MDIO_PMA_LASI_CTRL, align 4
  %25 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %21, %struct.bnx2x_phy* %22, i32 %23, i32 %24, i32* %13)
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %275

29:                                               ; preds = %3
  %30 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %31 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %32 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %33 = load i32, i32* @MDIO_PMA_LASI_RXSTAT, align 4
  %34 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %30, %struct.bnx2x_phy* %31, i32 %32, i32 %33, i32* %12)
  %35 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %36 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @NETIF_MSG_LINK, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 (i32, i8*, ...) @DP(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %41 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %42 = load i32, i32* @MDIO_PMA_LASI_TXSTAT, align 4
  %43 = load i32, i32* @MDIO_PMA_LASI_TXCTRL, align 4
  %44 = call i32 @bnx2x_sfp_mask_fault(%struct.bnx2x* %40, %struct.bnx2x_phy* %41, i32 %42, i32 %43)
  %45 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %46 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %47 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %48 = load i32, i32* @MDIO_PMA_LASI_STAT, align 4
  %49 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %45, %struct.bnx2x_phy* %46, i32 %47, i32 %48, i32* %14)
  %50 = load i32, i32* @NETIF_MSG_LINK, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 (i32, i8*, ...) @DP(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %54 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %55 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %56 = load i32, i32* @MDIO_PMA_REG_M8051_MSGOUT_REG, align 4
  %57 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %53, %struct.bnx2x_phy* %54, i32 %55, i32 %56, i32* %14)
  %58 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %59 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @FLAGS_NOC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %127, label %64

64:                                               ; preds = %29
  %65 = load i32, i32* %12, align 4
  %66 = and i32 %65, 32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %127, label %68

68:                                               ; preds = %64
  %69 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %70 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %71 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %72 = load i32, i32* @MDIO_PMA_REG_8727_GPIO_CTRL, align 4
  %73 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %69, %struct.bnx2x_phy* %70, i32 %71, i32 %72, i32* %14)
  %74 = load i32, i32* %14, align 4
  %75 = and i32 %74, 256
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %126

77:                                               ; preds = %68
  %78 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %79 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %83 = call i32 @BP_PATH(%struct.bnx2x* %82)
  %84 = load %struct.link_params*, %struct.link_params** %6, align 8
  %85 = getelementptr inbounds %struct.link_params, %struct.link_params* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = shl i32 %86, 1
  %88 = add nsw i32 %83, %87
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %81, %77
  %90 = load i32, i32* @NETIF_MSG_LINK, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 (i32, i8*, ...) @DP(i32 %90, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %94 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @netdev_err(i32 %95, i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %99 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %100 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %101 = load i32, i32* @MDIO_PMA_LASI_RXCTRL, align 4
  %102 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %98, %struct.bnx2x_phy* %99, i32 %100, i32 %101, i32 32)
  %103 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %104 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %105 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %106 = load i32, i32* @MDIO_PMA_REG_PHY_IDENTIFIER, align 4
  %107 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %103, %struct.bnx2x_phy* %104, i32 %105, i32 %106, i32* %14)
  %108 = load i32, i32* %14, align 4
  %109 = or i32 %108, 256
  store i32 %109, i32* %14, align 4
  %110 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %111 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %112 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %113 = load i32, i32* @MDIO_PMA_REG_PHY_IDENTIFIER, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %110, %struct.bnx2x_phy* %111, i32 %112, i32 %113, i32 %114)
  %116 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %117 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %118 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %119 = load i32, i32* @MDIO_PMA_LASI_RXSTAT, align 4
  %120 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %116, %struct.bnx2x_phy* %117, i32 %118, i32 %119, i32* %12)
  %121 = load %struct.link_params*, %struct.link_params** %6, align 8
  %122 = getelementptr inbounds %struct.link_params, %struct.link_params* %121, i32 0, i32 1
  %123 = load %struct.bnx2x*, %struct.bnx2x** %122, align 8
  %124 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %125 = call i32 @bnx2x_8727_power_module(%struct.bnx2x* %123, %struct.bnx2x_phy* %124, i32 0)
  store i32 0, i32* %4, align 4
  br label %275

126:                                              ; preds = %68
  br label %127

127:                                              ; preds = %126, %64, %29
  %128 = load i32, i32* %12, align 4
  %129 = and i32 %128, 32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %133 = load %struct.link_params*, %struct.link_params** %6, align 8
  %134 = call i32 @bnx2x_8727_handle_mod_abs(%struct.bnx2x_phy* %132, %struct.link_params* %133)
  %135 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %136 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %137 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %138 = load i32, i32* @MDIO_PMA_LASI_RXCTRL, align 4
  %139 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %135, %struct.bnx2x_phy* %136, i32 %137, i32 %138, i32 36)
  br label %140

140:                                              ; preds = %131, %127
  %141 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %142 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @FLAGS_SFP_NOT_APPROVED, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %140
  %148 = load i32, i32* @NETIF_MSG_LINK, align 4
  %149 = call i32 (i32, i8*, ...) @DP(i32 %148, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %150 = load %struct.link_params*, %struct.link_params** %6, align 8
  %151 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %152 = call i32 @bnx2x_sfp_set_transmitter(%struct.link_params* %150, %struct.bnx2x_phy* %151, i32 1)
  br label %156

153:                                              ; preds = %140
  %154 = load i32, i32* @NETIF_MSG_LINK, align 4
  %155 = call i32 (i32, i8*, ...) @DP(i32 %154, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %275

156:                                              ; preds = %147
  %157 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %158 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %159 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %160 = load i32, i32* @MDIO_PMA_REG_8073_SPEED_LINK_STATUS, align 4
  %161 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %157, %struct.bnx2x_phy* %158, i32 %159, i32 %160, i32* %11)
  %162 = load i32, i32* %11, align 4
  %163 = and i32 %162, 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %156
  %166 = load i32, i32* %11, align 4
  %167 = and i32 %166, 32768
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %165
  store i32 1, i32* %9, align 4
  %170 = load i64, i64* @SPEED_10000, align 8
  %171 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %172 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %171, i32 0, i32 0
  store i64 %170, i64* %172, align 8
  %173 = load i32, i32* @NETIF_MSG_LINK, align 4
  %174 = load %struct.link_params*, %struct.link_params** %6, align 8
  %175 = getelementptr inbounds %struct.link_params, %struct.link_params* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 (i32, i8*, ...) @DP(i32 %173, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %176)
  br label %202

178:                                              ; preds = %165, %156
  %179 = load i32, i32* %11, align 4
  %180 = and i32 %179, 1
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %178
  %183 = load i32, i32* %11, align 4
  %184 = and i32 %183, 8192
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %195, label %186

186:                                              ; preds = %182
  store i32 1, i32* %9, align 4
  %187 = load i64, i64* @SPEED_1000, align 8
  %188 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %189 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  %190 = load i32, i32* @NETIF_MSG_LINK, align 4
  %191 = load %struct.link_params*, %struct.link_params** %6, align 8
  %192 = getelementptr inbounds %struct.link_params, %struct.link_params* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 (i32, i8*, ...) @DP(i32 %190, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %193)
  br label %201

195:                                              ; preds = %182, %178
  store i32 0, i32* %9, align 4
  %196 = load i32, i32* @NETIF_MSG_LINK, align 4
  %197 = load %struct.link_params*, %struct.link_params** %6, align 8
  %198 = getelementptr inbounds %struct.link_params, %struct.link_params* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 (i32, i8*, ...) @DP(i32 %196, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %195, %186
  br label %202

202:                                              ; preds = %201, %169
  %203 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %204 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @SPEED_10000, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %226

208:                                              ; preds = %202
  %209 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %210 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %211 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %212 = load i32, i32* @MDIO_PMA_LASI_TXSTAT, align 4
  %213 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %209, %struct.bnx2x_phy* %210, i32 %211, i32 %212, i32* %14)
  %214 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %215 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %216 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %217 = load i32, i32* @MDIO_PMA_LASI_TXSTAT, align 4
  %218 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %214, %struct.bnx2x_phy* %215, i32 %216, i32 %217, i32* %14)
  %219 = load i32, i32* %14, align 4
  %220 = and i32 %219, 1
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %208
  %223 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %224 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %223, i32 0, i32 1
  store i32 1, i32* %224, align 8
  br label %225

225:                                              ; preds = %222, %208
  br label %226

226:                                              ; preds = %225, %202
  %227 = load i32, i32* %9, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %242

229:                                              ; preds = %226
  %230 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %231 = load %struct.link_params*, %struct.link_params** %6, align 8
  %232 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %233 = call i32 @bnx2x_ext_phy_resolve_fc(%struct.bnx2x_phy* %230, %struct.link_params* %231, %struct.link_vars* %232)
  %234 = load i32, i32* @DUPLEX_FULL, align 4
  %235 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %236 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %235, i32 0, i32 2
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* @NETIF_MSG_LINK, align 4
  %238 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %239 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = call i32 (i32, i8*, ...) @DP(i32 %237, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %240)
  br label %242

242:                                              ; preds = %229, %226
  %243 = load %struct.link_params*, %struct.link_params** %6, align 8
  %244 = call i64 @DUAL_MEDIA(%struct.link_params* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %273

246:                                              ; preds = %242
  %247 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %248 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @SPEED_1000, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %273

252:                                              ; preds = %246
  %253 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %254 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %255 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %256 = load i32, i32* @MDIO_PMA_REG_8727_PCS_GP, align 4
  %257 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %253, %struct.bnx2x_phy* %254, i32 %255, i32 %256, i32* %14)
  %258 = load i32, i32* %9, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %252
  %261 = load i32, i32* %14, align 4
  %262 = and i32 %261, -3073
  store i32 %262, i32* %14, align 4
  br label %266

263:                                              ; preds = %252
  %264 = load i32, i32* %14, align 4
  %265 = or i32 %264, 3072
  store i32 %265, i32* %14, align 4
  br label %266

266:                                              ; preds = %263, %260
  %267 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %268 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %269 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %270 = load i32, i32* @MDIO_PMA_REG_8727_PCS_GP, align 4
  %271 = load i32, i32* %14, align 4
  %272 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %267, %struct.bnx2x_phy* %268, i32 %269, i32 %270, i32 %271)
  br label %273

273:                                              ; preds = %266, %246, %242
  %274 = load i32, i32* %9, align 4
  store i32 %274, i32* %4, align 4
  br label %275

275:                                              ; preds = %273, %153, %89, %28
  %276 = load i32, i32* %4, align 4
  ret i32 %276
}

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_sfp_mask_fault(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_8727_power_module(%struct.bnx2x*, %struct.bnx2x_phy*, i32) #1

declare dso_local i32 @bnx2x_8727_handle_mod_abs(%struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i32 @bnx2x_sfp_set_transmitter(%struct.link_params*, %struct.bnx2x_phy*, i32) #1

declare dso_local i32 @bnx2x_ext_phy_resolve_fc(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*) #1

declare dso_local i64 @DUAL_MEDIA(%struct.link_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
