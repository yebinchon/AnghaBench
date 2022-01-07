; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_link_settings_supported.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_link_settings_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.bnx2x = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32*, i8*, i32* }
%struct.TYPE_8__ = type { i32, i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@INT_PHY = common dso_local global i64 0, align 8
@EXT_PHY1 = common dso_local global i64 0, align 8
@PORT_HW_CFG_PHY_SWAPPED_ENABLED = common dso_local global i32 0, align 4
@EXT_PHY2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"NVRAM config error. BAD phy config. PHY1 config 0x%x, PHY2 config 0x%x\0A\00", align 1
@dev_info = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@MISC_REG_WC0_CTRL_PHY_ADDR = common dso_local global i32 0, align 4
@NIG_REG_SERDES0_CTRL_PHY_ADDR = common dso_local global i32 0, align 4
@NIG_REG_XGXS0_CTRL_PHY_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"BAD switch_cfg link_config 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"phy_addr 0x%x\0A\00", align 1
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_HALF = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_HALF = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_FULL = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_1G = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_2_5G = common dso_local global i32 0, align 4
@SUPPORTED_2500baseX_Full = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10G = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_20G = common dso_local global i32 0, align 4
@SUPPORTED_20000baseKR2_Full = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"supported 0x%x 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_link_settings_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_link_settings_supported(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = call i32 @BP_PORT(%struct.bnx2x* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %21 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %115 [
    i32 1, label %24
    i32 2, label %38
    i32 3, label %52
  ]

24:                                               ; preds = %2
  %25 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %26 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load i64, i64* @INT_PHY, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %34 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %32, i32* %37, align 4
  store i32 1, i32* %5, align 4
  br label %115

38:                                               ; preds = %2
  %39 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %40 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i64, i64* @EXT_PHY1, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %48 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %46, i32* %51, align 4
  store i32 1, i32* %5, align 4
  br label %115

52:                                               ; preds = %2
  %53 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %54 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PORT_HW_CFG_PHY_SWAPPED_ENABLED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %52
  %61 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %62 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i64, i64* @EXT_PHY1, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %70 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 %68, i32* %73, align 4
  %74 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %75 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i64, i64* @EXT_PHY2, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %83 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %81, i32* %86, align 4
  br label %114

87:                                               ; preds = %52
  %88 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %89 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i64, i64* @EXT_PHY1, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %97 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %95, i32* %100, align 4
  %101 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %102 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i64, i64* @EXT_PHY2, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %110 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  store i32 %108, i32* %113, align 4
  br label %114

114:                                              ; preds = %87, %60
  store i32 2, i32* %5, align 4
  br label %115

115:                                              ; preds = %2, %114, %38, %24
  %116 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %117 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %149, label %123

123:                                              ; preds = %115
  %124 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %125 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %149, label %131

131:                                              ; preds = %123
  %132 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dev_info, i32 0, i32 0), align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @SHMEM_RD(%struct.bnx2x* %132, i32 %138)
  %140 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dev_info, i32 0, i32 0), align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @SHMEM_RD(%struct.bnx2x* %140, i32 %146)
  %148 = call i32 (i8*, i32, ...) @BNX2X_ERR(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %139, i32 %147)
  br label %414

149:                                              ; preds = %123, %115
  %150 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %151 = call i64 @CHIP_IS_E3(%struct.bnx2x* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %155 = load i32, i32* @MISC_REG_WC0_CTRL_PHY_ADDR, align 4
  %156 = call i8* @REG_RD(%struct.bnx2x* %154, i32 %155)
  %157 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %158 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  store i8* %156, i8** %159, align 8
  br label %191

160:                                              ; preds = %149
  %161 = load i32, i32* %4, align 4
  switch i32 %161, label %182 [
    i32 128, label %162
    i32 129, label %172
  ]

162:                                              ; preds = %160
  %163 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %164 = load i32, i32* @NIG_REG_SERDES0_CTRL_PHY_ADDR, align 4
  %165 = load i32, i32* %7, align 4
  %166 = mul nsw i32 %165, 16
  %167 = add nsw i32 %164, %166
  %168 = call i8* @REG_RD(%struct.bnx2x* %163, i32 %167)
  %169 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %170 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  store i8* %168, i8** %171, align 8
  br label %190

172:                                              ; preds = %160
  %173 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %174 = load i32, i32* @NIG_REG_XGXS0_CTRL_PHY_ADDR, align 4
  %175 = load i32, i32* %7, align 4
  %176 = mul nsw i32 %175, 24
  %177 = add nsw i32 %174, %176
  %178 = call i8* @REG_RD(%struct.bnx2x* %173, i32 %177)
  %179 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %180 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  store i8* %178, i8** %181, align 8
  br label %190

182:                                              ; preds = %160
  %183 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %184 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i8*, i32, ...) @BNX2X_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %188)
  br label %414

