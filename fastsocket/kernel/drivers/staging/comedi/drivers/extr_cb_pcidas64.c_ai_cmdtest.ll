; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i64, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@LAYOUT_4020 = common dso_local global i64 0, align 8
@TRIG_OTHER = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"all elements in chanlist must use the same analog reference\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"chanlist must use consecutive channels\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"chanlist cannot be 3 channels long, use 1, 2, or 4 channels\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @TRIG_NOW, align 4
  %20 = or i32 %19, 129
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %26 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %3
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %29
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @TRIG_TIMER, align 4
  store i32 %42, i32* %14, align 4
  %43 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %44 = call %struct.TYPE_2__* @board(%struct.comedi_device* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @LAYOUT_4020, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load i32, i32* @TRIG_OTHER, align 4
  %51 = load i32, i32* %14, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %14, align 4
  br label %57

53:                                               ; preds = %38
  %54 = load i32, i32* @TRIG_FOLLOW, align 4
  %55 = load i32, i32* %14, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %60 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %64 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %57
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %70 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67, %57
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %73, %67
  %77 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %78 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* @TRIG_TIMER, align 4
  store i32 %80, i32* %14, align 4
  %81 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %82 = call %struct.TYPE_2__* @board(%struct.comedi_device* %81)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @LAYOUT_4020, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %76
  %88 = load i32, i32* @TRIG_NOW, align 4
  %89 = load i32, i32* %14, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %14, align 4
  br label %94

91:                                               ; preds = %76
  %92 = load i32, i32* %14, align 4
  %93 = or i32 %92, 129
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %91, %87
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %97 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %101 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %94
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %107 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %105, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104, %94
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %110, %104
  %114 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %115 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %9, align 4
  %117 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %118 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 130
  store i32 %120, i32* %118, align 4
  %121 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %122 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %113
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %128 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125, %113
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %131, %125
  %135 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %136 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %9, align 4
  %138 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %139 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, 131
  store i32 %141, i32* %139, align 8
  %142 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %143 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %134
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %149 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %147, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %146, %134
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %152, %146
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 1, i32* %4, align 4
  br label %536

159:                                              ; preds = %155
  %160 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %161 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @TRIG_NOW, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %159
  %166 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %167 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 129
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %170, %165, %159
  %174 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %175 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @TRIG_TIMER, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %173
  %180 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %181 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @TRIG_OTHER, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %179
  %186 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %187 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @TRIG_FOLLOW, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %8, align 4
  br label %194

194:                                              ; preds = %191, %185, %179, %173
  %195 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %196 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @TRIG_TIMER, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %214

200:                                              ; preds = %194
  %201 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %202 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 129
  br i1 %204, label %205, label %214

205:                                              ; preds = %200
  %206 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %207 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @TRIG_NOW, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %205
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %8, align 4
  br label %214

214:                                              ; preds = %211, %205, %200, %194
  %215 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %216 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 130
  br i1 %218, label %219, label %232

219:                                              ; preds = %214
  %220 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %221 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 128
  br i1 %223, label %224, label %232

224:                                              ; preds = %219
  %225 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %226 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 129
  br i1 %228, label %229, label %232

229:                                              ; preds = %224
  %230 = load i32, i32* %8, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %8, align 4
  br label %232

232:                                              ; preds = %229, %224, %219, %214
  %233 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %234 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = icmp eq i32 %235, 129
  br i1 %236, label %237, label %246

237:                                              ; preds = %232
  %238 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %239 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @TRIG_TIMER, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %246

243:                                              ; preds = %237
  %244 = load i32, i32* %8, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %8, align 4
  br label %246

246:                                              ; preds = %243, %237, %232
  %247 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %248 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 130
  br i1 %250, label %251, label %264

251:                                              ; preds = %246
  %252 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %253 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 128
  br i1 %255, label %256, label %264

256:                                              ; preds = %251
  %257 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %258 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %259, 129
  br i1 %260, label %261, label %264

261:                                              ; preds = %256
  %262 = load i32, i32* %8, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %8, align 4
  br label %264

264:                                              ; preds = %261, %256, %251, %246
  %265 = load i32, i32* %8, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  store i32 2, i32* %4, align 4
  br label %536

268:                                              ; preds = %264
  %269 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %270 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @TRIG_TIMER, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %343

274:                                              ; preds = %268
  %275 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %276 = call %struct.TYPE_2__* @board(%struct.comedi_device* %275)
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @LAYOUT_4020, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %292

281:                                              ; preds = %274
  %282 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %283 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %281
  %287 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %288 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %287, i32 0, i32 5
  store i32 0, i32* %288, align 4
  %289 = load i32, i32* %8, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %8, align 4
  br label %291

291:                                              ; preds = %286, %281
  br label %342

292:                                              ; preds = %274
  %293 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %294 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %293, i32 0, i32 5
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %297 = call %struct.TYPE_2__* @board(%struct.comedi_device* %296)
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = icmp slt i32 %295, %299
  br i1 %300, label %301, label %310

301:                                              ; preds = %292
  %302 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %303 = call %struct.TYPE_2__* @board(%struct.comedi_device* %302)
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %307 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %306, i32 0, i32 5
  store i32 %305, i32* %307, align 4
  %308 = load i32, i32* %8, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %8, align 4
  br label %310

310:                                              ; preds = %301, %292
  %311 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %312 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @TRIG_TIMER, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %341

316:                                              ; preds = %310
  %317 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %318 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %321 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 8
  %323 = mul nsw i32 %319, %322
  %324 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %325 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %324, i32 0, i32 7
  %326 = load i32, i32* %325, align 4
  %327 = icmp sgt i32 %323, %326
  br i1 %327, label %328, label %340

328:                                              ; preds = %316
  %329 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %330 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %329, i32 0, i32 5
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %333 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %332, i32 0, i32 6
  %334 = load i32, i32* %333, align 8
  %335 = mul nsw i32 %331, %334
  %336 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %337 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %336, i32 0, i32 7
  store i32 %335, i32* %337, align 4
  %338 = load i32, i32* %8, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %8, align 4
  br label %340

340:                                              ; preds = %328, %316
  br label %341

341:                                              ; preds = %340, %310
  br label %342

342:                                              ; preds = %341, %291
  br label %343

343:                                              ; preds = %342, %268
  %344 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %345 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %344, i32 0, i32 6
  %346 = load i32, i32* %345, align 8
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %353, label %348

348:                                              ; preds = %343
  %349 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %350 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %349, i32 0, i32 6
  store i32 1, i32* %350, align 8
  %351 = load i32, i32* %8, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %8, align 4
  br label %353

353:                                              ; preds = %348, %343
  %354 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %355 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %354, i32 0, i32 8
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %358 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %357, i32 0, i32 6
  %359 = load i32, i32* %358, align 8
  %360 = icmp ne i32 %356, %359
  br i1 %360, label %361, label %369

361:                                              ; preds = %353
  %362 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %363 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %362, i32 0, i32 6
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %366 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %365, i32 0, i32 8
  store i32 %364, i32* %366, align 8
  %367 = load i32, i32* %8, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %8, align 4
  br label %369

369:                                              ; preds = %361, %353
  %370 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %371 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 8
  switch i32 %372, label %396 [
    i32 129, label %373
    i32 130, label %374
    i32 128, label %385
  ]

373:                                              ; preds = %369
  br label %397

374:                                              ; preds = %369
  %375 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %376 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %375, i32 0, i32 9
  %377 = load i32, i32* %376, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %384, label %379

379:                                              ; preds = %374
  %380 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %381 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %380, i32 0, i32 9
  store i32 1, i32* %381, align 4
  %382 = load i32, i32* %8, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %8, align 4
  br label %384

384:                                              ; preds = %379, %374
  br label %397

385:                                              ; preds = %369
  %386 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %387 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %386, i32 0, i32 9
  %388 = load i32, i32* %387, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %395

390:                                              ; preds = %385
  %391 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %392 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %391, i32 0, i32 9
  store i32 0, i32* %392, align 4
  %393 = load i32, i32* %8, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %8, align 4
  br label %395

395:                                              ; preds = %390, %385
  br label %397

396:                                              ; preds = %369
  br label %397

397:                                              ; preds = %396, %395, %384, %373
  %398 = load i32, i32* %8, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %397
  store i32 3, i32* %4, align 4
  br label %536

401:                                              ; preds = %397
  %402 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %403 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 8
  %405 = load i32, i32* @TRIG_TIMER, align 4
  %406 = icmp eq i32 %404, %405
  br i1 %406, label %407, label %435

407:                                              ; preds = %401
  %408 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %409 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %408, i32 0, i32 5
  %410 = load i32, i32* %409, align 4
  store i32 %410, i32* %10, align 4
  %411 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %412 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %411, i32 0, i32 7
  %413 = load i32, i32* %412, align 4
  store i32 %413, i32* %11, align 4
  %414 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %415 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %416 = call i32 @check_adc_timing(%struct.comedi_device* %414, %struct.comedi_cmd* %415)
  %417 = load i32, i32* %10, align 4
  %418 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %419 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %418, i32 0, i32 5
  %420 = load i32, i32* %419, align 4
  %421 = icmp ne i32 %417, %420
  br i1 %421, label %422, label %425

422:                                              ; preds = %407
  %423 = load i32, i32* %8, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %8, align 4
  br label %425

425:                                              ; preds = %422, %407
  %426 = load i32, i32* %11, align 4
  %427 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %428 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %427, i32 0, i32 7
  %429 = load i32, i32* %428, align 4
  %430 = icmp ne i32 %426, %429
  br i1 %430, label %431, label %434

431:                                              ; preds = %425
  %432 = load i32, i32* %8, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %8, align 4
  br label %434

434:                                              ; preds = %431, %425
  br label %435

435:                                              ; preds = %434, %401
  %436 = load i32, i32* %8, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %435
  store i32 4, i32* %4, align 4
  br label %536

439:                                              ; preds = %435
  %440 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %441 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %440, i32 0, i32 10
  %442 = load i32*, i32** %441, align 8
  %443 = icmp ne i32* %442, null
  br i1 %443, label %444, label %531

444:                                              ; preds = %439
  %445 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %446 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %445, i32 0, i32 10
  %447 = load i32*, i32** %446, align 8
  %448 = getelementptr inbounds i32, i32* %447, i64 0
  %449 = load i32, i32* %448, align 4
  %450 = call i32 @CR_AREF(i32 %449)
  store i32 %450, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %451

451:                                              ; preds = %474, %444
  %452 = load i32, i32* %12, align 4
  %453 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %454 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %453, i32 0, i32 6
  %455 = load i32, i32* %454, align 8
  %456 = icmp slt i32 %452, %455
  br i1 %456, label %457, label %477

457:                                              ; preds = %451
  %458 = load i32, i32* %13, align 4
  %459 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %460 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %459, i32 0, i32 10
  %461 = load i32*, i32** %460, align 8
  %462 = load i32, i32* %12, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %461, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = call i32 @CR_AREF(i32 %465)
  %467 = icmp ne i32 %458, %466
  br i1 %467, label %468, label %473

468:                                              ; preds = %457
  %469 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %470 = call i32 @comedi_error(%struct.comedi_device* %469, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %471 = load i32, i32* %8, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %8, align 4
  br label %477

473:                                              ; preds = %457
  br label %474

474:                                              ; preds = %473
  %475 = load i32, i32* %12, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %12, align 4
  br label %451

477:                                              ; preds = %468, %451
  %478 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %479 = call %struct.TYPE_2__* @board(%struct.comedi_device* %478)
  %480 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %479, i32 0, i32 0
  %481 = load i64, i64* %480, align 8
  %482 = load i64, i64* @LAYOUT_4020, align 8
  %483 = icmp eq i64 %481, %482
  br i1 %483, label %484, label %530

484:                                              ; preds = %477
  %485 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %486 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %485, i32 0, i32 10
  %487 = load i32*, i32** %486, align 8
  %488 = getelementptr inbounds i32, i32* %487, i64 0
  %489 = load i32, i32* %488, align 4
  %490 = call i32 @CR_CHAN(i32 %489)
  store i32 %490, i32* %15, align 4
  store i32 1, i32* %12, align 4
  br label %491

491:                                              ; preds = %516, %484
  %492 = load i32, i32* %12, align 4
  %493 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %494 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %493, i32 0, i32 6
  %495 = load i32, i32* %494, align 8
  %496 = icmp slt i32 %492, %495
  br i1 %496, label %497, label %519

497:                                              ; preds = %491
  %498 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %499 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %498, i32 0, i32 10
  %500 = load i32*, i32** %499, align 8
  %501 = load i32, i32* %12, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32, i32* %500, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = call i32 @CR_CHAN(i32 %504)
  %506 = load i32, i32* %15, align 4
  %507 = load i32, i32* %12, align 4
  %508 = add i32 %506, %507
  %509 = icmp ne i32 %505, %508
  br i1 %509, label %510, label %515

510:                                              ; preds = %497
  %511 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %512 = call i32 @comedi_error(%struct.comedi_device* %511, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %513 = load i32, i32* %8, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %8, align 4
  br label %519

515:                                              ; preds = %497
  br label %516

516:                                              ; preds = %515
  %517 = load i32, i32* %12, align 4
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* %12, align 4
  br label %491

519:                                              ; preds = %510, %491
  %520 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %521 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %520, i32 0, i32 6
  %522 = load i32, i32* %521, align 8
  %523 = icmp eq i32 %522, 3
  br i1 %523, label %524, label %529

524:                                              ; preds = %519
  %525 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %526 = call i32 @comedi_error(%struct.comedi_device* %525, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %527 = load i32, i32* %8, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %8, align 4
  br label %529

529:                                              ; preds = %524, %519
  br label %530

530:                                              ; preds = %529, %477
  br label %531

531:                                              ; preds = %530, %439
  %532 = load i32, i32* %8, align 4
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %535

534:                                              ; preds = %531
  store i32 5, i32* %4, align 4
  br label %536

535:                                              ; preds = %531
  store i32 0, i32* %4, align 4
  br label %536

536:                                              ; preds = %535, %534, %438, %400, %267, %158
  %537 = load i32, i32* %4, align 4
  ret i32 %537
}

declare dso_local %struct.TYPE_2__* @board(%struct.comedi_device*) #1

declare dso_local i32 @check_adc_timing(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @CR_CHAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
