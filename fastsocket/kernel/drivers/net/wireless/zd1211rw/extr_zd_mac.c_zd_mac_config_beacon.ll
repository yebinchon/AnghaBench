; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_mac.c_zd_mac_config_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_mac.c_zd_mac_config_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.zd_mac = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.sk_buff* }
%struct.zd_ioreq32 = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CR_BCN_FIFO_SEMAPHORE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"CR_BCN_FIFO_SEMAPHORE not ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Giving up beacon config.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@CR_BCN_FIFO = common dso_local global i8* null, align 8
@CR_BCN_LENGTH = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Could not release CR_BCN_FIFO_SEMAPHORE!\0A\00", align 1
@CR_BCN_PLCP_CFG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"CR_BCN_FIFO_SEMAPHORE stuck, reseting device...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.sk_buff*, i32)* @zd_mac_config_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd_mac_config_beacon(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.zd_mac*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.zd_ioreq32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %20 = call %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw* %19)
  store %struct.zd_mac* %20, %struct.zd_mac** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 4
  store i32 %24, i32* %15, align 4
  %25 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %26 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i64 @zd_mac_match_cur_beacon(%struct.zd_mac* %29, %struct.sk_buff* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %293

34:                                               ; preds = %3
  %35 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %36 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %35, i32 0, i32 0
  %37 = call i32 @zd_chip_is_zd1211b(%struct.TYPE_9__* %36)
  %38 = add nsw i32 1, %37
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 16
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.zd_ioreq32* @kmalloc(i32 %44, i32 %45)
  store %struct.zd_ioreq32* %46, %struct.zd_ioreq32** %18, align 8
  %47 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %48 = icmp ne %struct.zd_ioreq32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %34
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %293

52:                                               ; preds = %34
  %53 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %54 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %53, i32 0, i32 0
  %55 = load i32, i32* @CR_BCN_FIFO_SEMAPHORE, align 4
  %56 = call i32 @zd_iowrite32_locked(%struct.TYPE_9__* %54, i32 0, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %290

60:                                               ; preds = %52
  %61 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %62 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %61, i32 0, i32 0
  %63 = load i32, i32* @CR_BCN_FIFO_SEMAPHORE, align 4
  %64 = call i32 @zd_ioread32_locked(%struct.TYPE_9__* %62, i32* %13, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %226

68:                                               ; preds = %60
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %13, align 4
  %73 = and i32 %72, 2
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @EBUSY, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  br label %226

78:                                               ; preds = %71, %68
  %79 = load i32, i32* @jiffies, align 4
  %80 = load i32, i32* @HZ, align 4
  %81 = sdiv i32 %80, 2
  %82 = add nsw i32 %79, %81
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %16, align 8
  %84 = load i32, i32* @jiffies, align 4
  %85 = load i32, i32* @HZ, align 4
  %86 = sdiv i32 %85, 10
  %87 = add nsw i32 %84, %86
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %17, align 8
  br label %89

89:                                               ; preds = %124, %78
  %90 = load i32, i32* %13, align 4
  %91 = and i32 %90, 2
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %126

93:                                               ; preds = %89
  %94 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %95 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %94, i32 0, i32 0
  %96 = load i32, i32* @CR_BCN_FIFO_SEMAPHORE, align 4
  %97 = call i32 @zd_ioread32_locked(%struct.TYPE_9__* %95, i32* %13, i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %226

101:                                              ; preds = %93
  %102 = load i64, i64* %17, align 8
  %103 = call i64 @time_is_before_eq_jiffies(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %101
  %106 = load i32, i32* @jiffies, align 4
  %107 = load i32, i32* @HZ, align 4
  %108 = sdiv i32 %107, 10
  %109 = add nsw i32 %106, %108
  %110 = sext i32 %109 to i64
  store i64 %110, i64* %17, align 8
  %111 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %112 = call i32 @zd_mac_dev(%struct.zd_mac* %111)
  %113 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %114 = load i64, i64* %16, align 8
  %115 = call i64 @time_is_before_eq_jiffies(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %105
  %118 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %119 = call i32 @zd_mac_dev(%struct.zd_mac* %118)
  %120 = call i32 @dev_err(i32 %119, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i32, i32* @ETIMEDOUT, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %9, align 4
  br label %301

123:                                              ; preds = %105
  br label %124

124:                                              ; preds = %123, %101
  %125 = call i32 @msleep(i32 20)
  br label %89

126:                                              ; preds = %89
  %127 = load i8*, i8** @CR_BCN_FIFO, align 8
  %128 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %128, i64 %130
  %132 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %131, i32 0, i32 1
  store i8* %127, i8** %132, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sub nsw i32 %133, 1
  %135 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %135, i64 %137
  %139 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %138, i32 0, i32 0
  store i32 %134, i32* %139, align 8
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  %142 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %143 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %142, i32 0, i32 0
  %144 = call i32 @zd_chip_is_zd1211b(%struct.TYPE_9__* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %126
  %147 = load i8*, i8** @CR_BCN_LENGTH, align 8
  %148 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %148, i64 %150
  %152 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %151, i32 0, i32 1
  store i8* %147, i8** %152, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sub nsw i32 %153, 1
  %155 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %155, i64 %157
  %159 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %158, i32 0, i32 0
  store i32 %154, i32* %159, align 8
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  br label %162

162:                                              ; preds = %146, %126
  store i32 0, i32* %14, align 4
  br label %163

163:                                              ; preds = %191, %162
  %164 = load i32, i32* %14, align 4
  %165 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %194

169:                                              ; preds = %163
  %170 = load i8*, i8** @CR_BCN_FIFO, align 8
  %171 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %171, i64 %173
  %175 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %174, i32 0, i32 1
  store i8* %170, i8** %175, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %177 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %178, %180
  %182 = inttoptr i64 %181 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %184, i64 %186
  %188 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %187, i32 0, i32 0
  store i32 %183, i32* %188, align 8
  %189 = load i32, i32* %12, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %12, align 4
  br label %191

191:                                              ; preds = %169
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %14, align 4
  br label %163

194:                                              ; preds = %163
  store i32 0, i32* %14, align 4
  br label %195

195:                                              ; preds = %212, %194
  %196 = load i32, i32* %14, align 4
  %197 = icmp slt i32 %196, 4
  br i1 %197, label %198, label %215

198:                                              ; preds = %195
  %199 = load i8*, i8** @CR_BCN_FIFO, align 8
  %200 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %200, i64 %202
  %204 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %203, i32 0, i32 1
  store i8* %199, i8** %204, align 8
  %205 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %205, i64 %207
  %209 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %208, i32 0, i32 0
  store i32 0, i32* %209, align 8
  %210 = load i32, i32* %12, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %12, align 4
  br label %212

212:                                              ; preds = %198
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %14, align 4
  br label %195

215:                                              ; preds = %195
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %11, align 4
  %218 = icmp ne i32 %216, %217
  %219 = zext i1 %218 to i32
  %220 = call i32 @BUG_ON(i32 %219)
  %221 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %222 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %221, i32 0, i32 0
  %223 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %224 = load i32, i32* %11, align 4
  %225 = call i32 @zd_iowrite32a_locked(%struct.TYPE_9__* %222, %struct.zd_ioreq32* %223, i32 %224)
  store i32 %225, i32* %9, align 4
  br label %226

226:                                              ; preds = %215, %100, %75, %67
  %227 = load i32, i32* @jiffies, align 4
  %228 = load i32, i32* @HZ, align 4
  %229 = sdiv i32 %228, 2
  %230 = add nsw i32 %227, %229
  %231 = sext i32 %230 to i64
  store i64 %231, i64* %16, align 8
  %232 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %233 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %232, i32 0, i32 0
  %234 = load i32, i32* @CR_BCN_FIFO_SEMAPHORE, align 4
  %235 = call i32 @zd_iowrite32_locked(%struct.TYPE_9__* %233, i32 1, i32 %234)
  store i32 %235, i32* %10, align 4
  br label %236

236:                                              ; preds = %249, %226
  %237 = load i32, i32* %10, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %255

239:                                              ; preds = %236
  %240 = load i32, i32* %7, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %246, label %242

242:                                              ; preds = %239
  %243 = load i64, i64* %16, align 8
  %244 = call i64 @time_is_before_eq_jiffies(i64 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %242, %239
  %247 = load i32, i32* @ETIMEDOUT, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %10, align 4
  br label %255

249:                                              ; preds = %242
  %250 = call i32 @msleep(i32 20)
  %251 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %252 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %251, i32 0, i32 0
  %253 = load i32, i32* @CR_BCN_FIFO_SEMAPHORE, align 4
  %254 = call i32 @zd_iowrite32_locked(%struct.TYPE_9__* %252, i32 1, i32 %253)
  store i32 %254, i32* %10, align 4
  br label %236

255:                                              ; preds = %246, %236
  %256 = load i32, i32* %10, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %255
  %259 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %260 = call i32 @zd_mac_dev(%struct.zd_mac* %259)
  %261 = call i32 @dev_err(i32 %260, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %262

262:                                              ; preds = %258, %255
  %263 = load i32, i32* %9, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %262
  %266 = load i32, i32* %10, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %276

268:                                              ; preds = %265, %262
  %269 = load i32, i32* %9, align 4
  %270 = icmp sge i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = load i32, i32* %10, align 4
  store i32 %272, i32* %9, align 4
  br label %273

273:                                              ; preds = %271, %268
  %274 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %275 = call i32 @zd_mac_free_cur_beacon_locked(%struct.zd_mac* %274)
  br label %290

276:                                              ; preds = %265
  %277 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %278 = call i32 @zd_mac_free_cur_beacon_locked(%struct.zd_mac* %277)
  %279 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %280 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %281 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 0
  store %struct.sk_buff* %279, %struct.sk_buff** %282, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %283 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %284 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %283, i32 0, i32 0
  %285 = load i32, i32* %15, align 4
  %286 = shl i32 %285, 19
  %287 = or i32 1024, %286
  %288 = load i32, i32* @CR_BCN_PLCP_CFG, align 4
  %289 = call i32 @zd_iowrite32_locked(%struct.TYPE_9__* %284, i32 %287, i32 %288)
  store i32 %289, i32* %9, align 4
  br label %290

290:                                              ; preds = %276, %273, %59
  %291 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %292 = call i32 @kfree(%struct.zd_ioreq32* %291)
  br label %293

293:                                              ; preds = %290, %49, %33
  %294 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %295 = call i32 @kfree_skb(%struct.sk_buff* %294)
  %296 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %297 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 1
  %299 = call i32 @mutex_unlock(i32* %298)
  %300 = load i32, i32* %9, align 4
  store i32 %300, i32* %4, align 4
  br label %322

301:                                              ; preds = %117
  %302 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %303 = call i32 @zd_mac_free_cur_beacon_locked(%struct.zd_mac* %302)
  %304 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %305 = call i32 @kfree_skb(%struct.sk_buff* %304)
  %306 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %307 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 1
  %309 = call i32 @mutex_unlock(i32* %308)
  %310 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %311 = call i32 @kfree(%struct.zd_ioreq32* %310)
  %312 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %313 = call i32 @zd_mac_dev(%struct.zd_mac* %312)
  %314 = call i32 @dev_warn(i32 %313, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %315 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %316 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @usb_queue_reset_device(i32 %319)
  %321 = load i32, i32* %9, align 4
  store i32 %321, i32* %4, align 4
  br label %322

322:                                              ; preds = %301, %293
  %323 = load i32, i32* %4, align 4
  ret i32 %323
}

declare dso_local %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @zd_mac_match_cur_beacon(%struct.zd_mac*, %struct.sk_buff*) #1

declare dso_local i32 @zd_chip_is_zd1211b(%struct.TYPE_9__*) #1

declare dso_local %struct.zd_ioreq32* @kmalloc(i32, i32) #1

declare dso_local i32 @zd_iowrite32_locked(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @zd_ioread32_locked(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i64 @time_is_before_eq_jiffies(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @zd_mac_dev(%struct.zd_mac*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @zd_iowrite32a_locked(%struct.TYPE_9__*, %struct.zd_ioreq32*, i32) #1

declare dso_local i32 @zd_mac_free_cur_beacon_locked(%struct.zd_mac*) #1

declare dso_local i32 @kfree(%struct.zd_ioreq32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @usb_queue_reset_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
