; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_do_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_do_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32* }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@TIMER_BASE = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@UNIPOLAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"unipolar and bipolar ranges cannot be mixed in the chanlist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @das1800_ai_do_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das1800_ai_do_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @TRIG_NOW, align 4
  %17 = load i32, i32* @TRIG_EXT, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %24 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %30 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %3
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %38 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @TRIG_FOLLOW, align 4
  %41 = load i32, i32* @TRIG_TIMER, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @TRIG_EXT, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %50 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %36
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %56 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53, %36
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %59, %53
  %63 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %64 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* @TRIG_TIMER, align 4
  %67 = load i32, i32* @TRIG_EXT, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %70 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %74 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %62
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %80 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77, %62
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %83, %77
  %87 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %88 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %9, align 4
  %90 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %91 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 129
  store i32 %93, i32* %91, align 4
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %86
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %101 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %99, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98, %86
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %104, %98
  %108 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %109 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* @TRIG_EXT, align 4
  %112 = or i32 129, %111
  %113 = or i32 %112, 128
  %114 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %115 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %119 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %107
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %125 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %123, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122, %107
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %128, %122
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 1, i32* %4, align 4
  br label %485

135:                                              ; preds = %131
  %136 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %137 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @TRIG_NOW, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %135
  %142 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %143 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @TRIG_EXT, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %147, %141, %135
  %151 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %152 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @TRIG_FOLLOW, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %171

156:                                              ; preds = %150
  %157 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %158 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @TRIG_TIMER, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %156
  %163 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %164 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @TRIG_EXT, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %168, %162, %156, %150
  %172 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %173 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @TRIG_TIMER, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %171
  %178 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %179 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @TRIG_EXT, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %177
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %183, %177, %171
  %187 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %188 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 129
  br i1 %190, label %191, label %205

191:                                              ; preds = %186
  %192 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %193 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 128
  br i1 %195, label %196, label %205

196:                                              ; preds = %191
  %197 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %198 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @TRIG_EXT, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  br label %205

205:                                              ; preds = %202, %196, %191, %186
  %206 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %207 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @TRIG_FOLLOW, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %220

211:                                              ; preds = %205
  %212 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %213 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @TRIG_TIMER, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %211
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  br label %220

220:                                              ; preds = %217, %211, %205
  %221 = load i32, i32* %8, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  store i32 2, i32* %4, align 4
  br label %485

224:                                              ; preds = %220
  %225 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %226 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %225, i32 0, i32 5
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %224
  %230 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %231 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %230, i32 0, i32 5
  store i64 0, i64* %231, align 8
  %232 = load i32, i32* %8, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %8, align 4
  br label %234

234:                                              ; preds = %229, %224
  %235 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %236 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @TRIG_TIMER, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %257

240:                                              ; preds = %234
  %241 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %242 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = icmp ult i32 %243, %246
  br i1 %247, label %248, label %256

248:                                              ; preds = %240
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %253 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %252, i32 0, i32 6
  store i32 %251, i32* %253, align 8
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %256

256:                                              ; preds = %248, %240
  br label %257

257:                                              ; preds = %256, %234
  %258 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %259 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %257
  %263 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %264 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %263, i32 0, i32 7
  store i32 1, i32* %264, align 4
  %265 = load i32, i32* %8, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %8, align 4
  br label %267

267:                                              ; preds = %262, %257
  %268 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %269 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %268, i32 0, i32 8
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %272 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %271, i32 0, i32 7
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %270, %273
  br i1 %274, label %275, label %283

275:                                              ; preds = %267
  %276 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %277 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %276, i32 0, i32 7
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %280 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %279, i32 0, i32 8
  store i32 %278, i32* %280, align 8
  %281 = load i32, i32* %8, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %8, align 4
  br label %283

283:                                              ; preds = %275, %267
  %284 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %285 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 8
  switch i32 %286, label %309 [
    i32 129, label %287
    i32 128, label %298
  ]

287:                                              ; preds = %283
  %288 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %289 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %288, i32 0, i32 9
  %290 = load i32, i32* %289, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %297, label %292

292:                                              ; preds = %287
  %293 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %294 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %293, i32 0, i32 9
  store i32 1, i32* %294, align 4
  %295 = load i32, i32* %8, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %8, align 4
  br label %297

297:                                              ; preds = %292, %287
  br label %310

298:                                              ; preds = %283
  %299 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %300 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %299, i32 0, i32 9
  %301 = load i32, i32* %300, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %298
  %304 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %305 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %304, i32 0, i32 9
  store i32 0, i32* %305, align 4
  %306 = load i32, i32* %8, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %8, align 4
  br label %308

308:                                              ; preds = %303, %298
  br label %310

309:                                              ; preds = %283
  br label %310

310:                                              ; preds = %309, %308, %297
  %311 = load i32, i32* %8, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  store i32 3, i32* %4, align 4
  br label %485

314:                                              ; preds = %310
  %315 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %316 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @TRIG_TIMER, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %320, label %433

320:                                              ; preds = %314
  %321 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %322 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @TRIG_FOLLOW, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %326, label %352

326:                                              ; preds = %320
  %327 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %328 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %327, i32 0, i32 6
  %329 = load i32, i32* %328, align 8
  store i32 %329, i32* %10, align 4
  %330 = load i32, i32* @TIMER_BASE, align 4
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 0
  %335 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %336 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %335, i32 0, i32 6
  %337 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %338 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %337, i32 0, i32 10
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %341 = and i32 %339, %340
  %342 = call i32 @i8253_cascade_ns_to_timer_2div(i32 %330, i32* %332, i32* %334, i32* %336, i32 %341)
  %343 = load i32, i32* %10, align 4
  %344 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %345 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %344, i32 0, i32 6
  %346 = load i32, i32* %345, align 8
  %347 = icmp ne i32 %343, %346
  br i1 %347, label %348, label %351

