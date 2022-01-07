; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i64 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_INT = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@this_board = common dso_local global %struct.TYPE_3__* null, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @pci9118_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9118_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
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
  %18 = load i32, i32* @TRIG_INT, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %3
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %28
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %37
  %46 = load i32, i32* @TRIG_TIMER, align 4
  %47 = load i32, i32* @TRIG_EXT, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @TRIG_FOLLOW, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %52 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %61

55:                                               ; preds = %37
  %56 = load i32, i32* @TRIG_FOLLOW, align 4
  %57 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %58 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %45
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66, %61
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %72, %66
  %76 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %77 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %9, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %75
  %84 = load i32, i32* @TRIG_TIMER, align 4
  %85 = load i32, i32* @TRIG_EXT, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @TRIG_NOW, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %90 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %101

93:                                               ; preds = %75
  %94 = load i32, i32* @TRIG_TIMER, align 4
  %95 = load i32, i32* @TRIG_EXT, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %98 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %93, %83
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %103 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %109 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %107, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106, %101
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %112, %106
  %116 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %117 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* @TRIG_COUNT, align 4
  %120 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %121 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %125 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %115
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %131 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %129, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %128, %115
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %134, %128
  %138 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %139 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* @TRIG_COUNT, align 4
  %142 = load i32, i32* @TRIG_NONE, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @TRIG_EXT, align 4
  %145 = or i32 %143, %144
  %146 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %147 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %151 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %137
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %157 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %155, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %154, %137
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %160, %154
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i32 1, i32* %4, align 4
  br label %834

167:                                              ; preds = %163
  %168 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %169 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @TRIG_NOW, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %191

173:                                              ; preds = %167
  %174 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %175 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @TRIG_INT, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %191

179:                                              ; preds = %173
  %180 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %181 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @TRIG_EXT, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %179
  %186 = load i32, i32* @TRIG_NOW, align 4
  %187 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %188 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %8, align 4
  br label %191

191:                                              ; preds = %185, %179, %173, %167
  %192 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %193 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @TRIG_TIMER, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %221

197:                                              ; preds = %191
  %198 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %199 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @TRIG_EXT, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %221

203:                                              ; preds = %197
  %204 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %205 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @TRIG_INT, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %221

209:                                              ; preds = %203
  %210 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %211 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @TRIG_FOLLOW, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %209
  %216 = load i32, i32* @TRIG_FOLLOW, align 4
  %217 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %218 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %8, align 4
  br label %221

221:                                              ; preds = %215, %209, %203, %197, %191
  %222 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %223 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @TRIG_TIMER, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %245

227:                                              ; preds = %221
  %228 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %229 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @TRIG_EXT, align 4
  %232 = icmp ne i32 %230, %231
  br i1 %232, label %233, label %245

233:                                              ; preds = %227
  %234 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %235 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @TRIG_NOW, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %245

239:                                              ; preds = %233
  %240 = load i32, i32* @TRIG_TIMER, align 4
  %241 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %242 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 8
  %243 = load i32, i32* %8, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %8, align 4
  br label %245

245:                                              ; preds = %239, %233, %227, %221
  %246 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %247 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @TRIG_COUNT, align 4
  %250 = icmp ne i32 %248, %249
  br i1 %250, label %251, label %257

251:                                              ; preds = %245
  %252 = load i32, i32* @TRIG_COUNT, align 4
  %253 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %254 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %253, i32 0, i32 3
  store i32 %252, i32* %254, align 4
  %255 = load i32, i32* %8, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %8, align 4
  br label %257

257:                                              ; preds = %251, %245
  %258 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %259 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @TRIG_NONE, align 4
  %262 = icmp ne i32 %260, %261
  br i1 %262, label %263, label %287

263:                                              ; preds = %257
  %264 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %265 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @TRIG_COUNT, align 4
  %268 = icmp ne i32 %266, %267
  br i1 %268, label %269, label %287

269:                                              ; preds = %263
  %270 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %271 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @TRIG_INT, align 4
  %274 = icmp ne i32 %272, %273
  br i1 %274, label %275, label %287

275:                                              ; preds = %269
  %276 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %277 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @TRIG_EXT, align 4
  %280 = icmp ne i32 %278, %279
  br i1 %280, label %281, label %287

