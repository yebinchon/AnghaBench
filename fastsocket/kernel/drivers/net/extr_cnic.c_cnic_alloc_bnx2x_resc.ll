; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_alloc_bnx2x_resc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_alloc_bnx2x_resc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i64, i32, %struct.cnic_local* }
%struct.cnic_local = type { i32, i32, i32, %struct.cnic_eth_dev*, i32, %struct.cnic_dma, i32, i32, %struct.TYPE_5__*, i32*, i8*, i8*, %struct.cnic_dma }
%struct.cnic_eth_dev = type { i32, i32, %struct.TYPE_6__*, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.cnic_dma = type { i64*, i64* }
%struct.bnx2x = type { i32 }

@MAX_ISCSI_TBL_SZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CNIC_ULP_ISCSI = common dso_local global i32 0, align 4
@CNIC_ULP_FCOE = common dso_local global i32 0, align 4
@CNIC_KWQ16_DATA_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BNX2X_ISCSI_GLB_BUF_SIZE = common dso_local global i32 0, align 4
@CNIC_DRV_STATE_NO_ISCSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*)* @cnic_alloc_bnx2x_resc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_alloc_bnx2x_resc(%struct.cnic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.cnic_eth_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cnic_dma*, align 8
  %14 = alloca i64, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  %15 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %16 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %15, i32 0, i32 2
  %17 = load %struct.cnic_local*, %struct.cnic_local** %16, align 8
  store %struct.cnic_local* %17, %struct.cnic_local** %4, align 8
  %18 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %19 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.bnx2x* @netdev_priv(i32 %20)
  store %struct.bnx2x* %21, %struct.bnx2x** %5, align 8
  %22 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %23 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %22, i32 0, i32 3
  %24 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %23, align 8
  store %struct.cnic_eth_dev* %24, %struct.cnic_eth_dev** %6, align 8
  %25 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %6, align 8
  %26 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %25, i32 0, i32 3
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %7, align 8
  %28 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %29 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %28, i32 0, i32 12
  store %struct.cnic_dma* %29, %struct.cnic_dma** %13, align 8
  %30 = load i32, i32* @MAX_ISCSI_TBL_SZ, align 4
  %31 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %32 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %35 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %34, i32 0, i32 11
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @MAX_ISCSI_TBL_SZ, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr i8, i8* %36, i64 %38
  %40 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %41 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %40, i32 0, i32 10
  store i8* %39, i8** %41, align 8
  %42 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %43 = call i64 @BNX2X_CHIP_IS_E2_PLUS(%struct.bnx2x* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %1
  %46 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %47 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %50 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 8
  %55 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %6, align 8
  %56 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %59 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %61 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %45
  %65 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %66 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %65, i32 0, i32 1
  store i32 16, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %45
  br label %68

68:                                               ; preds = %67, %1
  %69 = load i32, i32* @MAX_ISCSI_TBL_SZ, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 4, %70
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i8* @kzalloc(i32 %72, i32 %73)
  %75 = bitcast i8* %74 to i32*
  %76 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %77 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %76, i32 0, i32 9
  store i32* %75, i32** %77, align 8
  %78 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %79 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %78, i32 0, i32 9
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %68
  br label %306

83:                                               ; preds = %68
  %84 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %85 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = mul i64 4, %87
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i8* @kzalloc(i32 %89, i32 %90)
  %92 = bitcast i8* %91 to %struct.TYPE_5__*
  %93 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %94 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %93, i32 0, i32 8
  store %struct.TYPE_5__* %92, %struct.TYPE_5__** %94, align 8
  %95 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %96 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %95, i32 0, i32 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = icmp ne %struct.TYPE_5__* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %83
  br label %306

100:                                              ; preds = %83
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %128, %100
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @MAX_ISCSI_TBL_SZ, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %131

105:                                              ; preds = %101
  %106 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %107 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %106, i32 0, i32 9
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %113 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %112, i32 0, i32 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32* %111, i32** %119, align 8
  %120 = load i32, i32* @CNIC_ULP_ISCSI, align 4
  %121 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %122 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %121, i32 0, i32 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  store i32 %120, i32* %127, align 8
  br label %128

128:                                              ; preds = %105
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %101

131:                                              ; preds = %101
  %132 = load i32, i32* @MAX_ISCSI_TBL_SZ, align 4
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %148, %131
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %136 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %133
  %140 = load i32, i32* @CNIC_ULP_FCOE, align 4
  %141 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %142 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %141, i32 0, i32 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  store i32 %140, i32* %147, align 8
  br label %148

148:                                              ; preds = %139
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %133

151:                                              ; preds = %133
  %152 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %153 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @CNIC_KWQ16_DATA_SIZE, align 4
  %156 = mul nsw i32 %154, %155
  %157 = call i32 @PAGE_ALIGN(i32 %156)
  %158 = load i32, i32* @PAGE_SIZE, align 4
  %159 = sdiv i32 %157, %158
  store i32 %159, i32* %12, align 4
  %160 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %161 = load %struct.cnic_dma*, %struct.cnic_dma** %13, align 8
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @cnic_alloc_dma(%struct.cnic_dev* %160, %struct.cnic_dma* %161, i32 %162, i32 0)
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %151
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %2, align 4
  br label %311

169:                                              ; preds = %151
  %170 = load i32, i32* @PAGE_SIZE, align 4
  %171 = load i32, i32* @CNIC_KWQ16_DATA_SIZE, align 4
  %172 = sdiv i32 %170, %171
  store i32 %172, i32* %10, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %173

173:                                              ; preds = %228, %169
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %176 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %231

179:                                              ; preds = %173
  %180 = load i32, i32* @CNIC_KWQ16_DATA_SIZE, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %10, align 4
  %183 = srem i32 %181, %182
  %184 = mul nsw i32 %180, %183
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %14, align 8
  %186 = load %struct.cnic_dma*, %struct.cnic_dma** %13, align 8
  %187 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %186, i32 0, i32 1
  %188 = load i64*, i64** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %14, align 8
  %194 = add nsw i64 %192, %193
  %195 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %196 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %195, i32 0, i32 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  store i64 %194, i64* %201, align 8
  %202 = load %struct.cnic_dma*, %struct.cnic_dma** %13, align 8
  %203 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %202, i32 0, i32 0
  %204 = load i64*, i64** %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* %14, align 8
  %210 = add nsw i64 %208, %209
  %211 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %212 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %211, i32 0, i32 8
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %212, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  store i64 %210, i64* %217, align 8
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* %10, align 4
  %220 = srem i32 %218, %219
  %221 = load i32, i32* %10, align 4
  %222 = sub nsw i32 %221, 1
  %223 = icmp eq i32 %220, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %179
  %225 = load i32, i32* %9, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %9, align 4
  br label %227

227:                                              ; preds = %224, %179
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  br label %173

231:                                              ; preds = %173
  %232 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %233 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %234 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %233, i32 0, i32 7
  %235 = call i32 @cnic_alloc_kcq(%struct.cnic_dev* %232, i32* %234, i32 0)
  store i32 %235, i32* %11, align 4
  %236 = load i32, i32* %11, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %231
  br label %306

239:                                              ; preds = %231
  %240 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %241 = call i64 @CNIC_SUPPORTS_FCOE(%struct.bnx2x* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %252

243:                                              ; preds = %239
  %244 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %245 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %246 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %245, i32 0, i32 6
  %247 = call i32 @cnic_alloc_kcq(%struct.cnic_dev* %244, i32* %246, i32 1)
  store i32 %247, i32* %11, align 4
  %248 = load i32, i32* %11, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %243
  br label %306

251:                                              ; preds = %243
  br label %252

252:                                              ; preds = %251, %239
  %253 = load i32, i32* @BNX2X_ISCSI_GLB_BUF_SIZE, align 4
  %254 = call i32 @PAGE_ALIGN(i32 %253)
  %255 = load i32, i32* @PAGE_SIZE, align 4
  %256 = sdiv i32 %254, %255
  store i32 %256, i32* %12, align 4
  %257 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %258 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %259 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %258, i32 0, i32 5
  %260 = load i32, i32* %12, align 4
  %261 = call i32 @cnic_alloc_dma(%struct.cnic_dev* %257, %struct.cnic_dma* %259, i32 %260, i32 0)
  store i32 %261, i32* %11, align 4
  %262 = load i32, i32* %11, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %252
  br label %306

265:                                              ; preds = %252
  %266 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %267 = call i32 @cnic_alloc_bnx2x_context(%struct.cnic_dev* %266)
  store i32 %267, i32* %11, align 4
  %268 = load i32, i32* %11, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %265
  br label %306

271:                                              ; preds = %265
  %272 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %273 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %272, i32 0, i32 3
  %274 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %273, align 8
  %275 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @CNIC_DRV_STATE_NO_ISCSI, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %271
  store i32 0, i32* %2, align 4
  br label %311

281:                                              ; preds = %271
  %282 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %283 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %282, i32 0, i32 3
  %284 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %283, align 8
  %285 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %284, i32 0, i32 2
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i64 1
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %291 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %290, i32 0, i32 4
  store i32 %289, i32* %291, align 8
  %292 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %293 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %292, i32 0, i32 2
  store i32 15, i32* %293, align 8
  %294 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %295 = call i32 @cnic_alloc_uio_rings(%struct.cnic_dev* %294, i32 4)
  store i32 %295, i32* %11, align 4
  %296 = load i32, i32* %11, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %281
  br label %306

299:                                              ; preds = %281
  %300 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %301 = call i32 @cnic_init_uio(%struct.cnic_dev* %300)
  store i32 %301, i32* %11, align 4
  %302 = load i32, i32* %11, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %299
  br label %306

305:                                              ; preds = %299
  store i32 0, i32* %2, align 4
  br label %311

306:                                              ; preds = %304, %298, %270, %264, %250, %238, %99, %82
  %307 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %308 = call i32 @cnic_free_resc(%struct.cnic_dev* %307)
  %309 = load i32, i32* @ENOMEM, align 4
  %310 = sub nsw i32 0, %309
  store i32 %310, i32* %2, align 4
  br label %311

311:                                              ; preds = %306, %305, %280, %166
  %312 = load i32, i32* %2, align 4
  ret i32 %312
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i64 @BNX2X_CHIP_IS_E2_PLUS(%struct.bnx2x*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @cnic_alloc_dma(%struct.cnic_dev*, %struct.cnic_dma*, i32, i32) #1

declare dso_local i32 @cnic_alloc_kcq(%struct.cnic_dev*, i32*, i32) #1

declare dso_local i64 @CNIC_SUPPORTS_FCOE(%struct.bnx2x*) #1

declare dso_local i32 @cnic_alloc_bnx2x_context(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_alloc_uio_rings(%struct.cnic_dev*, i32) #1

declare dso_local i32 @cnic_init_uio(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_free_resc(%struct.cnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
