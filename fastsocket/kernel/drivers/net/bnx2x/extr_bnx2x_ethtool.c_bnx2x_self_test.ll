; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_self_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_self_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.bnx2x = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@BNX2X_RECOVERY_DONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Handling parity error recovery. Try again later\0A\00", align 1
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Self-test command parameters: offline = %d, external_lb = %d\0A\00", align 1
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@ETH_TEST_FL_EXTERNAL_LB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Can't perform self-test when interface is down\0A\00", align 1
@LINK_STATUS_SERDES_LINK = common dso_local global i32 0, align 4
@NIG_REG_EGRESS_UMP0_IN_EN = common dso_local global i64 0, align 8
@UNLOAD_NORMAL = common dso_local global i32 0, align 4
@LOAD_DIAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Can't perform self-test, nic_load (for offline) failed\0A\00", align 1
@ETH_TEST_FL_EXTERNAL_LB_DONE = common dso_local global i32 0, align 4
@LOAD_NORMAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"Can't perform self-test, nic_load (for online) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @bnx2x_self_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_self_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %14)
  store %struct.bnx2x* %15, %struct.bnx2x** %7, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BNX2X_RECOVERY_DONE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %23 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @netdev_err(i32 %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %27 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %291

31:                                               ; preds = %3
  %32 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %33 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %37 = and i32 %35, %36
  %38 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETH_TEST_FL_EXTERNAL_LB, align 4
  %42 = and i32 %40, %41
  %43 = ashr i32 %42, 2
  %44 = call i32 (i32, i8*, ...) @DP(i32 %32, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %47 = call i32 @BNX2X_NUM_TESTS(%struct.bnx2x* %46)
  %48 = sext i32 %47 to i64
  %49 = mul i64 4, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memset(i32* %45, i32 0, i32 %50)
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = call i32 @netif_running(%struct.net_device* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %31
  %56 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %57 = call i32 (i32, i8*, ...) @DP(i32 %56, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %291

58:                                               ; preds = %31
  %59 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %60 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @LINK_STATUS_SERDES_LINK, align 4
  %64 = and i32 %62, %63
  %65 = icmp sgt i32 %64, 0
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %8, align 4
  %67 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %68 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %9, align 4
  %71 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %214

77:                                               ; preds = %58
  %78 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %79 = call i32 @IS_MF(%struct.bnx2x* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %214, label %81

81:                                               ; preds = %77
  %82 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %83 = call i32 @BP_PORT(%struct.bnx2x* %82)
  store i32 %83, i32* %12, align 4
  %84 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %85 = load i64, i64* @NIG_REG_EGRESS_UMP0_IN_EN, align 8
  %86 = load i32, i32* %12, align 4
  %87 = mul nsw i32 %86, 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %85, %88
  %90 = call i32 @REG_RD(%struct.bnx2x* %84, i64 %89)
  store i32 %90, i32* %13, align 4
  %91 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %92 = load i64, i64* @NIG_REG_EGRESS_UMP0_IN_EN, align 8
  %93 = load i32, i32* %12, align 4
  %94 = mul nsw i32 %93, 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %92, %95
  %97 = call i32 @REG_WR(%struct.bnx2x* %91, i64 %96, i32 0)
  %98 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %99 = load i32, i32* @UNLOAD_NORMAL, align 4
  %100 = call i32 @bnx2x_nic_unload(%struct.bnx2x* %98, i32 %99, i32 0)
  %101 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %102 = load i32, i32* @LOAD_DIAG, align 4
  %103 = call i32 @bnx2x_nic_load(%struct.bnx2x* %101, i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %81
  %107 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %108 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %109 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %113 = call i32 (i32, i8*, ...) @DP(i32 %112, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %291

114:                                              ; preds = %81
  %115 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @bnx2x_wait_for_link(%struct.bnx2x* %115, i32 1, i32 %116)
  %118 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %119 = call i64 @bnx2x_test_registers(%struct.bnx2x* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %114
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 1, i32* %123, align 4
  %124 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %125 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %126 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %121, %114
  %130 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %131 = call i64 @bnx2x_test_memory(%struct.bnx2x* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load i32*, i32** %6, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  store i32 1, i32* %135, align 4
  %136 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %137 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %138 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %133, %129
  %142 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %143 = call i32 @bnx2x_test_loopback(%struct.bnx2x* %142)
  %144 = load i32*, i32** %6, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  store i32 %143, i32* %145, align 4
  %146 = load i32*, i32** %6, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %141
  %151 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %152 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %153 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %150, %141
  %157 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %158 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @ETH_TEST_FL_EXTERNAL_LB, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %184

163:                                              ; preds = %156
  %164 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %165 = call i32 @bnx2x_test_ext_loopback(%struct.bnx2x* %164)
  %166 = load i32*, i32** %6, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 3
  store i32 %165, i32* %167, align 4
  %168 = load i32*, i32** %6, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 3
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %163
  %173 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %174 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %175 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %172, %163
  %179 = load i32, i32* @ETH_TEST_FL_EXTERNAL_LB_DONE, align 4
  %180 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %181 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %178, %156
  %185 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %186 = load i32, i32* @UNLOAD_NORMAL, align 4
  %187 = call i32 @bnx2x_nic_unload(%struct.bnx2x* %185, i32 %186, i32 0)
  %188 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %189 = load i64, i64* @NIG_REG_EGRESS_UMP0_IN_EN, align 8
  %190 = load i32, i32* %12, align 4
  %191 = mul nsw i32 %190, 4
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %189, %192
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @REG_WR(%struct.bnx2x* %188, i64 %193, i32 %194)
  %196 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %197 = load i32, i32* @LOAD_NORMAL, align 4
  %198 = call i32 @bnx2x_nic_load(%struct.bnx2x* %196, i32 %197)
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %184
  %202 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %203 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %204 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  %207 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %208 = call i32 (i32, i8*, ...) @DP(i32 %207, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %291

209:                                              ; preds = %184
  %210 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %8, align 4
  %213 = call i32 @bnx2x_wait_for_link(%struct.bnx2x* %210, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %209, %77, %58
  %215 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %216 = call i64 @bnx2x_test_nvram(%struct.bnx2x* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %234

218:                                              ; preds = %214
  %219 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %220 = call i32 @IS_MF(%struct.bnx2x* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %218
  %223 = load i32*, i32** %6, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 4
  store i32 1, i32* %224, align 4
  br label %228

225:                                              ; preds = %218
  %226 = load i32*, i32** %6, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  store i32 1, i32* %227, align 4
  br label %228

228:                                              ; preds = %225, %222
  %229 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %230 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %231 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %228, %214
  %235 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %236 = call i64 @bnx2x_test_intr(%struct.bnx2x* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %254

238:                                              ; preds = %234
  %239 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %240 = call i32 @IS_MF(%struct.bnx2x* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %238
  %243 = load i32*, i32** %6, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 5
  store i32 1, i32* %244, align 4
  br label %248

245:                                              ; preds = %238
  %246 = load i32*, i32** %6, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  store i32 1, i32* %247, align 4
  br label %248

248:                                              ; preds = %245, %242
  %249 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %250 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %251 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %248, %234
  %255 = load i32, i32* %9, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %272

257:                                              ; preds = %254
  store i32 100, i32* %11, align 4
  br label %258

258:                                              ; preds = %269, %257
  %259 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %260 = load i32, i32* %8, align 4
  %261 = call i64 @bnx2x_link_test(%struct.bnx2x* %259, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %258
  %264 = load i32, i32* %11, align 4
  %265 = add nsw i32 %264, -1
  store i32 %265, i32* %11, align 4
  %266 = icmp ne i32 %265, 0
  br label %267

267:                                              ; preds = %263, %258
  %268 = phi i1 [ false, %258 ], [ %266, %263 ]
  br i1 %268, label %269, label %271

269:                                              ; preds = %267
  %270 = call i32 @msleep(i32 20)
  br label %258

271:                                              ; preds = %267
  br label %272

272:                                              ; preds = %271, %254
  %273 = load i32, i32* %11, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %291, label %275

275:                                              ; preds = %272
  %276 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %277 = call i32 @IS_MF(%struct.bnx2x* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %275
  %280 = load i32*, i32** %6, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 6
  store i32 1, i32* %281, align 4
  br label %285

282:                                              ; preds = %275
  %283 = load i32*, i32** %6, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 2
  store i32 1, i32* %284, align 4
  br label %285

285:                                              ; preds = %282, %279
  %286 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %287 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %288 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %21, %55, %106, %201, %285, %272
  ret void
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @BNX2X_NUM_TESTS(%struct.bnx2x*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @IS_MF(%struct.bnx2x*) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @bnx2x_nic_unload(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_nic_load(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_wait_for_link(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @bnx2x_test_registers(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_test_memory(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_test_loopback(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_test_ext_loopback(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_test_nvram(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_test_intr(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_link_test(%struct.bnx2x*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