281:                                              ; preds = %275
  %282 = load i32, i32* @TRIG_COUNT, align 4
  %283 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %284 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %283, i32 0, i32 4
  store i32 %282, i32* %284, align 8
  %285 = load i32, i32* %8, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %8, align 4
  br label %287

287:                                              ; preds = %281, %275, %269, %263, %257
  %288 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %289 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @TRIG_EXT, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %305

293:                                              ; preds = %287
  %294 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %295 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @TRIG_EXT, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %305

299:                                              ; preds = %293
  %300 = load i32, i32* @TRIG_NOW, align 4
  %301 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %302 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %301, i32 0, i32 0
  store i32 %300, i32* %302, align 8
  %303 = load i32, i32* %8, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %8, align 4
  br label %305

305:                                              ; preds = %299, %293, %287
  %306 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %307 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @TRIG_INT, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %323

311:                                              ; preds = %305
  %312 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %313 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @TRIG_INT, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %323

317:                                              ; preds = %311
  %318 = load i32, i32* @TRIG_NOW, align 4
  %319 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %320 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 8
  %321 = load i32, i32* %8, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %8, align 4
  br label %323

323:                                              ; preds = %317, %311, %305
  %324 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %325 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @TRIG_TIMER, align 4
  %328 = load i32, i32* @TRIG_EXT, align 4
  %329 = or i32 %327, %328
  %330 = and i32 %326, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %347

332:                                              ; preds = %323
  %333 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %334 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @TRIG_TIMER, align 4
  %337 = load i32, i32* @TRIG_NOW, align 4
  %338 = or i32 %336, %337
  %339 = and i32 %335, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %347, label %341

341:                                              ; preds = %332
  %342 = load i32, i32* @TRIG_TIMER, align 4
  %343 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %344 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %343, i32 0, i32 2
  store i32 %342, i32* %344, align 8
  %345 = load i32, i32* %8, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %8, align 4
  br label %347

347:                                              ; preds = %341, %332, %323
  %348 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %349 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* @TRIG_FOLLOW, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %368

353:                                              ; preds = %347
  %354 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %355 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @TRIG_TIMER, align 4
  %358 = load i32, i32* @TRIG_EXT, align 4
  %359 = or i32 %357, %358
  %360 = and i32 %356, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %368, label %362

362:                                              ; preds = %353
  %363 = load i32, i32* @TRIG_TIMER, align 4
  %364 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %365 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %364, i32 0, i32 2
  store i32 %363, i32* %365, align 8
  %366 = load i32, i32* %8, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %8, align 4
  br label %368

368:                                              ; preds = %362, %353, %347
  %369 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %370 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %369, i32 0, i32 4
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @TRIG_EXT, align 4
  %373 = icmp eq i32 %371, %372
  br i1 %373, label %374, label %386

374:                                              ; preds = %368
  %375 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %376 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @TRIG_EXT, align 4
  %379 = icmp eq i32 %377, %378
  br i1 %379, label %380, label %386

380:                                              ; preds = %374
  %381 = load i32, i32* @TRIG_COUNT, align 4
  %382 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %383 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %382, i32 0, i32 4
  store i32 %381, i32* %383, align 8
  %384 = load i32, i32* %8, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %8, align 4
  br label %386

386:                                              ; preds = %380, %374, %368
  %387 = load i32, i32* %8, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %386
  store i32 2, i32* %4, align 4
  br label %834

390:                                              ; preds = %386
  %391 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %392 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = load i32, i32* @TRIG_NOW, align 4
  %395 = load i32, i32* @TRIG_EXT, align 4
  %396 = or i32 %394, %395
  %397 = and i32 %393, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %410

399:                                              ; preds = %390
  %400 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %401 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %400, i32 0, i32 5
  %402 = load i64, i64* %401, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %409

404:                                              ; preds = %399
  %405 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %406 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %405, i32 0, i32 5
  store i64 0, i64* %406, align 8
  %407 = load i32, i32* %8, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %8, align 4
  br label %409

409:                                              ; preds = %404, %399
  br label %410

410:                                              ; preds = %409, %390
  %411 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %412 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* @TRIG_FOLLOW, align 4
  %415 = load i32, i32* @TRIG_EXT, align 4
  %416 = or i32 %414, %415
  %417 = and i32 %413, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %430

419:                                              ; preds = %410
  %420 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %421 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %420, i32 0, i32 6
  %422 = load i32, i32* %421, align 8
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %429

