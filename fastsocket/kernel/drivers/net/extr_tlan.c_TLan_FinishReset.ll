; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_FinishReset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_FinishReset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i64, %struct.TYPE_4__*, i64, i32* }
%struct.TYPE_4__ = type { i32 }

@TLAN_NET_CMD_NRESET = common dso_local global i32 0, align 4
@TLAN_NET_CMD_NWRAP = common dso_local global i32 0, align 4
@TLAN_NET_CMD_DUPLEX = common dso_local global i32 0, align 4
@TLAN_NET_CMD = common dso_local global i32 0, align 4
@TLAN_NET_MASK_MASK4 = common dso_local global i32 0, align 4
@TLAN_NET_MASK_MASK5 = common dso_local global i32 0, align 4
@TLAN_NET_MASK_MASK7 = common dso_local global i32 0, align 4
@TLAN_NET_MASK = common dso_local global i32 0, align 4
@TLAN_MAX_RX = common dso_local global i32 0, align 4
@MII_GEN_ID_HI = common dso_local global i32 0, align 4
@MII_GEN_ID_LO = common dso_local global i32 0, align 4
@TLAN_ADAPTER_UNMANAGED_PHY = common dso_local global i32 0, align 4
@MII_GS_LINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"TLAN:  %s: Link forced.\0A\00", align 1
@MII_GEN_STS = common dso_local global i32 0, align 4
@NAT_SEM_ID1 = common dso_local global i64 0, align 8
@NAT_SEM_ID2 = common dso_local global i64 0, align 8
@MII_AN_LPA = common dso_local global i32 0, align 4
@TLAN_TLPHY_PAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"TLAN: %s: Link active with \00", align 1
@TLAN_PHY_AN_EN_STAT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"forced 10%sMbps %s-Duplex\0A\00", align 1
@TLAN_PHY_SPEED_100 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@TLAN_PHY_DUPLEX_FULL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"AutoNegotiation enabled, at 10%sMbps %s-Duplex\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"TLAN: Partner capability: \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@media = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TLAN_LED_REG = common dso_local global i32 0, align 4
@TLAN_LED_LINK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"TLAN: %s: Link active\0A\00", align 1
@TLAN_TLPHY_CTL = common dso_local global i32 0, align 4
@TLAN_TC_INTEN = common dso_local global i64 0, align 8
@TLAN_NET_SIO = common dso_local global i32 0, align 4
@TLAN_NET_SIO_MINTEN = common dso_local global i32 0, align 4
@TLAN_HC_INT_ON = common dso_local global i32 0, align 4
@TLAN_HOST_CMD = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@TLAN_DEBUG_PROBE = common dso_local global i32 0, align 4
@TLAN_HC_REQ_INT = common dso_local global i32 0, align 4
@TLAN_CH_PARM = common dso_local global i64 0, align 8
@TLAN_HC_GO = common dso_local global i32 0, align 4
@TLAN_HC_RT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [51 x i8] c"TLAN: %s: Link inactive, will retry in 10 secs...\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@TLAN_TIMER_FINISH_RESET = common dso_local global i32 0, align 4
@TLAN_TIMER_LINK_BEAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @TLan_FinishReset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TLan_FinishReset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call %struct.TYPE_5__* @netdev_priv(%struct.net_device* %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %3, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 7
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @TLAN_NET_CMD_NRESET, align 4
  %25 = load i32, i32* @TLAN_NET_CMD_NWRAP, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %4, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @TLAN_NET_CMD_DUPLEX, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %1
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @TLAN_NET_CMD, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @TLan_DioWrite8(i64 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @TLAN_NET_MASK_MASK4, align 4
  %43 = load i32, i32* @TLAN_NET_MASK_MASK5, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %4, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %35
  %50 = load i32, i32* @TLAN_NET_MASK_MASK7, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %35
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @TLAN_NET_MASK, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @TLan_DioWrite8(i64 %56, i32 %57, i32 %58)
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @TLAN_MAX_RX, align 4
  %64 = call i32 @TLan_DioWrite16(i64 %62, i32 %63, i32 1536)
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @MII_GEN_ID_HI, align 4
  %68 = call i32 @TLan_MiiReadReg(%struct.net_device* %65, i32 %66, i32 %67, i64* %11)
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @MII_GEN_ID_LO, align 4
  %72 = call i32 @TLan_MiiReadReg(%struct.net_device* %69, i32 %70, i32 %71, i64* %12)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @TLAN_ADAPTER_UNMANAGED_PHY, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %53
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81, %53
  %87 = load i64, i64* @MII_GS_LINK, align 8
  store i64 %87, i64* %7, align 8
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %209

92:                                               ; preds = %81
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @MII_GEN_STS, align 4
  %96 = call i32 @TLan_MiiReadReg(%struct.net_device* %93, i32 %94, i32 %95, i64* %7)
  %97 = call i32 @udelay(i32 1000)
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @MII_GEN_STS, align 4
  %101 = call i32 @TLan_MiiReadReg(%struct.net_device* %98, i32 %99, i32 %100, i64* %7)
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* @MII_GS_LINK, align 8
  %104 = and i64 %102, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %191

106:                                              ; preds = %92
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* @NAT_SEM_ID1, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %191

110:                                              ; preds = %106
  %111 = load i64, i64* %12, align 8
  %112 = load i64, i64* @NAT_SEM_ID2, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %191

114:                                              ; preds = %110
  %115 = load %struct.net_device*, %struct.net_device** %2, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @MII_AN_LPA, align 4
  %118 = call i32 @TLan_MiiReadReg(%struct.net_device* %115, i32 %116, i32 %117, i64* %8)
  %119 = load %struct.net_device*, %struct.net_device** %2, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @TLAN_TLPHY_PAR, align 4
  %122 = call i32 @TLan_MiiReadReg(%struct.net_device* %119, i32 %120, i32 %121, i64* %10)
  %123 = load %struct.net_device*, %struct.net_device** %2, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* @TLAN_PHY_AN_EN_STAT, align 8
  %129 = and i64 %127, %128
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %145, label %131

131:                                              ; preds = %114
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* @TLAN_PHY_SPEED_100, align 8
  %134 = and i64 %132, %133
  %135 = icmp ne i64 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* @TLAN_PHY_DUPLEX_FULL, align 8
  %140 = and i64 %138, %139
  %141 = icmp ne i64 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %144 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %137, i8* %143)
  br label %184

145:                                              ; preds = %114
  %146 = load i64, i64* %10, align 8
  %147 = load i64, i64* @TLAN_PHY_SPEED_100, align 8
  %148 = and i64 %146, %147
  %149 = icmp ne i64 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %152 = load i64, i64* %10, align 8
  %153 = load i64, i64* @TLAN_PHY_DUPLEX_FULL, align 8
  %154 = and i64 %152, %153
  %155 = icmp ne i64 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %158 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* %151, i8* %157)
  %159 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  store i32 5, i32* %13, align 4
  br label %160

