; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@this_board = common dso_local global %struct.TYPE_3__* null, align 8
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
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
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %13 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @TRIG_NOW, align 4
  %16 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %3
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %24
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @TRIG_FOLLOW, align 4
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %33
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %33
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %46
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @TRIG_TIMER, align 4
  %60 = load i32, i32* @TRIG_EXT, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %67 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %55
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70, %55
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %76, %70
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* @TRIG_COUNT, align 4
  %84 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %85 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %79
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %93, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92, %79
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %98, %92
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %103 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* @TRIG_COUNT, align 4
  %106 = load i32, i32* @TRIG_NONE, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %109 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %113 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %101
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %119 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %117, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116, %101
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %122, %116
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 1, i32* %4, align 4
  br label %394

129:                                              ; preds = %125
  %130 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %131 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @TRIG_NOW, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load i32, i32* @TRIG_NOW, align 4
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %135, %129
  %142 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %143 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @TRIG_FOLLOW, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load i32, i32* @TRIG_FOLLOW, align 4
  %149 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %150 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %147, %141
  %154 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %155 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @TRIG_TIMER, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %153
  %160 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %161 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @TRIG_EXT, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %168

168:                                              ; preds = %165, %159, %153
  %169 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %170 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @TRIG_COUNT, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %168
  %175 = load i32, i32* @TRIG_COUNT, align 4
  %176 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %177 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %180

180:                                              ; preds = %174, %168
  %181 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %182 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @TRIG_NONE, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %180
  %187 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %188 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @TRIG_COUNT, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %192, %186, %180
  %196 = load i32, i32* %8, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  store i32 2, i32* %4, align 4
  br label %394

199:                                              ; preds = %195
  %200 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %201 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %200, i32 0, i32 5
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %206 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %205, i32 0, i32 5
  store i64 0, i64* %206, align 8
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %8, align 4
  br label %209

209:                                              ; preds = %204, %199
  %210 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %211 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %210, i32 0, i32 6
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  %215 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %216 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %215, i32 0, i32 6
  store i64 0, i64* %216, align 8
  %217 = load i32, i32* %8, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %8, align 4
  br label %219

219:                                              ; preds = %214, %209
  %220 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %221 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @TRIG_TIMER, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %242

225:                                              ; preds = %219
  %226 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %227 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = icmp slt i32 %228, %231
  br i1 %232, label %233, label %241

233:                                              ; preds = %225
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %238 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %237, i32 0, i32 7
  store i32 %236, i32* %238, align 8
  %239 = load i32, i32* %8, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %8, align 4
  br label %241

241:                                              ; preds = %233, %225
  br label %253

242:                                              ; preds = %219
  %243 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %244 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %243, i32 0, i32 7
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %242
  %248 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %249 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %248, i32 0, i32 7
  store i32 0, i32* %249, align 8
  %250 = load i32, i32* %8, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %8, align 4
  br label %252

252:                                              ; preds = %247, %242
  br label %253

253:                                              ; preds = %252, %241
  %254 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %255 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %254, i32 0, i32 8
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %263, label %258

258:                                              ; preds = %253
  %259 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %260 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %259, i32 0, i32 8
  store i32 1, i32* %260, align 4
  %261 = load i32, i32* %8, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %8, align 4
  br label %263

263:                                              ; preds = %258, %253
  %264 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %265 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %264, i32 0, i32 8
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %268 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = icmp sgt i32 %266, %269
  br i1 %270, label %271, label %279

271:                                              ; preds = %263
  %272 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %273 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %276 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %275, i32 0, i32 8
  store i32 %274, i32* %276, align 4
  %277 = load i32, i32* %8, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %8, align 4
  br label %279

279:                                              ; preds = %271, %263
  %280 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %281 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %280, i32 0, i32 9
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %284 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %283, i32 0, i32 8
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %282, %285
  br i1 %286, label %287, label %295

287:                                              ; preds = %279
  %288 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %289 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %288, i32 0, i32 8
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %292 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %291, i32 0, i32 9
  store i32 %290, i32* %292, align 8
  %293 = load i32, i32* %8, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %8, align 4
  br label %295

295:                                              ; preds = %287, %279
  %296 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %297 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @TRIG_COUNT, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %312

301:                                              ; preds = %295
  %302 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %303 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %302, i32 0, i32 10
  %304 = load i32, i32* %303, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %311, label %306

306:                                              ; preds = %301
  %307 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %308 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %307, i32 0, i32 10
  store i32 1, i32* %308, align 4
  %309 = load i32, i32* %8, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %8, align 4
  br label %311

311:                                              ; preds = %306, %301
  br label %323

312:                                              ; preds = %295
  %313 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %314 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %313, i32 0, i32 10
  %315 = load i32, i32* %314, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %312
  %318 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %319 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %318, i32 0, i32 10
  store i32 0, i32* %319, align 4
  %320 = load i32, i32* %8, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %8, align 4
  br label %322

322:                                              ; preds = %317, %312
  br label %323

323:                                              ; preds = %322, %311
  %324 = load i32, i32* %8, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %323
  store i32 3, i32* %4, align 4
  br label %394

327:                                              ; preds = %323
  %328 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %329 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @TRIG_TIMER, align 4
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %333, label %371

333:                                              ; preds = %327
  %334 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %335 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %334, i32 0, i32 7
  %336 = load i32, i32* %335, align 8
  store i32 %336, i32* %9, align 4
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %341 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %340, i32 0, i32 7
  %342 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %343 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %342, i32 0, i32 11
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %346 = and i32 %344, %345
  %347 = call i32 @i8253_cascade_ns_to_timer(i32 %339, i32* %10, i32* %11, i32* %341, i32 %346)
  %348 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %349 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %348, i32 0, i32 7
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = icmp slt i32 %350, %353
  br i1 %354, label %355, label %361

355:                                              ; preds = %333
  %356 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %360 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %359, i32 0, i32 7
  store i32 %358, i32* %360, align 8
  br label %361

361:                                              ; preds = %355, %333
  %362 = load i32, i32* %9, align 4
  %363 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %364 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %363, i32 0, i32 7
  %365 = load i32, i32* %364, align 8
  %366 = icmp ne i32 %362, %365
  br i1 %366, label %367, label %370

367:                                              ; preds = %361
  %368 = load i32, i32* %8, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %8, align 4
  br label %370

370:                                              ; preds = %367, %361
  br label %371

371:                                              ; preds = %370, %327
  %372 = load i32, i32* %8, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %371
  store i32 4, i32* %4, align 4
  br label %394

375:                                              ; preds = %371
  %376 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %377 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %376, i32 0, i32 12
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %393

380:                                              ; preds = %375
  %381 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %382 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %383 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %384 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %383, i32 0, i32 12
  %385 = load i64, i64* %384, align 8
  %386 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %387 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %386, i32 0, i32 8
  %388 = load i32, i32* %387, align 4
  %389 = call i32 @check_channel_list(%struct.comedi_device* %381, %struct.comedi_subdevice* %382, i64 %385, i32 %388)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %392, label %391

391:                                              ; preds = %380
  store i32 5, i32* %4, align 4
  br label %394

392:                                              ; preds = %380
  br label %393

393:                                              ; preds = %392, %375
  store i32 0, i32* %4, align 4
  br label %394

394:                                              ; preds = %393, %391, %374, %326, %198, %128
  %395 = load i32, i32* %4, align 4
  ret i32 %395
}

declare dso_local i32 @i8253_cascade_ns_to_timer(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @check_channel_list(%struct.comedi_device*, %struct.comedi_subdevice*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
