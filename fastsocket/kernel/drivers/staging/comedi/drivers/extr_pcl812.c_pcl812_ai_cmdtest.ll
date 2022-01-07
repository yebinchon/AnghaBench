; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@this_board = common dso_local global %struct.TYPE_3__* null, align 8
@MAX_CHANLIST_LEN = common dso_local global i32 0, align 4
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @pcl812_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl812_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
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
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load i32, i32* @TRIG_EXT, align 4
  %65 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %66 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %75

69:                                               ; preds = %55
  %70 = load i32, i32* @TRIG_TIMER, align 4
  %71 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %77 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %83 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %81, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80, %75
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %86, %80
  %90 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %91 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* @TRIG_COUNT, align 4
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %99 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %89
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %105 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102, %89
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %108, %102
  %112 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %113 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* @TRIG_COUNT, align 4
  %116 = load i32, i32* @TRIG_NONE, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %119 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %123 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %111
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %129 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %127, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %126, %111
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %132, %126
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 1, i32* %4, align 4
  br label %400

139:                                              ; preds = %135
  %140 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %141 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @TRIG_NOW, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %139
  %146 = load i32, i32* @TRIG_NOW, align 4
  %147 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %148 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %145, %139
  %152 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %153 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @TRIG_FOLLOW, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = load i32, i32* @TRIG_FOLLOW, align 4
  %159 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %160 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %157, %151
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %163
  %169 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %170 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @TRIG_EXT, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %168
  %175 = load i32, i32* @TRIG_EXT, align 4
  %176 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %177 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %180

180:                                              ; preds = %174, %168
  br label %194

181:                                              ; preds = %163
  %182 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %183 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @TRIG_TIMER, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = load i32, i32* @TRIG_TIMER, align 4
  %189 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %190 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %187, %181
  br label %194

194:                                              ; preds = %193, %180
  %195 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %196 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @TRIG_COUNT, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %194
  %201 = load i32, i32* @TRIG_COUNT, align 4
  %202 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %203 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %202, i32 0, i32 3
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %8, align 4
  br label %206

206:                                              ; preds = %200, %194
  %207 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %208 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @TRIG_NONE, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %221

212:                                              ; preds = %206
  %213 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %214 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @TRIG_COUNT, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %212
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %8, align 4
  br label %221

221:                                              ; preds = %218, %212, %206
  %222 = load i32, i32* %8, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  store i32 2, i32* %4, align 4
  br label %400

225:                                              ; preds = %221
  %226 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %227 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %226, i32 0, i32 5
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %225
  %231 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %232 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %231, i32 0, i32 5
  store i64 0, i64* %232, align 8
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %8, align 4
  br label %235

235:                                              ; preds = %230, %225
  %236 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %237 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %236, i32 0, i32 6
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %235
  %241 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %242 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %241, i32 0, i32 6
  store i64 0, i64* %242, align 8
  %243 = load i32, i32* %8, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %8, align 4
  br label %245

245:                                              ; preds = %240, %235
  %246 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %247 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @TRIG_TIMER, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %268

251:                                              ; preds = %245
  %252 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %253 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %252, i32 0, i32 7
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = icmp slt i32 %254, %257
  br i1 %258, label %259, label %267

259:                                              ; preds = %251
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %264 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %263, i32 0, i32 7
  store i32 %262, i32* %264, align 8
  %265 = load i32, i32* %8, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %8, align 4
  br label %267

267:                                              ; preds = %259, %251
  br label %279

268:                                              ; preds = %245
  %269 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %270 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %269, i32 0, i32 7
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %268
  %274 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %275 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %274, i32 0, i32 7
  store i32 0, i32* %275, align 8
  %276 = load i32, i32* %8, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %8, align 4
  br label %278

278:                                              ; preds = %273, %268
  br label %279

279:                                              ; preds = %278, %267
  %280 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %281 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %280, i32 0, i32 8
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %289, label %284