424:                                              ; preds = %419
  %425 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %426 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %425, i32 0, i32 6
  store i32 0, i32* %426, align 8
  %427 = load i32, i32* %8, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %8, align 4
  br label %429

429:                                              ; preds = %424, %419
  br label %430

430:                                              ; preds = %429, %410
  %431 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %432 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* @TRIG_TIMER, align 4
  %435 = icmp eq i32 %433, %434
  br i1 %435, label %436, label %458

436:                                              ; preds = %430
  %437 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %438 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* @TRIG_TIMER, align 4
  %441 = icmp eq i32 %439, %440
  br i1 %441, label %442, label %458

442:                                              ; preds = %436
  %443 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %444 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %443, i32 0, i32 7
  %445 = load i32, i32* %444, align 4
  %446 = icmp eq i32 %445, 1
  br i1 %446, label %447, label %458

447:                                              ; preds = %442
  %448 = load i32, i32* @TRIG_FOLLOW, align 4
  %449 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %450 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %449, i32 0, i32 1
  store i32 %448, i32* %450, align 4
  %451 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %452 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %451, i32 0, i32 6
  %453 = load i32, i32* %452, align 8
  %454 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %455 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %454, i32 0, i32 8
  store i32 %453, i32* %455, align 8
  %456 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %457 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %456, i32 0, i32 6
  store i32 0, i32* %457, align 8
  br label %458

458:                                              ; preds = %447, %442, %436, %430
  %459 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %460 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = load i32, i32* @TRIG_TIMER, align 4
  %463 = icmp eq i32 %461, %462
  br i1 %463, label %464, label %481

464:                                              ; preds = %458
  %465 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %466 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %465, i32 0, i32 6
  %467 = load i32, i32* %466, align 8
  %468 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %469 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 4
  %471 = icmp slt i32 %467, %470
  br i1 %471, label %472, label %480

472:                                              ; preds = %464
  %473 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %474 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 4
  %476 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %477 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %476, i32 0, i32 6
  store i32 %475, i32* %477, align 8
  %478 = load i32, i32* %8, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %8, align 4
  br label %480

480:                                              ; preds = %472, %464
  br label %481

481:                                              ; preds = %480, %458
  %482 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %483 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = load i32, i32* @TRIG_EXT, align 4
  %486 = icmp eq i32 %484, %485
  br i1 %486, label %487, label %508

487:                                              ; preds = %481
  %488 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %489 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %488, i32 0, i32 6
  %490 = load i32, i32* %489, align 8
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %507

492:                                              ; preds = %487
  %493 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %494 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %493, i32 0, i32 6
  store i32 0, i32* %494, align 8
  %495 = load i32, i32* %8, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %8, align 4
  %497 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %498 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %497, i32 0, i32 7
  %499 = load i32, i32* %498, align 4
  %500 = icmp sgt i32 %499, 65535
  br i1 %500, label %501, label %506

501:                                              ; preds = %492
  %502 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %503 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %502, i32 0, i32 7
  store i32 65535, i32* %503, align 4
  %504 = load i32, i32* %8, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %8, align 4
  br label %506

506:                                              ; preds = %501, %492
  br label %507

507:                                              ; preds = %506, %487
  br label %508

508:                                              ; preds = %507, %481
  %509 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %510 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %509, i32 0, i32 2
  %511 = load i32, i32* %510, align 8
  %512 = load i32, i32* @TRIG_TIMER, align 4
  %513 = load i32, i32* @TRIG_NOW, align 4
  %514 = or i32 %512, %513
  %515 = and i32 %511, %514
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %534

517:                                              ; preds = %508
  %518 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %519 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %518, i32 0, i32 8
  %520 = load i32, i32* %519, align 8
  %521 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %522 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 4
  %524 = icmp slt i32 %520, %523
  br i1 %524, label %525, label %533

525:                                              ; preds = %517
  %526 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %527 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 4
  %529 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %530 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %529, i32 0, i32 8
  store i32 %528, i32* %530, align 8
  %531 = load i32, i32* %8, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %8, align 4
  br label %533

533:                                              ; preds = %525, %517
  br label %534

534:                                              ; preds = %533, %508
  %535 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %536 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %535, i32 0, i32 2
  %537 = load i32, i32* %536, align 8
  %538 = load i32, i32* @TRIG_EXT, align 4
  %539 = icmp eq i32 %537, %538
  br i1 %539, label %540, label %551

