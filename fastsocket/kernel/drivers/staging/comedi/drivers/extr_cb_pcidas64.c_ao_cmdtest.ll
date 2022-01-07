; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ao_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ao_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@TRIG_INT = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@max_counter_value = common dso_local global i32 0, align 4
@TIMER_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"chanlist must use consecutive channels\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @ao_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ao_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
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
  %16 = load i32, i32* @TRIG_INT, align 4
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
  %40 = load i32, i32* @TRIG_TIMER, align 4
  %41 = load i32, i32* @TRIG_EXT, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %36
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %54 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %36
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %51
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %62 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* @TRIG_NOW, align 4
  %65 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %66 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %70 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %60
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %76 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73, %60
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %79, %73
  %83 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %84 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* @TRIG_COUNT, align 4
  %87 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %88 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %92 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %82
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %98 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95, %82
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %101, %95
  %105 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %106 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* @TRIG_NONE, align 4
  %109 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %110 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %114 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %104
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %120 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %118, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117, %104
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %123, %117
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 1, i32* %4, align 4
  br label %354

130:                                              ; preds = %126
  %131 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %132 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @TRIG_INT, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %130
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @TRIG_EXT, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %142, %136, %130
  %146 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %147 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @TRIG_TIMER, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %145
  %152 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %153 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @TRIG_EXT, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %157, %151, %145
  %161 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %162 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @TRIG_EXT, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %160
  %167 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %168 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @TRIG_TIMER, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %175

175:                                              ; preds = %172, %166, %160
  %176 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %177 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @TRIG_COUNT, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %196

181:                                              ; preds = %175
  %182 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %183 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @TRIG_NONE, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %181
  %188 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %189 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @TRIG_EXT, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %187
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %8, align 4
  br label %196

196:                                              ; preds = %193, %187, %181, %175
  %197 = load i32, i32* %8, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store i32 2, i32* %4, align 4
  br label %354

200:                                              ; preds = %196
  %201 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %202 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @TRIG_TIMER, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %244

206:                                              ; preds = %200
  %207 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %208 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %211 = call %struct.TYPE_2__* @board(%struct.comedi_device* %210)
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = icmp slt i32 %209, %213
  br i1 %214, label %215, label %224

215:                                              ; preds = %206
  %216 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %217 = call %struct.TYPE_2__* @board(%struct.comedi_device* %216)
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %221 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %220, i32 0, i32 5
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* %8, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %8, align 4
  br label %224

224:                                              ; preds = %215, %206
  %225 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %226 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %229 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %228, i32 0, i32 9
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @get_ao_divisor(i32 %227, i32 %230)
  %232 = load i32, i32* @max_counter_value, align 4
  %233 = icmp sgt i32 %231, %232
  br i1 %233, label %234, label %243

234:                                              ; preds = %224
  %235 = load i32, i32* @max_counter_value, align 4
  %236 = add nsw i32 %235, 2
  %237 = load i32, i32* @TIMER_BASE, align 4
  %238 = mul nsw i32 %236, %237
  %239 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %240 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %239, i32 0, i32 5
  store i32 %238, i32* %240, align 4
  %241 = load i32, i32* %8, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %8, align 4
  br label %243

243:                                              ; preds = %234, %224
  br label %244

244:                                              ; preds = %243, %200
  %245 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %246 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %244
  %250 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %251 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %250, i32 0, i32 6
  store i32 1, i32* %251, align 8
  %252 = load i32, i32* %8, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %8, align 4
  br label %254

254:                                              ; preds = %249, %244
  %255 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %256 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %255, i32 0, i32 7
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %259 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %258, i32 0, i32 6
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %257, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %254
  %263 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %264 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %263, i32 0, i32 6
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %267 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %266, i32 0, i32 7
  store i32 %265, i32* %267, align 4
  %268 = load i32, i32* %8, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %8, align 4
  br label %270

270:                                              ; preds = %262, %254
  %271 = load i32, i32* %8, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %270
  store i32 3, i32* %4, align 4
  br label %354

274:                                              ; preds = %270
  %275 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %276 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @TRIG_TIMER, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %304

280:                                              ; preds = %274
  %281 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %282 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %10, align 4
  %284 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %285 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %284, i32 0, i32 5
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %288 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %287, i32 0, i32 9
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @get_divisor(i32 %286, i32 %289)
  %291 = load i32, i32* @TIMER_BASE, align 4
  %292 = mul nsw i32 %290, %291
  %293 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %294 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %293, i32 0, i32 5
  store i32 %292, i32* %294, align 4
  %295 = load i32, i32* %10, align 4
  %296 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %297 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 4
  %299 = icmp ne i32 %295, %298
  br i1 %299, label %300, label %303

300:                                              ; preds = %280
  %301 = load i32, i32* %8, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %8, align 4
  br label %303

303:                                              ; preds = %300, %280
  br label %304

304:                                              ; preds = %303, %274
  %305 = load i32, i32* %8, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %304
  store i32 4, i32* %4, align 4
  br label %354

308:                                              ; preds = %304
  %309 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %310 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %309, i32 0, i32 8
  %311 = load i32*, i32** %310, align 8
  %312 = icmp ne i32* %311, null
  br i1 %312, label %313, label %349

313:                                              ; preds = %308
  %314 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %315 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %314, i32 0, i32 8
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 0
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @CR_CHAN(i32 %318)
  store i32 %319, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %320

320:                                              ; preds = %345, %313
  %321 = load i32, i32* %11, align 4
  %322 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %323 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %322, i32 0, i32 6
  %324 = load i32, i32* %323, align 8
  %325 = icmp slt i32 %321, %324
  br i1 %325, label %326, label %348

326:                                              ; preds = %320
  %327 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %328 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %327, i32 0, i32 8
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %11, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @CR_CHAN(i32 %333)
  %335 = load i32, i32* %12, align 4
  %336 = load i32, i32* %11, align 4
  %337 = add i32 %335, %336
  %338 = icmp ne i32 %334, %337
  br i1 %338, label %339, label %344

339:                                              ; preds = %326
  %340 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %341 = call i32 @comedi_error(%struct.comedi_device* %340, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %342 = load i32, i32* %8, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %8, align 4
  br label %348

344:                                              ; preds = %326
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %11, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %11, align 4
  br label %320

348:                                              ; preds = %339, %320
  br label %349

349:                                              ; preds = %348, %308
  %350 = load i32, i32* %8, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %349
  store i32 5, i32* %4, align 4
  br label %354

353:                                              ; preds = %349
  store i32 0, i32* %4, align 4
  br label %354

354:                                              ; preds = %353, %352, %307, %273, %199, %129
  %355 = load i32, i32* %4, align 4
  ret i32 %355
}

declare dso_local %struct.TYPE_2__* @board(%struct.comedi_device*) #1

declare dso_local i32 @get_ao_divisor(i32, i32) #1

declare dso_local i32 @get_divisor(i32, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