284:                                              ; preds = %279
  %285 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %286 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %285, i32 0, i32 8
  store i32 1, i32* %286, align 4
  %287 = load i32, i32* %8, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %8, align 4
  br label %289

289:                                              ; preds = %284, %279
  %290 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %291 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %290, i32 0, i32 8
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @MAX_CHANLIST_LEN, align 4
  %294 = icmp sgt i32 %292, %293
  br i1 %294, label %295, label %303

295:                                              ; preds = %289
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %300 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %299, i32 0, i32 8
  store i32 %298, i32* %300, align 4
  %301 = load i32, i32* %8, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %8, align 4
  br label %303

303:                                              ; preds = %295, %289
  %304 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %305 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %304, i32 0, i32 9
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %308 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %307, i32 0, i32 8
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %306, %309
  br i1 %310, label %311, label %319

311:                                              ; preds = %303
  %312 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %313 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %312, i32 0, i32 8
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %316 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %315, i32 0, i32 9
  store i32 %314, i32* %316, align 8
  %317 = load i32, i32* %8, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %8, align 4
  br label %319

319:                                              ; preds = %311, %303
  %320 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %321 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @TRIG_COUNT, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %336

325:                                              ; preds = %319
  %326 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %327 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %326, i32 0, i32 10
  %328 = load i32, i32* %327, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %335, label %330

330:                                              ; preds = %325
  %331 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %332 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %331, i32 0, i32 10
  store i32 1, i32* %332, align 4
  %333 = load i32, i32* %8, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %8, align 4
  br label %335

335:                                              ; preds = %330, %325
  br label %347

336:                                              ; preds = %319
  %337 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %338 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %337, i32 0, i32 10
  %339 = load i32, i32* %338, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %336
  %342 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %343 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %342, i32 0, i32 10
  store i32 0, i32* %343, align 4
  %344 = load i32, i32* %8, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %8, align 4
  br label %346

346:                                              ; preds = %341, %336
  br label %347

347:                                              ; preds = %346, %335
  %348 = load i32, i32* %8, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %347
  store i32 3, i32* %4, align 4
  br label %400

351:                                              ; preds = %347
  %352 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %353 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @TRIG_TIMER, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %357, label %395

357:                                              ; preds = %351
  %358 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %359 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %358, i32 0, i32 7
  %360 = load i32, i32* %359, align 8
  store i32 %360, i32* %9, align 4
  %361 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %362 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %365 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %364, i32 0, i32 7
  %366 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %367 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %366, i32 0, i32 11
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %370 = and i32 %368, %369
  %371 = call i32 @i8253_cascade_ns_to_timer(i32 %363, i32* %10, i32* %11, i32* %365, i32 %370)
  %372 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %373 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %372, i32 0, i32 7
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %376 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = icmp slt i32 %374, %377
  br i1 %378, label %379, label %385

379:                                              ; preds = %357
  %380 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %384 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %383, i32 0, i32 7
  store i32 %382, i32* %384, align 8
  br label %385

385:                                              ; preds = %379, %357
  %386 = load i32, i32* %9, align 4
  %387 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %388 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %387, i32 0, i32 7
  %389 = load i32, i32* %388, align 8
  %390 = icmp ne i32 %386, %389
  br i1 %390, label %391, label %394

391:                                              ; preds = %385
  %392 = load i32, i32* %8, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %8, align 4
  br label %394

394:                                              ; preds = %391, %385
  br label %395

395:                                              ; preds = %394, %351
  %396 = load i32, i32* %8, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %399

398:                                              ; preds = %395
  store i32 4, i32* %4, align 4
  br label %400

399:                                              ; preds = %395
  store i32 0, i32* %4, align 4
  br label %400

400:                                              ; preds = %399, %398, %350, %224, %138
  %401 = load i32, i32* %4, align 4
  ret i32 %401
}

declare dso_local i32 @i8253_cascade_ns_to_timer(i32, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