540:                                              ; preds = %534
  %541 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %542 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %541, i32 0, i32 8
  %543 = load i32, i32* %542, align 8
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %550

545:                                              ; preds = %540
  %546 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %547 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %546, i32 0, i32 8
  store i32 0, i32* %547, align 8
  %548 = load i32, i32* %8, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %8, align 4
  br label %550

550:                                              ; preds = %545, %540
  br label %551

551:                                              ; preds = %550, %534
  %552 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %553 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %552, i32 0, i32 4
  %554 = load i32, i32* %553, align 8
  %555 = load i32, i32* @TRIG_COUNT, align 4
  %556 = icmp eq i32 %554, %555
  br i1 %556, label %557, label %568

557:                                              ; preds = %551
  %558 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %559 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %558, i32 0, i32 9
  %560 = load i32, i32* %559, align 4
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %567, label %562

562:                                              ; preds = %557
  %563 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %564 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %563, i32 0, i32 9
  store i32 1, i32* %564, align 4
  %565 = load i32, i32* %8, align 4
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* %8, align 4
  br label %567

567:                                              ; preds = %562, %557
  br label %579

568:                                              ; preds = %551
  %569 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %570 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %569, i32 0, i32 9
  %571 = load i32, i32* %570, align 4
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %578

573:                                              ; preds = %568
  %574 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %575 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %574, i32 0, i32 9
  store i32 0, i32* %575, align 4
  %576 = load i32, i32* %8, align 4
  %577 = add nsw i32 %576, 1
  store i32 %577, i32* %8, align 4
  br label %578

578:                                              ; preds = %573, %568
  br label %579

579:                                              ; preds = %578, %567
  %580 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %581 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %580, i32 0, i32 10
  %582 = load i32, i32* %581, align 8
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %589, label %584

584:                                              ; preds = %579
  %585 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %586 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %585, i32 0, i32 10
  store i32 1, i32* %586, align 8
  %587 = load i32, i32* %8, align 4
  %588 = add nsw i32 %587, 1
  store i32 %588, i32* %8, align 4
  br label %589

589:                                              ; preds = %584, %579
  %590 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %591 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %590, i32 0, i32 10
  %592 = load i32, i32* %591, align 8
  %593 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %594 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %593, i32 0, i32 1
  %595 = load i32, i32* %594, align 4
  %596 = icmp sgt i32 %592, %595
  br i1 %596, label %597, label %605

597:                                              ; preds = %589
  %598 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %599 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %598, i32 0, i32 1
  %600 = load i32, i32* %599, align 4
  %601 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %602 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %601, i32 0, i32 10
  store i32 %600, i32* %602, align 8
  %603 = load i32, i32* %8, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %8, align 4
  br label %605

605:                                              ; preds = %597, %589
  %606 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %607 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %606, i32 0, i32 7
  %608 = load i32, i32* %607, align 4
  %609 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %610 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %609, i32 0, i32 10
  %611 = load i32, i32* %610, align 8
  %612 = icmp slt i32 %608, %611
  br i1 %612, label %613, label %621

613:                                              ; preds = %605
  %614 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %615 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %614, i32 0, i32 10
  %616 = load i32, i32* %615, align 8
  %617 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %618 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %617, i32 0, i32 7
  store i32 %616, i32* %618, align 4
  %619 = load i32, i32* %8, align 4
  %620 = add nsw i32 %619, 1
  store i32 %620, i32* %8, align 4
  br label %621

621:                                              ; preds = %613, %605
  %622 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %623 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %622, i32 0, i32 7
  %624 = load i32, i32* %623, align 4
  %625 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %626 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %625, i32 0, i32 10
  %627 = load i32, i32* %626, align 8
  %628 = srem i32 %624, %627
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %630, label %646

630:                                              ; preds = %621
  %631 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %632 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %631, i32 0, i32 10
  %633 = load i32, i32* %632, align 8
  %634 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %635 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %634, i32 0, i32 7
  %636 = load i32, i32* %635, align 4
  %637 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %638 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %637, i32 0, i32 10
  %639 = load i32, i32* %638, align 8
  %640 = sdiv i32 %636, %639
  %641 = mul nsw i32 %633, %640
  %642 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %643 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %642, i32 0, i32 7
  store i32 %641, i32* %643, align 4
  %644 = load i32, i32* %8, align 4
  %645 = add nsw i32 %644, 1
  store i32 %645, i32* %8, align 4
  br label %646