348:                                              ; preds = %326
  %349 = load i32, i32* %8, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %8, align 4
  br label %351

351:                                              ; preds = %348, %326
  br label %432

352:                                              ; preds = %320
  %353 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %354 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %353, i32 0, i32 6
  %355 = load i32, i32* %354, align 8
  store i32 %355, i32* %10, align 4
  %356 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %357 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %356, i32 0, i32 6
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %360 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %359, i32 0, i32 10
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %363 = and i32 %361, %362
  %364 = call i32 @burst_convert_arg(i32 %358, i32 %363)
  %365 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %366 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %365, i32 0, i32 6
  store i32 %364, i32* %366, align 8
  %367 = load i32, i32* %10, align 4
  %368 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %369 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %368, i32 0, i32 6
  %370 = load i32, i32* %369, align 8
  %371 = icmp ne i32 %367, %370
  br i1 %371, label %372, label %375

372:                                              ; preds = %352
  %373 = load i32, i32* %8, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %8, align 4
  br label %375

375:                                              ; preds = %372, %352
  %376 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %377 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @TRIG_TIMER, align 4
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %381, label %431

381:                                              ; preds = %375
  %382 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %383 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %382, i32 0, i32 6
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %386 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %385, i32 0, i32 7
  %387 = load i32, i32* %386, align 4
  %388 = mul i32 %384, %387
  %389 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %390 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %389, i32 0, i32 11
  %391 = load i32, i32* %390, align 4
  %392 = icmp ugt i32 %388, %391
  br i1 %392, label %393, label %405

393:                                              ; preds = %381
  %394 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %395 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %394, i32 0, i32 6
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %398 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %397, i32 0, i32 7
  %399 = load i32, i32* %398, align 4
  %400 = mul i32 %396, %399
  %401 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %402 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %401, i32 0, i32 11
  store i32 %400, i32* %402, align 4
  %403 = load i32, i32* %8, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %8, align 4
  br label %405

405:                                              ; preds = %393, %381
  %406 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %407 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %406, i32 0, i32 11
  %408 = load i32, i32* %407, align 4
  store i32 %408, i32* %10, align 4
  %409 = load i32, i32* @TIMER_BASE, align 4
  %410 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 1
  %412 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 0
  %414 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %415 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %414, i32 0, i32 11
  %416 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %417 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %416, i32 0, i32 10
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %420 = and i32 %418, %419
  %421 = call i32 @i8253_cascade_ns_to_timer_2div(i32 %409, i32* %411, i32* %413, i32* %415, i32 %420)
  %422 = load i32, i32* %10, align 4
  %423 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %424 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %423, i32 0, i32 11
  %425 = load i32, i32* %424, align 4
  %426 = icmp ne i32 %422, %425
  br i1 %426, label %427, label %430

427:                                              ; preds = %405
  %428 = load i32, i32* %8, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %8, align 4
  br label %430

430:                                              ; preds = %427, %405
  br label %431

431:                                              ; preds = %430, %375
  br label %432

432:                                              ; preds = %431, %351
  br label %433

433:                                              ; preds = %432, %314
  %434 = load i32, i32* %8, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %437

436:                                              ; preds = %433
  store i32 4, i32* %4, align 4
  br label %485

437:                                              ; preds = %433
  %438 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %439 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %438, i32 0, i32 12
  %440 = load i32*, i32** %439, align 8
  %441 = icmp ne i32* %440, null
  br i1 %441, label %442, label %480

442:                                              ; preds = %437
  %443 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %444 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %443, i32 0, i32 12
  %445 = load i32*, i32** %444, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 0
  %447 = load i32, i32* %446, align 4
  %448 = call i32 @CR_RANGE(i32 %447)
  %449 = load i32, i32* @UNIPOLAR, align 4
  %450 = and i32 %448, %449
  store i32 %450, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %451

451:                                              ; preds = %476, %442
  %452 = load i32, i32* %11, align 4
  %453 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %454 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %453, i32 0, i32 7
  %455 = load i32, i32* %454, align 4
  %456 = icmp slt i32 %452, %455
  br i1 %456, label %457, label %479

457:                                              ; preds = %451
  %458 = load i32, i32* %12, align 4
  %459 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %460 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %459, i32 0, i32 12
  %461 = load i32*, i32** %460, align 8
  %462 = load i32, i32* %11, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %461, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = call i32 @CR_RANGE(i32 %465)
  %467 = load i32, i32* @UNIPOLAR, align 4
  %468 = and i32 %466, %467
  %469 = icmp ne i32 %458, %468
  br i1 %469, label %470, label %475

470:                                              ; preds = %457
  %471 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %472 = call i32 @comedi_error(%struct.comedi_device* %471, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %473 = load i32, i32* %8, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %8, align 4
  br label %479

475:                                              ; preds = %457
  br label %476

476:                                              ; preds = %475
  %477 = load i32, i32* %11, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %11, align 4
  br label %451

479:                                              ; preds = %470, %451
  br label %480

480:                                              ; preds = %479, %437
  %481 = load i32, i32* %8, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %484

483:                                              ; preds = %480
  store i32 5, i32* %4, align 4
  br label %485

484:                                              ; preds = %480
  store i32 0, i32* %4, align 4
  br label %485

485:                                              ; preds = %484, %483, %436, %313, %223, %134
  %486 = load i32, i32* %4, align 4
  ret i32 %486
}

declare dso_local i32 @i8253_cascade_ns_to_timer_2div(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @burst_convert_arg(i32, i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
