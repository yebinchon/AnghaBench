; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_clear_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_clear_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_device = type { i32, i64*, i64, i32, i64 }
%struct.hifn_dma = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [69 x i8] c"%s: ring cleanup 1: i: %d.%d.%d.%d, u: %d.%d.%d.%d, k: %d.%d.%d.%d.\0A\00", align 1
@HIFN_D_VALID = common dso_local global i32 0, align 4
@HIFN_D_RES_RSIZE = common dso_local global i32 0, align 4
@HIFN_D_SRC_RSIZE = common dso_local global i32 0, align 4
@HIFN_D_CMD_RSIZE = common dso_local global i32 0, align 4
@HIFN_D_DST_RSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"%s: ring cleanup 2: i: %d.%d.%d.%d, u: %d.%d.%d.%d, k: %d.%d.%d.%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hifn_device*, i32)* @hifn_clear_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hifn_clear_rings(%struct.hifn_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hifn_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hifn_dma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hifn_device* %0, %struct.hifn_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %9 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.hifn_dma*
  store %struct.hifn_dma* %11, %struct.hifn_dma** %5, align 8
  %12 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %13 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %16 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %19 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %22 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %25 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %28 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %31 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %34 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %37 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %40 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %43 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %46 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %49 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dprintk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50)
  %52 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %53 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %6, align 4
  %55 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %56 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %109, %2
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %112

61:                                               ; preds = %58
  %62 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %63 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %62, i32 0, i32 15
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @HIFN_D_VALID, align 4
  %71 = call i32 @__cpu_to_le32(i32 %70)
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %112

75:                                               ; preds = %61
  %76 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %77 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %75
  %85 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %86 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %90 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %92 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @hifn_process_ready(i64 %97, i32 %98)
  %100 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @hifn_complete_sa(%struct.hifn_device* %100, i32 %101)
  br label %103

103:                                              ; preds = %84, %75
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* @HIFN_D_RES_RSIZE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %108, %103
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %7, align 4
  br label %58

112:                                              ; preds = %74, %58
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %115 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %118 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %120 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %6, align 4
  %122 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %123 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %148, %112
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %151

128:                                              ; preds = %125
  %129 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %130 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %129, i32 0, i32 14
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @HIFN_D_VALID, align 4
  %138 = call i32 @__cpu_to_le32(i32 %137)
  %139 = and i32 %136, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %128
  br label %151

142:                                              ; preds = %128
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* @HIFN_D_SRC_RSIZE, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  store i32 0, i32* %6, align 4
  br label %148

148:                                              ; preds = %147, %142
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %7, align 4
  br label %125

151:                                              ; preds = %141, %125
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %154 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %157 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %159 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %6, align 4
  %161 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %162 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %187, %151
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %190

167:                                              ; preds = %164
  %168 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %169 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %168, i32 0, i32 13
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @HIFN_D_VALID, align 4
  %177 = call i32 @__cpu_to_le32(i32 %176)
  %178 = and i32 %175, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %167
  br label %190

181:                                              ; preds = %167
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* @HIFN_D_CMD_RSIZE, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  store i32 0, i32* %6, align 4
  br label %187

187:                                              ; preds = %186, %181
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %7, align 4
  br label %164

190:                                              ; preds = %180, %164
  %191 = load i32, i32* %6, align 4
  %192 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %193 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %192, i32 0, i32 4
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* %7, align 4
  %195 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %196 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %198 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  store i32 %199, i32* %6, align 4
  %200 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %201 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  store i32 %202, i32* %7, align 4
  br label %203

203:                                              ; preds = %226, %190
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %229

206:                                              ; preds = %203
  %207 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %208 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %207, i32 0, i32 12
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %208, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @HIFN_D_VALID, align 4
  %216 = call i32 @__cpu_to_le32(i32 %215)
  %217 = and i32 %214, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %206
  br label %229

220:                                              ; preds = %206
  %221 = load i32, i32* %6, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* @HIFN_D_DST_RSIZE, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  store i32 0, i32* %6, align 4
  br label %226

226:                                              ; preds = %225, %220
  %227 = load i32, i32* %7, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %7, align 4
  br label %203

229:                                              ; preds = %219, %203
  %230 = load i32, i32* %6, align 4
  %231 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %232 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %231, i32 0, i32 6
  store i32 %230, i32* %232, align 8
  %233 = load i32, i32* %7, align 4
  %234 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %235 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 8
  %236 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %237 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %240 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %239, i32 0, i32 11
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %243 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %242, i32 0, i32 10
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %246 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %245, i32 0, i32 9
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %249 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %248, i32 0, i32 8
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %252 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %255 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %258 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %261 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %264 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %267 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %270 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %269, i32 0, i32 6
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %273 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %272, i32 0, i32 7
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @dprintk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %238, i32 %241, i32 %244, i32 %247, i32 %250, i32 %253, i32 %256, i32 %259, i32 %262, i32 %265, i32 %268, i32 %271, i32 %274)
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @hifn_process_ready(i64, i32) #1

declare dso_local i32 @hifn_complete_sa(%struct.hifn_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