646:                                              ; preds = %630, %621
  %647 = load i32, i32* %8, align 4
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %649, label %650

649:                                              ; preds = %646
  store i32 3, i32* %4, align 4
  br label %834

650:                                              ; preds = %646
  %651 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %652 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %651, i32 0, i32 1
  %653 = load i32, i32* %652, align 4
  %654 = load i32, i32* @TRIG_TIMER, align 4
  %655 = icmp eq i32 %653, %654
  br i1 %655, label %656, label %694

656:                                              ; preds = %650
  %657 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %658 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %657, i32 0, i32 6
  %659 = load i32, i32* %658, align 8
  store i32 %659, i32* %9, align 4
  %660 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %661 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %660, i32 0, i32 0
  %662 = load i32, i32* %661, align 8
  %663 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %664 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %663, i32 0, i32 6
  %665 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %666 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %665, i32 0, i32 11
  %667 = load i32, i32* %666, align 4
  %668 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %669 = and i32 %667, %668
  %670 = call i32 @i8253_cascade_ns_to_timer(i32 %662, i32* %10, i32* %11, i32* %664, i32 %669)
  %671 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %672 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %671, i32 0, i32 6
  %673 = load i32, i32* %672, align 8
  %674 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %675 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %674, i32 0, i32 0
  %676 = load i32, i32* %675, align 4
  %677 = icmp slt i32 %673, %676
  br i1 %677, label %678, label %684

678:                                              ; preds = %656
  %679 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %680 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %679, i32 0, i32 0
  %681 = load i32, i32* %680, align 4
  %682 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %683 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %682, i32 0, i32 6
  store i32 %681, i32* %683, align 8
  br label %684

684:                                              ; preds = %678, %656
  %685 = load i32, i32* %9, align 4
  %686 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %687 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %686, i32 0, i32 6
  %688 = load i32, i32* %687, align 8
  %689 = icmp ne i32 %685, %688
  br i1 %689, label %690, label %693

690:                                              ; preds = %684
  %691 = load i32, i32* %8, align 4
  %692 = add nsw i32 %691, 1
  store i32 %692, i32* %8, align 4
  br label %693

693:                                              ; preds = %690, %684
  br label %694

694:                                              ; preds = %693, %650
  %695 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %696 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %695, i32 0, i32 2
  %697 = load i32, i32* %696, align 8
  %698 = load i32, i32* @TRIG_TIMER, align 4
  %699 = load i32, i32* @TRIG_NOW, align 4
  %700 = or i32 %698, %699
  %701 = and i32 %697, %700
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %703, label %811

703:                                              ; preds = %694
  %704 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %705 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %704, i32 0, i32 8
  %706 = load i32, i32* %705, align 8
  store i32 %706, i32* %9, align 4
  %707 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %708 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %707, i32 0, i32 0
  %709 = load i32, i32* %708, align 8
  %710 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %711 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %710, i32 0, i32 8
  %712 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %713 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %712, i32 0, i32 11
  %714 = load i32, i32* %713, align 4
  %715 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %716 = and i32 %714, %715
  %717 = call i32 @i8253_cascade_ns_to_timer(i32 %709, i32* %10, i32* %11, i32* %711, i32 %716)
  %718 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %719 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %718, i32 0, i32 8
  %720 = load i32, i32* %719, align 8
  %721 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %722 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %721, i32 0, i32 0
  %723 = load i32, i32* %722, align 4
  %724 = icmp slt i32 %720, %723
  br i1 %724, label %725, label %731

725:                                              ; preds = %703
  %726 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %727 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %726, i32 0, i32 0
  %728 = load i32, i32* %727, align 4
  %729 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %730 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %729, i32 0, i32 8
  store i32 %728, i32* %730, align 8
  br label %731

731:                                              ; preds = %725, %703
  %732 = load i32, i32* %9, align 4
  %733 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %734 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %733, i32 0, i32 8
  %735 = load i32, i32* %734, align 8
  %736 = icmp ne i32 %732, %735
  br i1 %736, label %737, label %740

737:                                              ; preds = %731
  %738 = load i32, i32* %8, align 4
  %739 = add nsw i32 %738, 1
  store i32 %739, i32* %8, align 4
  br label %740

740:                                              ; preds = %737, %731
  %741 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %742 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %741, i32 0, i32 1
  %743 = load i32, i32* %742, align 4
  %744 = load i32, i32* @TRIG_TIMER, align 4
  %745 = icmp eq i32 %743, %744
  br i1 %745, label %746, label %810

