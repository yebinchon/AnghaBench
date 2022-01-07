; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3200.c_i_APCI3200_CommandAnalogInput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3200.c_i_APCI3200_CommandAnalogInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32*, i64, i32, i64, i64, i32, i64, i32 }

@s_BoardInfos = common dso_local global %struct.TYPE_5__* null, align 8
@TRIG_EXT = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@TRIG_FOLLOW = common dso_local global i64 0, align 8
@TRIG_TIMER = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3200_CommandAnalogInput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.comedi_cmd* %19, %struct.comedi_cmd** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %26 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %24, i32* %30, align 8
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %37 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %35, i32* %41, align 4
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TRIG_EXT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %49 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 65535
  store i32 %51, i32* %8, align 4
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %53 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = ashr i32 %54, 16
  store i32 %55, i32* %9, align 4
  br label %57

56:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %47
  %58 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %59 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TRIG_COUNT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  br label %65

64:                                               ; preds = %57
  store i32 2, i32* %10, align 4
  br label %65

65:                                               ; preds = %64, %63
  %66 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %67 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @TRIG_FOLLOW, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %81

72:                                               ; preds = %65
  %73 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %74 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, 65535
  store i32 %76, i32* %13, align 4
  %77 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %78 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = ashr i32 %79, 16
  store i32 %80, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %81

81:                                               ; preds = %72, %71
  %82 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %83 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TRIG_TIMER, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, 65535
  store i32 %91, i32* %11, align 4
  %92 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %93 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = ashr i32 %94, 16
  store i32 %95, i32* %12, align 4
  br label %97

96:                                               ; preds = %81
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %96, %87
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %102 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %103 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %100, %107
  %109 = add nsw i64 %108, 12
  %110 = call i32 @inl(i64 %109)
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %128, %97
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %116 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %117 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %114, %121
  %123 = add nsw i64 %122, 12
  %124 = call i32 @inl(i64 %123)
  %125 = ashr i32 %124, 19
  %126 = and i32 %125, 1
  %127 = icmp ne i32 %126, 1
  br i1 %127, label %128, label %129

128:                                              ; preds = %111
  br label %111

129:                                              ; preds = %111
  %130 = load i32, i32* %6, align 4
  %131 = and i32 %130, -4194304
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %136 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %137 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %134, %141
  %143 = add nsw i64 %142, 12
  %144 = call i32 @outl(i32 %131, i64 %143)
  store i32 0, i32* %6, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %146 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %147 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %153 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %154 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %158, 8
  %160 = or i32 %151, %159
  %161 = or i32 %160, 1048576
  %162 = load i32, i32* %7, align 4
  %163 = shl i32 %162, 24
  %164 = or i32 %161, %163
  %165 = load i32, i32* %8, align 4
  %166 = shl i32 %165, 25
  %167 = or i32 %164, %166
  %168 = load i32, i32* %9, align 4
  %169 = shl i32 %168, 27
  %170 = or i32 %167, %169
  %171 = load i32, i32* %15, align 4
  %172 = shl i32 %171, 18
  %173 = or i32 %170, %172
  %174 = load i32, i32* %10, align 4
  %175 = shl i32 %174, 16
  %176 = or i32 %173, %175
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %194, %129
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %182 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %183 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %180, %187
  %189 = add nsw i64 %188, 12
  %190 = call i32 @inl(i64 %189)
  %191 = ashr i32 %190, 19
  %192 = and i32 %191, 1
  %193 = icmp ne i32 %192, 1
  br i1 %193, label %194, label %195

194:                                              ; preds = %177
  br label %177

195:                                              ; preds = %177
  %196 = load i32, i32* %6, align 4
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %201 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %202 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %199, %206
  %208 = add nsw i64 %207, 8
  %209 = call i32 @outl(i32 %196, i64 %208)
  br label %210

210:                                              ; preds = %227, %195
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %215 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %216 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %213, %220
  %222 = add nsw i64 %221, 12
  %223 = call i32 @inl(i64 %222)
  %224 = ashr i32 %223, 19
  %225 = and i32 %224, 1
  %226 = icmp ne i32 %225, 1
  br i1 %226, label %227, label %228

227:                                              ; preds = %210
  br label %210

228:                                              ; preds = %210
  %229 = load i32, i32* %13, align 4
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %234 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %235 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = add nsw i64 %232, %239
  %241 = add nsw i64 %240, 40
  %242 = call i32 @outl(i32 %229, i64 %241)
  br label %243

