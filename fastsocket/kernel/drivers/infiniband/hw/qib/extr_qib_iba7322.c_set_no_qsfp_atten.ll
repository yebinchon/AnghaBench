; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_set_no_qsfp_atten.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_set_no_qsfp_atten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i64, i64, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@txselect_list = common dso_local global i8* null, align 8
@TXDDS_TABLE_SZ = common dso_local global i32 0, align 4
@TXDDS_EXTRA_SZ = common dso_local global i32 0, align 4
@TXDDS_MFG_SZ = common dso_local global i64 0, align 8
@QLOGIC_IB_IBCC_LINKINITCMD_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*, i32)* @set_no_qsfp_atten to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_no_qsfp_atten(%struct.qib_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.qib_pportdata*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %13, align 4
  %17 = load i8*, i8** @txselect_list, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @simple_strtoul(i8* %18, i8** %5, i32 0)
  %20 = ptrtoint i8* %19 to i64
  store i64 %20, i64* %10, align 8
  store i64 0, i64* %7, align 8
  br label %21

21:                                               ; preds = %37, %2
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %24 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %30 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %29, i32 0, i32 2
  %31 = load %struct.qib_pportdata*, %struct.qib_pportdata** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %31, i64 %32
  %34 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i64 %28, i64* %36, align 8
  br label %37

37:                                               ; preds = %27
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  br label %21

40:                                               ; preds = %21
  %41 = load i32, i32* @TXDDS_TABLE_SZ, align 4
  %42 = load i32, i32* @TXDDS_EXTRA_SZ, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %15, align 4
  %44 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %45 = call i64 @IS_QME(%struct.qib_devdata* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %49 = call i64 @IS_QMH(%struct.qib_devdata* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47, %40
  %52 = load i64, i64* @TXDDS_MFG_SZ, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %51, %47
  br label %58

58:                                               ; preds = %276, %165, %159, %134, %104, %57
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br label %69

69:                                               ; preds = %63, %58
  %70 = phi i1 [ false, %58 ], [ %68, %63 ]
  br i1 %70, label %71, label %277

71:                                               ; preds = %69
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %5, align 8
  store i8* %73, i8** %6, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i8* @simple_strtoul(i8* %74, i8** %5, i32 0)
  %76 = ptrtoint i8* %75 to i64
  store i64 %76, i64* %8, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = icmp eq i8* %77, %78
  br i1 %79, label %89, label %80

80:                                               ; preds = %71
  %81 = load i8*, i8** %5, align 8
  %82 = load i8, i8* %81, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i8*, i8** %5, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 44
  br i1 %88, label %89, label %105

89:                                               ; preds = %84, %80, %71
  br label %90

90:                                               ; preds = %103, %89
  %91 = load i8*, i8** %5, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %5, align 8
  %98 = load i8, i8* %96, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 32
  br label %101

101:                                              ; preds = %95, %90
  %102 = phi i1 [ false, %90 ], [ %100, %95 ]
  br i1 %102, label %103, label %104

103:                                              ; preds = %101
  br label %90

104:                                              ; preds = %101
  br label %58

105:                                              ; preds = %84
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %5, align 8
  store i8* %107, i8** %6, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = call i8* @simple_strtoul(i8* %108, i8** %5, i32 0)
  %110 = ptrtoint i8* %109 to i64
  store i64 %110, i64* %9, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = icmp eq i8* %111, %112
  br i1 %113, label %119, label %114

114:                                              ; preds = %105
  %115 = load i8*, i8** %5, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 61
  br i1 %118, label %119, label %135

119:                                              ; preds = %114, %105
  br label %120

120:                                              ; preds = %133, %119
  %121 = load i8*, i8** %5, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %5, align 8
  %128 = load i8, i8* %126, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 32
  br label %131

131:                                              ; preds = %125, %120
  %132 = phi i1 [ false, %120 ], [ %130, %125 ]
  br i1 %132, label %133, label %134

133:                                              ; preds = %131
  br label %120

134:                                              ; preds = %131
  br label %58

135:                                              ; preds = %114
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %5, align 8
  store i8* %137, i8** %6, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = call i8* @simple_strtoul(i8* %138, i8** %5, i32 0)
  %140 = ptrtoint i8* %139 to i64
  store i64 %140, i64* %12, align 8
  %141 = load i8*, i8** %5, align 8
  %142 = load i8*, i8** %6, align 8
  %143 = icmp eq i8* %141, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %135
  br label %145

145:                                              ; preds = %158, %144
  %146 = load i8*, i8** %5, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load i8*, i8** %5, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %5, align 8
  %153 = load i8, i8* %151, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 32
  br label %156

156:                                              ; preds = %150, %145
  %157 = phi i1 [ false, %145 ], [ %155, %150 ]
  br i1 %157, label %158, label %159

158:                                              ; preds = %156
  br label %145

159:                                              ; preds = %156
  br label %58

160:                                              ; preds = %135
  %161 = load i64, i64* %12, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = icmp uge i64 %161, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %58

166:                                              ; preds = %160
  store i32 0, i32* %14, align 4
  store i64 0, i64* %11, align 8
  %167 = load i8*, i8** %5, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 44
  br i1 %170, label %171, label %204

171:                                              ; preds = %166
  %172 = load i8*, i8** %5, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %204

177:                                              ; preds = %171
  %178 = load i8*, i8** %5, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %5, align 8
  store i8* %179, i8** %6, align 8
  %180 = load i8*, i8** %6, align 8
  %181 = call i8* @simple_strtoul(i8* %180, i8** %5, i32 0)
  %182 = ptrtoint i8* %181 to i64
  store i64 %182, i64* %11, align 8
  %183 = load i8*, i8** %5, align 8
  %184 = load i8*, i8** %6, align 8
  %185 = icmp eq i8* %183, %184
  br i1 %185, label %186, label %202

186:                                              ; preds = %177
  br label %187

187:                                              ; preds = %200, %186
  %188 = load i8*, i8** %5, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load i8*, i8** %5, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %5, align 8
  %195 = load i8, i8* %193, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp ne i32 %196, 32
  br label %198

198:                                              ; preds = %192, %187
  %199 = phi i1 [ false, %187 ], [ %197, %192 ]
  br i1 %199, label %200, label %201

200:                                              ; preds = %198
  br label %187

201:                                              ; preds = %198
  br label %203

202:                                              ; preds = %177
  store i32 1, i32* %14, align 4
  br label %203

203:                                              ; preds = %202, %201
  br label %204

204:                                              ; preds = %203, %171, %166
  store i64 0, i64* %7, align 8
  br label %205

205:                                              ; preds = %267, %204
  %206 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %207 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* %8, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %205
  %212 = load i64, i64* %7, align 8
  %213 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %214 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp ult i64 %212, %215
  br label %217

217:                                              ; preds = %211, %205
  %218 = phi i1 [ false, %205 ], [ %216, %211 ]
  br i1 %218, label %219, label %270

219:                                              ; preds = %217
  %220 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %221 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %220, i32 0, i32 2
  %222 = load %struct.qib_pportdata*, %struct.qib_pportdata** %221, align 8
  %223 = load i64, i64* %7, align 8
  %224 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %222, i64 %223
  store %struct.qib_pportdata* %224, %struct.qib_pportdata** %16, align 8
  %225 = load %struct.qib_pportdata*, %struct.qib_pportdata** %16, align 8
  %226 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* %9, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %235, label %230

230:                                              ; preds = %219
  %231 = load %struct.qib_pportdata*, %struct.qib_pportdata** %16, align 8
  %232 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %230, %219
  br label %267

236:                                              ; preds = %230
  %237 = load i64, i64* %12, align 8
  %238 = load %struct.qib_pportdata*, %struct.qib_pportdata** %16, align 8
  %239 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %238, i32 0, i32 2
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 0
  store i64 %237, i64* %241, align 8
  %242 = load i32, i32* %14, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %236
  %245 = load i64, i64* %11, align 8
  %246 = load %struct.qib_pportdata*, %struct.qib_pportdata** %16, align 8
  %247 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %246, i32 0, i32 2
  %248 = load %struct.TYPE_2__*, %struct.TYPE_2__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 1
  store i64 %245, i64* %249, align 8
  br label %250

250:                                              ; preds = %244, %236
  %251 = load %struct.qib_pportdata*, %struct.qib_pportdata** %16, align 8
  %252 = call i32 @init_txdds_table(%struct.qib_pportdata* %251, i32 1)
  %253 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %254 = call i64 @IS_QMH(%struct.qib_devdata* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %250
  %257 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %258 = call i64 @IS_QME(%struct.qib_devdata* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %256, %250
  %261 = load %struct.qib_pportdata*, %struct.qib_pportdata** %16, align 8
  %262 = load i32, i32* @QLOGIC_IB_IBCC_LINKINITCMD_SLEEP, align 4
  %263 = call i32 @qib_set_ib_7322_lstate(%struct.qib_pportdata* %261, i32 0, i32 %262)
  br label %264

264:                                              ; preds = %260, %256
  %265 = load i32, i32* %13, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %13, align 4
  br label %267

267:                                              ; preds = %264, %235
  %268 = load i64, i64* %7, align 8
  %269 = add i64 %268, 1
  store i64 %269, i64* %7, align 8
  br label %205

270:                                              ; preds = %217
  %271 = load i8*, i8** %5, align 8
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp eq i32 %273, 10
  br i1 %274, label %275, label %276

275:                                              ; preds = %270
  br label %277

276:                                              ; preds = %270
  br label %58

277:                                              ; preds = %275, %69
  %278 = load i32, i32* %4, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %311

280:                                              ; preds = %277
  %281 = load i32, i32* %13, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %311, label %283

283:                                              ; preds = %280
  store i64 0, i64* %7, align 8
  br label %284

284:                                              ; preds = %307, %283
  %285 = load i64, i64* %7, align 8
  %286 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %287 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = icmp ult i64 %285, %288
  br i1 %289, label %290, label %310

290:                                              ; preds = %284
  %291 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %292 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %291, i32 0, i32 2
  %293 = load %struct.qib_pportdata*, %struct.qib_pportdata** %292, align 8
  %294 = load i64, i64* %7, align 8
  %295 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %293, i64 %294
  %296 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %290
  %300 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %301 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %300, i32 0, i32 2
  %302 = load %struct.qib_pportdata*, %struct.qib_pportdata** %301, align 8
  %303 = load i64, i64* %7, align 8
  %304 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %302, i64 %303
  %305 = call i32 @init_txdds_table(%struct.qib_pportdata* %304, i32 0)
  br label %306

306:                                              ; preds = %299, %290
  br label %307

307:                                              ; preds = %306
  %308 = load i64, i64* %7, align 8
  %309 = add i64 %308, 1
  store i64 %309, i64* %7, align 8
  br label %284

310:                                              ; preds = %284
  br label %311

311:                                              ; preds = %310, %280, %277
  ret void
}

declare dso_local i8* @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @IS_QME(%struct.qib_devdata*) #1

declare dso_local i64 @IS_QMH(%struct.qib_devdata*) #1

declare dso_local i32 @init_txdds_table(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @qib_set_ib_7322_lstate(%struct.qib_pportdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
