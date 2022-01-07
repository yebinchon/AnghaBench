; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_update_fw_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_update_fw_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32*, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@ql_dbg_init = common dso_local global i64 0, align 8
@ql_dbg_buffer = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Serial link options.\0A\00", align 1
@FO1_SET_EMPHASIS_SWING = common dso_local global i32 0, align 4
@BIT_2 = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@BIT_4 = common dso_local global i32 0, align 4
@BIT_3 = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@BIT_6 = common dso_local global i32 0, align 4
@BIT_5 = common dso_local global i32 0, align 4
@BIT_13 = common dso_local global i32 0, align 4
@BIT_12 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_update_fw_options(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %7, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %12 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @memset(i32* %13, i32 0, i32 8)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @qla2x00_get_fw_options(%struct.TYPE_9__* %15, i32* %18)
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %21 = call i64 @IS_QLA2100(%struct.qla_hw_data* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %25 = call i64 @IS_QLA2200(%struct.qla_hw_data* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %1
  br label %333

28:                                               ; preds = %23
  %29 = load i64, i64* @ql_dbg_init, align 8
  %30 = load i64, i64* @ql_dbg_buffer, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = call i32 @ql_dbg(i64 %31, %struct.TYPE_9__* %32, i32 277, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = load i64, i64* @ql_dbg_init, align 8
  %35 = load i64, i64* @ql_dbg_buffer, align 8
  %36 = add nsw i64 %34, %35
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %39 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %38, i32 0, i32 1
  %40 = bitcast i32** %39 to i32*
  %41 = call i32 @ql_dump_buffer(i64 %36, %struct.TYPE_9__* %37, i32 265, i32* %40, i32 8)
  %42 = load i32, i32* @FO1_SET_EMPHASIS_SWING, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %45 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %43
  store i32 %49, i32* %47, align 4
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %51 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @BIT_2, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %294

58:                                               ; preds = %28
  %59 = load i32, i32* @FO1_SET_EMPHASIS_SWING, align 4
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %61 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %59
  store i32 %65, i32* %63, align 4
  %66 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %67 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @BIT_2, align 4
  %72 = load i32, i32* @BIT_1, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @BIT_0, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %70, %75
  store i32 %76, i32* %3, align 4
  %77 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %78 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @BIT_4, align 4
  %83 = load i32, i32* @BIT_3, align 4
  %84 = or i32 %82, %83
  %85 = and i32 %81, %84
  %86 = ashr i32 %85, 3
  store i32 %86, i32* %4, align 4
  %87 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %88 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @BIT_3, align 4
  %93 = load i32, i32* @BIT_2, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @BIT_1, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @BIT_0, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %91, %98
  store i32 %99, i32* %5, align 4
  %100 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %101 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @BIT_7, align 4
  %106 = load i32, i32* @BIT_6, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @BIT_5, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @BIT_4, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %104, %111
  %113 = ashr i32 %112, 4
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %4, align 4
  %115 = shl i32 %114, 14
  %116 = load i32, i32* %3, align 4
  %117 = shl i32 %116, 8
  %118 = or i32 %115, %117
  %119 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %120 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 10
  store i32 %118, i32* %122, align 4
  %123 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %124 = call i64 @IS_QLA2300(%struct.qla_hw_data* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %58
  %127 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %128 = call i64 @IS_QLA2312(%struct.qla_hw_data* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %132 = call i64 @IS_QLA6312(%struct.qla_hw_data* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %130, %126, %58
  %135 = load i32, i32* %6, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 3, i32* %6, align 4
  br label %138

138:                                              ; preds = %137, %134
  %139 = load i32, i32* %5, align 4
  %140 = shl i32 %139, 4
  %141 = load i32, i32* %6, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %144 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 10
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %142
  store i32 %148, i32* %146, align 4
  br label %179

149:                                              ; preds = %130
  %150 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %151 = call i64 @IS_QLA2322(%struct.qla_hw_data* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %155 = call i64 @IS_QLA6322(%struct.qla_hw_data* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %178

157:                                              ; preds = %153, %149
  %158 = load i32, i32* @BIT_5, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @BIT_1, align 4
  %161 = load i32, i32* @BIT_0, align 4
  %162 = or i32 %160, %161
  %163 = and i32 %159, %162
  %164 = shl i32 %163, 2
  %165 = or i32 %158, %164
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @BIT_1, align 4
  %168 = load i32, i32* @BIT_0, align 4
  %169 = or i32 %167, %168
  %170 = and i32 %166, %169
  %171 = or i32 %165, %170
  %172 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %173 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 10
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %171
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %157, %153
  br label %179

179:                                              ; preds = %178, %138
  %180 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %181 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @BIT_7, align 4
  %186 = load i32, i32* @BIT_6, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @BIT_5, align 4
  %189 = or i32 %187, %188
  %190 = and i32 %184, %189
  %191 = ashr i32 %190, 5
  store i32 %191, i32* %3, align 4
  %192 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %193 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 3
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @BIT_1, align 4
  %198 = load i32, i32* @BIT_0, align 4
  %199 = or i32 %197, %198
  %200 = and i32 %196, %199
  store i32 %200, i32* %4, align 4
  %201 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %202 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @BIT_3, align 4
  %207 = load i32, i32* @BIT_2, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @BIT_1, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @BIT_0, align 4
  %212 = or i32 %210, %211
  %213 = and i32 %205, %212
  store i32 %213, i32* %5, align 4
  %214 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %215 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @BIT_7, align 4
  %220 = load i32, i32* @BIT_6, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @BIT_5, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @BIT_4, align 4
  %225 = or i32 %223, %224
  %226 = and i32 %218, %225
  %227 = ashr i32 %226, 4
  store i32 %227, i32* %6, align 4
  %228 = load i32, i32* %4, align 4
  %229 = shl i32 %228, 14
  %230 = load i32, i32* %3, align 4
  %231 = shl i32 %230, 8
  %232 = or i32 %229, %231
  %233 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %234 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 11
  store i32 %232, i32* %236, align 4
  %237 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %238 = call i64 @IS_QLA2300(%struct.qla_hw_data* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %248, label %240

240:                                              ; preds = %179
  %241 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %242 = call i64 @IS_QLA2312(%struct.qla_hw_data* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %248, label %244

244:                                              ; preds = %240
  %245 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %246 = call i64 @IS_QLA6312(%struct.qla_hw_data* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %263

248:                                              ; preds = %244, %240, %179
  %249 = load i32, i32* %6, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %248
  store i32 3, i32* %6, align 4
  br label %252

252:                                              ; preds = %251, %248
  %253 = load i32, i32* %5, align 4
  %254 = shl i32 %253, 4
  %255 = load i32, i32* %6, align 4
  %256 = or i32 %254, %255
  %257 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %258 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 11
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %256
  store i32 %262, i32* %260, align 4
  br label %293

263:                                              ; preds = %244
  %264 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %265 = call i64 @IS_QLA2322(%struct.qla_hw_data* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %271, label %267

267:                                              ; preds = %263
  %268 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %269 = call i64 @IS_QLA6322(%struct.qla_hw_data* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %292

271:                                              ; preds = %267, %263
  %272 = load i32, i32* @BIT_5, align 4
  %273 = load i32, i32* %6, align 4
  %274 = load i32, i32* @BIT_1, align 4
  %275 = load i32, i32* @BIT_0, align 4
  %276 = or i32 %274, %275
  %277 = and i32 %273, %276
  %278 = shl i32 %277, 2
  %279 = or i32 %272, %278
  %280 = load i32, i32* %5, align 4
  %281 = load i32, i32* @BIT_1, align 4
  %282 = load i32, i32* @BIT_0, align 4
  %283 = or i32 %281, %282
  %284 = and i32 %280, %283
  %285 = or i32 %279, %284
  %286 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %287 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 11
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %290, %285
  store i32 %291, i32* %289, align 4
  br label %292

292:                                              ; preds = %271, %267
  br label %293

293:                                              ; preds = %292, %252
  br label %294

294:                                              ; preds = %293, %28
  %295 = load i32, i32* @BIT_13, align 4
  %296 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %297 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 3
  %300 = load i32, i32* %299, align 4
  %301 = or i32 %300, %295
  store i32 %301, i32* %299, align 4
  %302 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %303 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %294
  %308 = load i32, i32* @BIT_12, align 4
  %309 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %310 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 2
  %313 = load i32, i32* %312, align 4
  %314 = or i32 %313, %308
  store i32 %314, i32* %312, align 4
  br label %315

315:                                              ; preds = %307, %294
  %316 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %317 = call i64 @IS_QLA6312(%struct.qla_hw_data* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %315
  %320 = load i32, i32* @BIT_13, align 4
  %321 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %322 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 2
  %325 = load i32, i32* %324, align 4
  %326 = or i32 %325, %320
  store i32 %326, i32* %324, align 4
  br label %327

327:                                              ; preds = %319, %315
  %328 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %329 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %330 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = call i32 @qla2x00_set_fw_options(%struct.TYPE_9__* %328, i32* %331)
  br label %333

333:                                              ; preds = %327, %27
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @qla2x00_get_fw_options(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @IS_QLA2100(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2200(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i64, %struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.TYPE_9__*, i32, i32*, i32) #1

declare dso_local i64 @IS_QLA2300(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2312(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA6312(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2322(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA6322(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_set_fw_options(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
