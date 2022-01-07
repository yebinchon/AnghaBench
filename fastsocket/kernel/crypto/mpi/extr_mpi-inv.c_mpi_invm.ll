; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-inv.c_mpi_invm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-inv.c_mpi_invm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpi_invm(%struct.TYPE_23__* %0, %struct.TYPE_23__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %11, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %13, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %15, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %16, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %17, align 8
  store i32 0, i32* %20, align 4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %21, align 4
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %25 = call i64 @mpi_copy(%struct.TYPE_23__** %7, %struct.TYPE_23__* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %382

28:                                               ; preds = %3
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %30 = call i64 @mpi_copy(%struct.TYPE_23__** %8, %struct.TYPE_23__* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %382

33:                                               ; preds = %28
  store i32 0, i32* %18, align 4
  br label %34

34:                                               ; preds = %58, %33
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %36 = call i32 @mpi_test_bit(%struct.TYPE_23__* %35, i32 0)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %40 = call i32 @mpi_test_bit(%struct.TYPE_23__* %39, i32 0)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %38, %34
  %44 = phi i1 [ false, %34 ], [ %42, %38 ]
  br i1 %44, label %45, label %61

45:                                               ; preds = %43
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %48 = call i64 @mpi_rshift(%struct.TYPE_23__* %46, %struct.TYPE_23__* %47, i32 1)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %382

51:                                               ; preds = %45
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %54 = call i64 @mpi_rshift(%struct.TYPE_23__* %52, %struct.TYPE_23__* %53, i32 1)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %382

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %18, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %18, align 4
  br label %34

61:                                               ; preds = %43
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %63 = call i32 @mpi_test_bit(%struct.TYPE_23__* %62, i32 0)
  store i32 %63, i32* %20, align 4
  %64 = call %struct.TYPE_23__* @mpi_alloc_set_ui(i32 1)
  store %struct.TYPE_23__* %64, %struct.TYPE_23__** %9, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %66 = icmp ne %struct.TYPE_23__* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  br label %382

68:                                               ; preds = %61
  %69 = load i32, i32* %20, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = call %struct.TYPE_23__* @mpi_alloc_set_ui(i32 0)
  store %struct.TYPE_23__* %72, %struct.TYPE_23__** %10, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %74 = icmp ne %struct.TYPE_23__* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  br label %382

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %68
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %79 = call i64 @mpi_copy(%struct.TYPE_23__** %11, %struct.TYPE_23__* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %382

82:                                               ; preds = %77
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %84 = call i64 @mpi_copy(%struct.TYPE_23__** %12, %struct.TYPE_23__* %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %382

87:                                               ; preds = %82
  %88 = load i32, i32* %20, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %92 = call i32 @mpi_get_nlimbs(%struct.TYPE_23__* %91)
  %93 = call %struct.TYPE_23__* @mpi_alloc(i32 %92)
  store %struct.TYPE_23__* %93, %struct.TYPE_23__** %13, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %95 = icmp ne %struct.TYPE_23__* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  br label %382

97:                                               ; preds = %90
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %101 = call i64 @mpi_sub(%struct.TYPE_23__* %98, %struct.TYPE_23__* %99, %struct.TYPE_23__* %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %382

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104, %87
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %107 = call i64 @mpi_copy(%struct.TYPE_23__** %14, %struct.TYPE_23__* %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %382

110:                                              ; preds = %105
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %112 = call i32 @mpi_test_bit(%struct.TYPE_23__* %111, i32 0)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %144

114:                                              ; preds = %110
  %115 = call %struct.TYPE_23__* @mpi_alloc_set_ui(i32 0)
  store %struct.TYPE_23__* %115, %struct.TYPE_23__** %15, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %117 = icmp ne %struct.TYPE_23__* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  br label %382

119:                                              ; preds = %114
  %120 = load i32, i32* %20, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %119
  %123 = call %struct.TYPE_23__* @mpi_alloc_set_ui(i32 1)
  store %struct.TYPE_23__* %123, %struct.TYPE_23__** %16, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %125 = icmp ne %struct.TYPE_23__* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  br label %382

127:                                              ; preds = %122
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 0
  store i32 1, i32* %129, align 4
  br label %130

130:                                              ; preds = %127, %119
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %132 = call i64 @mpi_copy(%struct.TYPE_23__** %17, %struct.TYPE_23__* %131)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %382

135:                                              ; preds = %130
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  br label %237

144:                                              ; preds = %110
  %145 = call %struct.TYPE_23__* @mpi_alloc_set_ui(i32 1)
  store %struct.TYPE_23__* %145, %struct.TYPE_23__** %15, align 8
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %147 = icmp ne %struct.TYPE_23__* %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  br label %382

149:                                              ; preds = %144
  %150 = load i32, i32* %20, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %149
  %153 = call %struct.TYPE_23__* @mpi_alloc_set_ui(i32 0)
  store %struct.TYPE_23__* %153, %struct.TYPE_23__** %16, align 8
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %155 = icmp ne %struct.TYPE_23__* %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %152
  br label %382

157:                                              ; preds = %152
  br label %158

158:                                              ; preds = %157, %149
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %160 = call i64 @mpi_copy(%struct.TYPE_23__** %17, %struct.TYPE_23__* %159)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %382

163:                                              ; preds = %158
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %374, %164
  br label %166

166:                                              ; preds = %238, %165
  %167 = load i32, i32* %20, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %211, label %169

169:                                              ; preds = %166
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %171 = call i32 @mpi_test_bit(%struct.TYPE_23__* %170, i32 0)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %175 = call i32 @mpi_test_bit(%struct.TYPE_23__* %174, i32 0)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %173, %169
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %181 = call i64 @mpi_add(%struct.TYPE_23__* %178, %struct.TYPE_23__* %179, %struct.TYPE_23__* %180)
  %182 = icmp slt i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %382

184:                                              ; preds = %177
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %188 = call i64 @mpi_sub(%struct.TYPE_23__* %185, %struct.TYPE_23__* %186, %struct.TYPE_23__* %187)
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %382

191:                                              ; preds = %184
  br label %192

192:                                              ; preds = %191, %173
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %195 = call i64 @mpi_rshift(%struct.TYPE_23__* %193, %struct.TYPE_23__* %194, i32 1)
  %196 = icmp slt i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %382

198:                                              ; preds = %192
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %201 = call i64 @mpi_rshift(%struct.TYPE_23__* %199, %struct.TYPE_23__* %200, i32 1)
  %202 = icmp slt i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %382

204:                                              ; preds = %198
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %207 = call i64 @mpi_rshift(%struct.TYPE_23__* %205, %struct.TYPE_23__* %206, i32 1)
  %208 = icmp slt i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  br label %382

210:                                              ; preds = %204
  br label %236

211:                                              ; preds = %166
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %213 = call i32 @mpi_test_bit(%struct.TYPE_23__* %212, i32 0)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %211
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %219 = call i64 @mpi_add(%struct.TYPE_23__* %216, %struct.TYPE_23__* %217, %struct.TYPE_23__* %218)
  %220 = icmp slt i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  br label %382

222:                                              ; preds = %215
  br label %223

223:                                              ; preds = %222, %211
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %226 = call i64 @mpi_rshift(%struct.TYPE_23__* %224, %struct.TYPE_23__* %225, i32 1)
  %227 = icmp slt i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %223
  br label %382

229:                                              ; preds = %223
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %232 = call i64 @mpi_rshift(%struct.TYPE_23__* %230, %struct.TYPE_23__* %231, i32 1)
  %233 = icmp slt i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  br label %382

235:                                              ; preds = %229
  br label %236

236:                                              ; preds = %235, %210
  br label %237

237:                                              ; preds = %236, %135
  br label %238

238:                                              ; preds = %237
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %240 = call i32 @mpi_test_bit(%struct.TYPE_23__* %239, i32 0)
  %241 = icmp ne i32 %240, 0
  %242 = xor i1 %241, true
  br i1 %242, label %166, label %243

243:                                              ; preds = %238
  %244 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %271, label %248

248:                                              ; preds = %243
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %251 = call i32 @mpi_set(%struct.TYPE_23__* %249, %struct.TYPE_23__* %250)
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  br label %382

254:                                              ; preds = %248
  %255 = load i32, i32* %20, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %264, label %257

257:                                              ; preds = %254
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %260 = call i32 @mpi_set(%struct.TYPE_23__* %258, %struct.TYPE_23__* %259)
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %257
  br label %382

263:                                              ; preds = %257
  br label %264

264:                                              ; preds = %263, %254
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %267 = call i32 @mpi_set(%struct.TYPE_23__* %265, %struct.TYPE_23__* %266)
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %264
  br label %382

270:                                              ; preds = %264
  br label %324

271:                                              ; preds = %243
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %273 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %275 = call i64 @mpi_sub(%struct.TYPE_23__* %272, %struct.TYPE_23__* %273, %struct.TYPE_23__* %274)
  %276 = icmp slt i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %271
  br label %382

278:                                              ; preds = %271
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %19, align 4
  %282 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 0
  %286 = xor i1 %285, true
  %287 = zext i1 %286 to i32
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 0
  store i32 %287, i32* %289, align 4
  %290 = load i32, i32* %20, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %300, label %292

292:                                              ; preds = %278
  %293 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %296 = call i64 @mpi_sub(%struct.TYPE_23__* %293, %struct.TYPE_23__* %294, %struct.TYPE_23__* %295)
  %297 = icmp slt i64 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %292
  br label %382

299:                                              ; preds = %292
  br label %300

300:                                              ; preds = %299, %278
  %301 = load i32, i32* %19, align 4
  %302 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %302, i32 0, i32 0
  store i32 %301, i32* %303, align 4
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %19, align 4
  %307 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %308 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %309, 0
  %311 = xor i1 %310, true
  %312 = zext i1 %311 to i32
  %313 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %314 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %313, i32 0, i32 0
  store i32 %312, i32* %314, align 4
  %315 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %316 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %317 = call i32 @mpi_set(%struct.TYPE_23__* %315, %struct.TYPE_23__* %316)
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %300
  br label %382

320:                                              ; preds = %300
  %321 = load i32, i32* %19, align 4
  %322 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %323 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %322, i32 0, i32 0
  store i32 %321, i32* %323, align 4
  br label %324

324:                                              ; preds = %320, %270
  %325 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %326 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %327 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %328 = call i64 @mpi_sub(%struct.TYPE_23__* %325, %struct.TYPE_23__* %326, %struct.TYPE_23__* %327)
  %329 = icmp slt i64 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %324
  br label %382

331:                                              ; preds = %324
  %332 = load i32, i32* %20, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %342, label %334

334:                                              ; preds = %331
  %335 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %336 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %338 = call i64 @mpi_sub(%struct.TYPE_23__* %335, %struct.TYPE_23__* %336, %struct.TYPE_23__* %337)
  %339 = icmp slt i64 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %334
  br label %382

341:                                              ; preds = %334
  br label %342

342:                                              ; preds = %341, %331
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %344 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %345 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %346 = call i64 @mpi_sub(%struct.TYPE_23__* %343, %struct.TYPE_23__* %344, %struct.TYPE_23__* %345)
  %347 = icmp slt i64 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %342
  br label %382

349:                                              ; preds = %342
  %350 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %351 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %373

354:                                              ; preds = %349
  %355 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %356 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %357 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %358 = call i64 @mpi_add(%struct.TYPE_23__* %355, %struct.TYPE_23__* %356, %struct.TYPE_23__* %357)
  %359 = icmp slt i64 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %354
  br label %382

361:                                              ; preds = %354
  %362 = load i32, i32* %20, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %372, label %364

364:                                              ; preds = %361
  %365 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %366 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %367 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %368 = call i64 @mpi_sub(%struct.TYPE_23__* %365, %struct.TYPE_23__* %366, %struct.TYPE_23__* %367)
  %369 = icmp slt i64 %368, 0
  br i1 %369, label %370, label %371

370:                                              ; preds = %364
  br label %382

371:                                              ; preds = %364
  br label %372

372:                                              ; preds = %371, %361
  br label %373

373:                                              ; preds = %372, %349
  br label %374

374:                                              ; preds = %373
  %375 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %376 = call i64 @mpi_cmp_ui(%struct.TYPE_23__* %375, i32 0)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %165, label %378

378:                                              ; preds = %374
  %379 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %380 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %381 = call i32 @mpi_set(%struct.TYPE_23__* %379, %struct.TYPE_23__* %380)
  store i32 %381, i32* %21, align 4
  br label %382

382:                                              ; preds = %378, %370, %360, %348, %340, %330, %319, %298, %277, %269, %262, %253, %234, %228, %221, %209, %203, %197, %190, %183, %162, %156, %148, %134, %126, %118, %109, %103, %96, %86, %81, %75, %67, %56, %50, %32, %27
  %383 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %384 = call i32 @mpi_free(%struct.TYPE_23__* %383)
  %385 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %386 = call i32 @mpi_free(%struct.TYPE_23__* %385)
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %388 = call i32 @mpi_free(%struct.TYPE_23__* %387)
  %389 = load i32, i32* %20, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %398, label %391

391:                                              ; preds = %382
  %392 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %393 = call i32 @mpi_free(%struct.TYPE_23__* %392)
  %394 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %395 = call i32 @mpi_free(%struct.TYPE_23__* %394)
  %396 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %397 = call i32 @mpi_free(%struct.TYPE_23__* %396)
  br label %398

398:                                              ; preds = %391, %382
  %399 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %400 = call i32 @mpi_free(%struct.TYPE_23__* %399)
  %401 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %402 = call i32 @mpi_free(%struct.TYPE_23__* %401)
  %403 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %404 = call i32 @mpi_free(%struct.TYPE_23__* %403)
  %405 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %406 = call i32 @mpi_free(%struct.TYPE_23__* %405)
  %407 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %408 = call i32 @mpi_free(%struct.TYPE_23__* %407)
  %409 = load i32, i32* %21, align 4
  ret i32 %409
}

declare dso_local i64 @mpi_copy(%struct.TYPE_23__**, %struct.TYPE_23__*) #1

declare dso_local i32 @mpi_test_bit(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @mpi_rshift(%struct.TYPE_23__*, %struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_23__* @mpi_alloc_set_ui(i32) #1

declare dso_local %struct.TYPE_23__* @mpi_alloc(i32) #1

declare dso_local i32 @mpi_get_nlimbs(%struct.TYPE_23__*) #1

declare dso_local i64 @mpi_sub(%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i64 @mpi_add(%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @mpi_set(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i64 @mpi_cmp_ui(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @mpi_free(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