190:                                              ; preds = %172, %162
  br label %191

191:                                              ; preds = %190, %153
  %192 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %193 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = ptrtoint i8* %195 to i32
  %197 = call i32 (i8*, i32, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %196)
  store i32 0, i32* %6, align 4
  br label %198

198:                                              ; preds = %397, %191
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* %5, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %400

202:                                              ; preds = %198
  %203 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %204 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_HALF, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %226, label %214

214:                                              ; preds = %202
  %215 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %216 = xor i32 %215, -1
  %217 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %218 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %6, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = and i32 %224, %216
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %214, %202
  %227 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %228 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %250, label %238

238:                                              ; preds = %226
  %239 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %240 = xor i32 %239, -1
  %241 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %242 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %6, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %248, %240
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %238, %226
  %251 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %252 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_HALF, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %274, label %262

262:                                              ; preds = %250
  %263 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %264 = xor i32 %263, -1
  %265 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %266 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %6, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, %264
  store i32 %273, i32* %271, align 4
  br label %274

274:                                              ; preds = %262, %250
  %275 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %276 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %6, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_FULL, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %298, label %286

286:                                              ; preds = %274
  %287 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %288 = xor i32 %287, -1
  %289 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %290 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = load i32, i32* %6, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = and i32 %296, %288
  store i32 %297, i32* %295, align 4
  br label %298

298:                                              ; preds = %286, %274
  %299 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %300 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 2
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %6, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_1G, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %324, label %310

310:                                              ; preds = %298
  %311 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %312 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %313 = or i32 %311, %312
  %314 = xor i32 %313, -1
  %315 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %316 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %6, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = and i32 %322, %314
  store i32 %323, i32* %321, align 4
  br label %324

324:                                              ; preds = %310, %298
  %325 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %326 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 2
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %6, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_2_5G, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %348, label %336

336:                                              ; preds = %324
  %337 = load i32, i32* @SUPPORTED_2500baseX_Full, align 4
  %338 = xor i32 %337, -1
  %339 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %340 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 0
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %6, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = and i32 %346, %338
  store i32 %347, i32* %345, align 4
  br label %348

348:                                              ; preds = %336, %324
  %349 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %350 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 2
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* %6, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10G, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %372, label %360

360:                                              ; preds = %348
  %361 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %362 = xor i32 %361, -1
  %363 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %364 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i32 0, i32 0
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %6, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = and i32 %370, %362
  store i32 %371, i32* %369, align 4
  br label %372

372:                                              ; preds = %360, %348
  %373 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %374 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 2
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %6, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_20G, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %396, label %384

384:                                              ; preds = %372
  %385 = load i32, i32* @SUPPORTED_20000baseKR2_Full, align 4
  %386 = xor i32 %385, -1
  %387 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %388 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 0
  %390 = load i32*, i32** %389, align 8
  %391 = load i32, i32* %6, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = and i32 %394, %386
  store i32 %395, i32* %393, align 4
  br label %396

396:                                              ; preds = %384, %372
  br label %397

397:                                              ; preds = %396
  %398 = load i32, i32* %6, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %6, align 4
  br label %198

400:                                              ; preds = %198
  %401 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %402 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 0
  %404 = load i32*, i32** %403, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 0
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %408 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %408, i32 0, i32 0
  %410 = load i32*, i32** %409, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 1
  %412 = load i32, i32* %411, align 4
  %413 = call i32 (i8*, i32, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %406, i32 %412)
  br label %414

414:                                              ; preds = %400, %182, %131
  ret void
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, ...) #1

declare dso_local i32 @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i8* @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_DEV_INFO(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