243:                                              ; preds = %260, %228
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %248 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %249 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = add nsw i64 %246, %253
  %255 = add nsw i64 %254, 12
  %256 = call i32 @inl(i64 %255)
  %257 = ashr i32 %256, 19
  %258 = and i32 %257, 1
  %259 = icmp ne i32 %258, 1
  br i1 %259, label %260, label %261

260:                                              ; preds = %243
  br label %243

261:                                              ; preds = %243
  %262 = load i32, i32* %14, align 4
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %267 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %268 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = add nsw i64 %265, %272
  %274 = add nsw i64 %273, 44
  %275 = call i32 @outl(i32 %262, i64 %274)
  br label %276

276:                                              ; preds = %293, %261
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %281 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %282 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = add nsw i64 %279, %286
  %288 = add nsw i64 %287, 12
  %289 = call i32 @inl(i64 %288)
  %290 = ashr i32 %289, 19
  %291 = and i32 %290, 1
  %292 = icmp ne i32 %291, 1
  br i1 %292, label %293, label %294

293:                                              ; preds = %276
  br label %276

294:                                              ; preds = %276
  %295 = load i32, i32* %11, align 4
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %300 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %301 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = add nsw i64 %298, %305
  %307 = add nsw i64 %306, 32
  %308 = call i32 @outl(i32 %295, i64 %307)
  br label %309

309:                                              ; preds = %326, %294
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %314 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %315 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = add nsw i64 %312, %319
  %321 = add nsw i64 %320, 12
  %322 = call i32 @inl(i64 %321)
  %323 = ashr i32 %322, 19
  %324 = and i32 %323, 1
  %325 = icmp ne i32 %324, 1
  br i1 %325, label %326, label %327

326:                                              ; preds = %309
  br label %309

327:                                              ; preds = %309
  %328 = load i32, i32* %12, align 4
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %333 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %334 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 2
  %338 = load i64, i64* %337, align 8
  %339 = add nsw i64 %331, %338
  %340 = add nsw i64 %339, 36
  %341 = call i32 @outl(i32 %328, i64 %340)
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %346 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %347 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 2
  %351 = load i64, i64* %350, align 8
  %352 = add nsw i64 %344, %351
  %353 = add nsw i64 %352, 4
  %354 = call i32 @inl(i64 %353)
  store i32 %354, i32* %6, align 4
  br label %355

355:                                              ; preds = %372, %327
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %360 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %361 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i32 0, i32 2
  %365 = load i64, i64* %364, align 8
  %366 = add nsw i64 %358, %365
  %367 = add nsw i64 %366, 12
  %368 = call i32 @inl(i64 %367)
  %369 = ashr i32 %368, 19
  %370 = and i32 %369, 1
  %371 = icmp ne i32 %370, 1
  br i1 %371, label %372, label %373

372:                                              ; preds = %355
  br label %355

373:                                              ; preds = %355
  %374 = load i32, i32* %6, align 4
  %375 = and i32 %374, 123135
  %376 = or i32 %375, 8192
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %381 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %382 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %384, i32 0, i32 2
  %386 = load i64, i64* %385, align 8
  %387 = add nsw i64 %379, %386
  %388 = add nsw i64 %387, 4
  %389 = call i32 @outl(i32 %376, i64 %388)
  store i32 0, i32* %6, align 4
  %390 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %391 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %394 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %395 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %393, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i32 0, i32 2
  %399 = load i64, i64* %398, align 8
  %400 = add nsw i64 %392, %399
  %401 = add nsw i64 %400, 8
  %402 = call i32 @inl(i64 %401)
  store i32 %402, i32* %6, align 4
  br label %403

403:                                              ; preds = %420, %373
  %404 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %408 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %409 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %407, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %411, i32 0, i32 2
  %413 = load i64, i64* %412, align 8
  %414 = add nsw i64 %406, %413
  %415 = add nsw i64 %414, 12
  %416 = call i32 @inl(i64 %415)
  %417 = ashr i32 %416, 19
  %418 = and i32 %417, 1
  %419 = icmp ne i32 %418, 1
  br i1 %419, label %420, label %421

420:                                              ; preds = %403
  br label %403

421:                                              ; preds = %403
  %422 = load i32, i32* %6, align 4
  %423 = or i32 %422, 524288
  %424 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %428 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %429 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %427, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %431, i32 0, i32 2
  %433 = load i64, i64* %432, align 8
  %434 = add nsw i64 %426, %433
  %435 = add nsw i64 %434, 8
  %436 = call i32 @outl(i32 %423, i64 %435)
  ret i32 0
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
