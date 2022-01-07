; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32*, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@thisboard = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [68 x i8] c"entries in chanlist must be consecutive channels, counting upwards\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"length 2 chanlist must be channels 0,1 or channels 2,3\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"chanlist must have 1,2 or 4 channels\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"channels 0/1 and 2/3 must have the same analog reference\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @a2150_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2150_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
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
  %16 = load i32, i32* @TRIG_EXT, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %3
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @TRIG_TIMER, align 4
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %45 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %35
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %51 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %35
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %48
  %58 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %59 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* @TRIG_NOW, align 4
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

70:                                               ; preds = %57
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70, %57
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
  br label %391

129:                                              ; preds = %125
  %130 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %131 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @TRIG_NOW, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %129
  %136 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %137 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @TRIG_EXT, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %141, %135, %129
  %145 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %146 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @TRIG_COUNT, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %144
  %151 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %152 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @TRIG_NONE, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %156, %150, %144
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  store i32 2, i32* %4, align 4
  br label %391

163:                                              ; preds = %159
  %164 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %165 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %170 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %169, i32 0, i32 5
  store i64 0, i64* %170, align 8
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %168, %163
  %174 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %175 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @TRIG_TIMER, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %196

179:                                              ; preds = %173
  %180 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %181 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %180, i32 0, i32 6
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** @thisboard, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp slt i64 %182, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %179
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** @thisboard, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %192 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %191, i32 0, i32 6
  store i64 %190, i64* %192, align 8
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %187, %179
  br label %196

196:                                              ; preds = %195, %173
  %197 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %198 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %196
  %202 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %203 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %202, i32 0, i32 7
  store i32 1, i32* %203, align 8
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %8, align 4
  br label %206

206:                                              ; preds = %201, %196
  %207 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %208 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %207, i32 0, i32 8
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %211 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %210, i32 0, i32 7
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %209, %212
  br i1 %213, label %214, label %222

214:                                              ; preds = %206
  %215 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %216 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %219 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %218, i32 0, i32 8
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  br label %222

222:                                              ; preds = %214, %206
  %223 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %224 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @TRIG_COUNT, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %239

228:                                              ; preds = %222
  %229 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %230 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %229, i32 0, i32 9
  %231 = load i32, i32* %230, align 8
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %228
  %234 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %235 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %234, i32 0, i32 9
  store i32 1, i32* %235, align 8
  %236 = load i32, i32* %8, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %8, align 4
  br label %238

238:                                              ; preds = %233, %228
  br label %250

239:                                              ; preds = %222
  %240 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %241 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %240, i32 0, i32 9
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %239
  %245 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %246 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %245, i32 0, i32 9
  store i32 0, i32* %246, align 8
  %247 = load i32, i32* %8, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %8, align 4
  br label %249

249:                                              ; preds = %244, %239
  br label %250

250:                                              ; preds = %249, %238
  %251 = load i32, i32* %8, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %250
  store i32 3, i32* %4, align 4
  br label %391

254:                                              ; preds = %250
  %255 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %256 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @TRIG_TIMER, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %280

260:                                              ; preds = %254
  %261 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %262 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %261, i32 0, i32 10
  %263 = load i32, i32* %262, align 4
  store i32 %263, i32* %9, align 4
  %264 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %265 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %266 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %265, i32 0, i32 10
  %267 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %268 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %267, i32 0, i32 12
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @a2150_get_timing(%struct.comedi_device* %264, i32* %266, i32 %269)
  %271 = load i32, i32* %9, align 4
  %272 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %273 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %272, i32 0, i32 10
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %271, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %260
  %277 = load i32, i32* %8, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %8, align 4
  br label %279

279:                                              ; preds = %276, %260
  br label %280

280:                                              ; preds = %279, %254
  %281 = load i32, i32* %8, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %280
  store i32 4, i32* %4, align 4
  br label %391

284:                                              ; preds = %280
  %285 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %286 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %285, i32 0, i32 11
  %287 = load i32*, i32** %286, align 8
  %288 = icmp ne i32* %287, null
  br i1 %288, label %289, label %386