160:                                              ; preds = %179, %145
  %161 = load i32, i32* %13, align 4
  %162 = icmp sle i32 %161, 10
  br i1 %162, label %163, label %182

163:                                              ; preds = %160
  %164 = load i64, i64* %8, align 8
  %165 = load i32, i32* %13, align 4
  %166 = shl i32 1, %165
  %167 = sext i32 %166 to i64
  %168 = and i64 %164, %167
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %163
  %171 = load i32*, i32** @media, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sub nsw i32 %172, 5
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %170, %163
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %13, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %13, align 4
  br label %160

182:                                              ; preds = %160
  %183 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %131
  %185 = load %struct.net_device*, %struct.net_device** %2, align 8
  %186 = getelementptr inbounds %struct.net_device, %struct.net_device* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* @TLAN_LED_REG, align 4
  %189 = load i32, i32* @TLAN_LED_LINK, align 4
  %190 = call i32 @TLan_DioWrite8(i64 %187, i32 %188, i32 %189)
  br label %208

191:                                              ; preds = %110, %106, %92
  %192 = load i64, i64* %7, align 8
  %193 = load i64, i64* @MII_GS_LINK, align 8
  %194 = and i64 %192, %193
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %191
  %197 = load %struct.net_device*, %struct.net_device** %2, align 8
  %198 = getelementptr inbounds %struct.net_device, %struct.net_device* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %199)
  %201 = load %struct.net_device*, %struct.net_device** %2, align 8
  %202 = getelementptr inbounds %struct.net_device, %struct.net_device* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i32, i32* @TLAN_LED_REG, align 4
  %205 = load i32, i32* @TLAN_LED_LINK, align 4
  %206 = call i32 @TLan_DioWrite8(i64 %203, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %196, %191
  br label %208

208:                                              ; preds = %207, %184
  br label %209

209:                                              ; preds = %208, %86
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %241

214:                                              ; preds = %209
  %215 = load %struct.net_device*, %struct.net_device** %2, align 8
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* @TLAN_TLPHY_CTL, align 4
  %218 = call i32 @TLan_MiiReadReg(%struct.net_device* %215, i32 %216, i32 %217, i64* %9)
  %219 = load i64, i64* @TLAN_TC_INTEN, align 8
  %220 = load i64, i64* %9, align 8
  %221 = or i64 %220, %219
  store i64 %221, i64* %9, align 8
  %222 = load %struct.net_device*, %struct.net_device** %2, align 8
  %223 = load i32, i32* %5, align 4
  %224 = load i32, i32* @TLAN_TLPHY_CTL, align 4
  %225 = load i64, i64* %9, align 8
  %226 = call i32 @TLan_MiiWriteReg(%struct.net_device* %222, i32 %223, i32 %224, i64 %225)
  %227 = load %struct.net_device*, %struct.net_device** %2, align 8
  %228 = getelementptr inbounds %struct.net_device, %struct.net_device* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load i32, i32* @TLAN_NET_SIO, align 4
  %231 = call i32 @TLan_DioRead8(i64 %229, i32 %230)
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* @TLAN_NET_SIO_MINTEN, align 4
  %233 = load i32, i32* %6, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %6, align 4
  %235 = load %struct.net_device*, %struct.net_device** %2, align 8
  %236 = getelementptr inbounds %struct.net_device, %struct.net_device* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* @TLAN_NET_SIO, align 4
  %239 = load i32, i32* %6, align 4
  %240 = call i32 @TLan_DioWrite8(i64 %237, i32 %238, i32 %239)
  br label %241

241:                                              ; preds = %214, %209
  %242 = load i64, i64* %7, align 8
  %243 = load i64, i64* @MII_GS_LINK, align 8
  %244 = and i64 %242, %243
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %300

246:                                              ; preds = %241
  %247 = load %struct.net_device*, %struct.net_device** %2, align 8
  %248 = load %struct.net_device*, %struct.net_device** %2, align 8
  %249 = getelementptr inbounds %struct.net_device, %struct.net_device* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @TLan_SetMac(%struct.net_device* %247, i32 0, i32 %250)
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 2
  store i32 1, i32* %253, align 4
  %254 = load i32, i32* @TLAN_HC_INT_ON, align 4
  %255 = ashr i32 %254, 8
  %256 = load %struct.net_device*, %struct.net_device** %2, align 8
  %257 = getelementptr inbounds %struct.net_device, %struct.net_device* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @TLAN_HOST_CMD, align 8
  %260 = add nsw i64 %258, %259
  %261 = add nsw i64 %260, 1
  %262 = call i32 @outb(i32 %255, i64 %261)
  %263 = load i32, i32* @debug, align 4
  %264 = icmp sge i32 %263, 1
  br i1 %264, label %265, label %279

265:                                              ; preds = %246
  %266 = load i32, i32* @debug, align 4
  %267 = load i32, i32* @TLAN_DEBUG_PROBE, align 4
  %268 = icmp ne i32 %266, %267
  br i1 %268, label %269, label %279

269:                                              ; preds = %265
  %270 = load i32, i32* @TLAN_HC_REQ_INT, align 4
  %271 = ashr i32 %270, 8
  %272 = load %struct.net_device*, %struct.net_device** %2, align 8
  %273 = getelementptr inbounds %struct.net_device, %struct.net_device* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @TLAN_HOST_CMD, align 8
  %276 = add nsw i64 %274, %275
  %277 = add nsw i64 %276, 1
  %278 = call i32 @outb(i32 %271, i64 %277)
  br label %279

279:                                              ; preds = %269, %265, %246
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.net_device*, %struct.net_device** %2, align 8
  %284 = getelementptr inbounds %struct.net_device, %struct.net_device* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @TLAN_CH_PARM, align 8
  %287 = add nsw i64 %285, %286
  %288 = call i32 @outl(i32 %282, i64 %287)
  %289 = load i32, i32* @TLAN_HC_GO, align 4
  %290 = load i32, i32* @TLAN_HC_RT, align 4
  %291 = or i32 %289, %290
  %292 = load %struct.net_device*, %struct.net_device** %2, align 8
  %293 = getelementptr inbounds %struct.net_device, %struct.net_device* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @TLAN_HOST_CMD, align 8
  %296 = add nsw i64 %294, %295
  %297 = call i32 @outl(i32 %291, i64 %296)
  %298 = load %struct.net_device*, %struct.net_device** %2, align 8
  %299 = call i32 @netif_carrier_on(%struct.net_device* %298)
  br label %310

300:                                              ; preds = %241
  %301 = load %struct.net_device*, %struct.net_device** %2, align 8
  %302 = getelementptr inbounds %struct.net_device, %struct.net_device* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i32 %303)
  %305 = load %struct.net_device*, %struct.net_device** %2, align 8
  %306 = load i32, i32* @HZ, align 4
  %307 = mul nsw i32 10, %306
  %308 = load i32, i32* @TLAN_TIMER_FINISH_RESET, align 4
  %309 = call i32 @TLan_SetTimer(%struct.net_device* %305, i32 %307, i32 %308)
  br label %313

310:                                              ; preds = %279
  %311 = load %struct.net_device*, %struct.net_device** %2, align 8
  %312 = call i32 @TLan_SetMulticastList(%struct.net_device* %311)
  br label %313

313:                                              ; preds = %310, %300
  ret void
}

declare dso_local %struct.TYPE_5__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @TLan_DioWrite8(i64, i32, i32) #1

declare dso_local i32 @TLan_DioWrite16(i64, i32, i32) #1

declare dso_local i32 @TLan_MiiReadReg(%struct.net_device*, i32, i32, i64*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @TLan_MiiWriteReg(%struct.net_device*, i32, i32, i64) #1

declare dso_local i32 @TLan_DioRead8(i64, i32) #1

declare dso_local i32 @TLan_SetMac(%struct.net_device*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @TLan_SetTimer(%struct.net_device*, i32, i32) #1

declare dso_local i32 @TLan_SetMulticastList(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