746:                                              ; preds = %740
  %747 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %748 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %747, i32 0, i32 2
  %749 = load i32, i32* %748, align 8
  %750 = load i32, i32* @TRIG_NOW, align 4
  %751 = icmp eq i32 %749, %750
  br i1 %751, label %752, label %810

752:                                              ; preds = %746
  %753 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %754 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %753, i32 0, i32 8
  %755 = load i32, i32* %754, align 8
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %784

757:                                              ; preds = %752
  %758 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %759 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %758, i32 0, i32 6
  %760 = load i32, i32* %759, align 8
  %761 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %762 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %761, i32 0, i32 0
  %763 = load i32, i32* %762, align 4
  %764 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %765 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %764, i32 0, i32 7
  %766 = load i32, i32* %765, align 4
  %767 = add nsw i32 %766, 2
  %768 = mul nsw i32 %763, %767
  %769 = icmp slt i32 %760, %768
  br i1 %769, label %770, label %783

770:                                              ; preds = %757
  %771 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %772 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %771, i32 0, i32 0
  %773 = load i32, i32* %772, align 4
  %774 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %775 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %774, i32 0, i32 7
  %776 = load i32, i32* %775, align 4
  %777 = add nsw i32 %776, 2
  %778 = mul nsw i32 %773, %777
  %779 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %780 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %779, i32 0, i32 6
  store i32 %778, i32* %780, align 8
  %781 = load i32, i32* %8, align 4
  %782 = add nsw i32 %781, 1
  store i32 %782, i32* %8, align 4
  br label %783

783:                                              ; preds = %770, %757
  br label %809

784:                                              ; preds = %752
  %785 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %786 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %785, i32 0, i32 6
  %787 = load i32, i32* %786, align 8
  %788 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %789 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %788, i32 0, i32 8
  %790 = load i32, i32* %789, align 8
  %791 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %792 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %791, i32 0, i32 10
  %793 = load i32, i32* %792, align 8
  %794 = mul nsw i32 %790, %793
  %795 = icmp slt i32 %787, %794
  br i1 %795, label %796, label %808

796:                                              ; preds = %784
  %797 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %798 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %797, i32 0, i32 8
  %799 = load i32, i32* %798, align 8
  %800 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %801 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %800, i32 0, i32 10
  %802 = load i32, i32* %801, align 8
  %803 = mul nsw i32 %799, %802
  %804 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %805 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %804, i32 0, i32 6
  store i32 %803, i32* %805, align 8
  %806 = load i32, i32* %8, align 4
  %807 = add nsw i32 %806, 1
  store i32 %807, i32* %8, align 4
  br label %808

808:                                              ; preds = %796, %784
  br label %809

809:                                              ; preds = %808, %783
  br label %810

810:                                              ; preds = %809, %746, %740
  br label %811

811:                                              ; preds = %810, %694
  %812 = load i32, i32* %8, align 4
  %813 = icmp ne i32 %812, 0
  br i1 %813, label %814, label %815

814:                                              ; preds = %811
  store i32 4, i32* %4, align 4
  br label %834

815:                                              ; preds = %811
  %816 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %817 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %816, i32 0, i32 12
  %818 = load i64, i64* %817, align 8
  %819 = icmp ne i64 %818, 0
  br i1 %819, label %820, label %833

820:                                              ; preds = %815
  %821 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %822 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %823 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %824 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %823, i32 0, i32 10
  %825 = load i32, i32* %824, align 8
  %826 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %827 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %826, i32 0, i32 12
  %828 = load i64, i64* %827, align 8
  %829 = call i32 @check_channel_list(%struct.comedi_device* %821, %struct.comedi_subdevice* %822, i32 %825, i64 %828, i32 0, i32 0)
  %830 = icmp ne i32 %829, 0
  br i1 %830, label %832, label %831

831:                                              ; preds = %820
  store i32 5, i32* %4, align 4
  br label %834

832:                                              ; preds = %820
  br label %833

833:                                              ; preds = %832, %815
  store i32 0, i32* %4, align 4
  br label %834

834:                                              ; preds = %833, %831, %814, %649, %389, %166
  %835 = load i32, i32* %4, align 4
  ret i32 %835
}

declare dso_local i32 @i8253_cascade_ns_to_timer(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @check_channel_list(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