289:                                              ; preds = %284
  %290 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %291 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %290, i32 0, i32 11
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @CR_CHAN(i32 %294)
  store i32 %295, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %296

296:                                              ; preds = %321, %289
  %297 = load i32, i32* %11, align 4
  %298 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %299 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %298, i32 0, i32 7
  %300 = load i32, i32* %299, align 8
  %301 = icmp slt i32 %297, %300
  br i1 %301, label %302, label %324

302:                                              ; preds = %296
  %303 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %304 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %303, i32 0, i32 11
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %11, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @CR_CHAN(i32 %309)
  %311 = load i32, i32* %10, align 4
  %312 = load i32, i32* %11, align 4
  %313 = add nsw i32 %311, %312
  %314 = icmp ne i32 %310, %313
  br i1 %314, label %315, label %320

315:                                              ; preds = %302
  %316 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %317 = call i32 @comedi_error(%struct.comedi_device* %316, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %318 = load i32, i32* %8, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %8, align 4
  br label %320

320:                                              ; preds = %315, %302
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %11, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %11, align 4
  br label %296

324:                                              ; preds = %296
  %325 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %326 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %325, i32 0, i32 7
  %327 = load i32, i32* %326, align 8
  %328 = icmp eq i32 %327, 2
  br i1 %328, label %329, label %342

329:                                              ; preds = %324
  %330 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %331 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %330, i32 0, i32 11
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 0
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @CR_CHAN(i32 %334)
  %336 = icmp eq i32 %335, 1
  br i1 %336, label %337, label %342

337:                                              ; preds = %329
  %338 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %339 = call i32 @comedi_error(%struct.comedi_device* %338, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %340 = load i32, i32* %8, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %8, align 4
  br label %342

342:                                              ; preds = %337, %329, %324
  %343 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %344 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %343, i32 0, i32 7
  %345 = load i32, i32* %344, align 8
  %346 = icmp eq i32 %345, 3
  br i1 %346, label %347, label %352

347:                                              ; preds = %342
  %348 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %349 = call i32 @comedi_error(%struct.comedi_device* %348, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %350 = load i32, i32* %8, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %8, align 4
  br label %352

352:                                              ; preds = %347, %342
  %353 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %354 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %353, i32 0, i32 11
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 0
  %357 = load i32, i32* %356, align 4
  %358 = call i64 @CR_AREF(i32 %357)
  %359 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %360 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %359, i32 0, i32 11
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 1
  %363 = load i32, i32* %362, align 4
  %364 = call i64 @CR_AREF(i32 %363)
  %365 = icmp ne i64 %358, %364
  br i1 %365, label %380, label %366

366:                                              ; preds = %352
  %367 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %368 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %367, i32 0, i32 11
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 2
  %371 = load i32, i32* %370, align 4
  %372 = call i64 @CR_AREF(i32 %371)
  %373 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %374 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %373, i32 0, i32 11
  %375 = load i32*, i32** %374, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 3
  %377 = load i32, i32* %376, align 4
  %378 = call i64 @CR_AREF(i32 %377)
  %379 = icmp ne i64 %372, %378
  br i1 %379, label %380, label %385

380:                                              ; preds = %366, %352
  %381 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %382 = call i32 @comedi_error(%struct.comedi_device* %381, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %383 = load i32, i32* %8, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %8, align 4
  br label %385

385:                                              ; preds = %380, %366
  br label %386

386:                                              ; preds = %385, %284
  %387 = load i32, i32* %8, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %386
  store i32 5, i32* %4, align 4
  br label %391

390:                                              ; preds = %386
  store i32 0, i32* %4, align 4
  br label %391

391:                                              ; preds = %390, %389, %283, %253, %162, %128
  %392 = load i32, i32* %4, align 4
  ret i32 %392
}

declare dso_local i32 @a2150_get_timing(%struct.comedi_device*, i32*, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i64 @CR_AREF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
