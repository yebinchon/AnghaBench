; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i32, i32* }

@TRIG_INT = common dso_local global i32 0, align 4
@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@CR_FLAGS_MASK = common dso_local global i32 0, align 4
@CR_EDGE = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"comedi%d: amplc_pci230: ao_cmdtest: channel numbers must increase\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"comedi%d: amplc_pci230: ao_cmdtest: channels must have the same range\0A\00", align 1
@MAX_SPEED_AO = common dso_local global i32 0, align 4
@MIN_SPEED_AO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @pci230_ao_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_ao_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
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
  %19 = load i32, i32* @TRIG_INT, align 4
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
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %37
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 2
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* @TRIG_INT, align 4
  %52 = or i32 128, %51
  %53 = or i32 %52, 129
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %65

58:                                               ; preds = %45, %37
  %59 = load i32, i32* @TRIG_INT, align 4
  %60 = or i32 128, %59
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %62 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %58, %50
  %66 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %67 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70, %65
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %76, %70
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* @TRIG_NOW, align 4
  %84 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %85 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %79
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %93, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92, %79
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %98, %92
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %103 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* @TRIG_COUNT, align 4
  %106 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %107 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %111 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %101
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %117 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %115, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114, %101
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %120, %114
  %124 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %125 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* @TRIG_COUNT, align 4
  %128 = load i32, i32* @TRIG_NONE, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %131 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 8
  %134 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %135 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %123
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %141 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %139, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %138, %123
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %144, %138
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i32 1, i32* %4, align 4
  br label %477

151:                                              ; preds = %147
  %152 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %153 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %156 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sub i32 %157, 1
  %159 = and i32 %154, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %151
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %161, %151
  %165 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %166 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %169 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sub i32 %170, 1
  %172 = and i32 %167, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %164
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %174, %164
  %178 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %179 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %182 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = sub i32 %183, 1
  %185 = and i32 %180, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %177
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %8, align 4
  br label %190

190:                                              ; preds = %187, %177
  %191 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %192 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %195 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = sub i32 %196, 1
  %198 = and i32 %193, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %190
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %200, %190
  %204 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %205 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %208 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = sub i32 %209, 1
  %211 = and i32 %206, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %203
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %8, align 4
  br label %216

216:                                              ; preds = %213, %203
  %217 = load i32, i32* %8, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  store i32 2, i32* %4, align 4
  br label %477

220:                                              ; preds = %216
  %221 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %222 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %221, i32 0, i32 5
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %220
  %226 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %227 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %226, i32 0, i32 5
  store i64 0, i64* %227, align 8
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %8, align 4
  br label %230

230:                                              ; preds = %225, %220
  %231 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %232 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  switch i32 %233, label %304 [
    i32 128, label %234
    i32 129, label %255
  ]

234:                                              ; preds = %230
  %235 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %236 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 8
  %238 = icmp slt i32 %237, 8000
  br i1 %238, label %239, label %244

239:                                              ; preds = %234
  %240 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %241 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %240, i32 0, i32 6
  store i32 8000, i32* %241, align 8
  %242 = load i32, i32* %8, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %8, align 4
  br label %244

244:                                              ; preds = %239, %234
  %245 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %246 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 8
  %248 = icmp ugt i32 %247, -1
  br i1 %248, label %249, label %254

249:                                              ; preds = %244
  %250 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %251 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %250, i32 0, i32 6
  store i32 -1, i32* %251, align 8
  %252 = load i32, i32* %8, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %8, align 4
  br label %254

254:                                              ; preds = %249, %244
  br label %315

255:                                              ; preds = %230
  %256 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %257 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @CR_FLAGS_MASK, align 4
  %260 = xor i32 %259, -1
  %261 = and i32 %258, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %275

263:                                              ; preds = %255
  %264 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %265 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @CR_FLAGS_MASK, align 4
  %268 = xor i32 %267, -1
  %269 = call i8* @COMBINE(i32 %266, i32 0, i32 %268)
  %270 = ptrtoint i8* %269 to i32
  %271 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %272 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %271, i32 0, i32 6
  store i32 %270, i32* %272, align 8
  %273 = load i32, i32* %8, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %8, align 4
  br label %275

275:                                              ; preds = %263, %255
  %276 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %277 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %276, i32 0, i32 6
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @CR_FLAGS_MASK, align 4
  %280 = load i32, i32* @CR_EDGE, align 4
  %281 = load i32, i32* @CR_INVERT, align 4
  %282 = or i32 %280, %281
  %283 = xor i32 %282, -1
  %284 = and i32 %279, %283
  %285 = and i32 %278, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %303

287:                                              ; preds = %275
  %288 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %289 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @CR_FLAGS_MASK, align 4
  %292 = load i32, i32* @CR_EDGE, align 4
  %293 = load i32, i32* @CR_INVERT, align 4
  %294 = or i32 %292, %293
  %295 = xor i32 %294, -1
  %296 = and i32 %291, %295
  %297 = call i8* @COMBINE(i32 %290, i32 0, i32 %296)
  %298 = ptrtoint i8* %297 to i32
  %299 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %300 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %299, i32 0, i32 6
  store i32 %298, i32* %300, align 8
  %301 = load i32, i32* %8, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %8, align 4
  br label %303

303:                                              ; preds = %287, %275
  br label %315

304:                                              ; preds = %230
  %305 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %306 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %305, i32 0, i32 6
  %307 = load i32, i32* %306, align 8
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %304
  %310 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %311 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %310, i32 0, i32 6
  store i32 0, i32* %311, align 8
  %312 = load i32, i32* %8, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %8, align 4
  br label %314

314:                                              ; preds = %309, %304
  br label %315

315:                                              ; preds = %314, %303, %254
  %316 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %317 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %316, i32 0, i32 7
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %320 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %319, i32 0, i32 8
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %318, %321
  br i1 %322, label %323, label %331

323:                                              ; preds = %315
  %324 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %325 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %324, i32 0, i32 8
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %328 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %327, i32 0, i32 7
  store i64 %326, i64* %328, align 8
  %329 = load i32, i32* %8, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %8, align 4
  br label %331

331:                                              ; preds = %323, %315
  %332 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %333 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @TRIG_NONE, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %337, label %348

337:                                              ; preds = %331
  %338 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %339 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %338, i32 0, i32 9
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %337
  %343 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %344 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %343, i32 0, i32 9
  store i64 0, i64* %344, align 8
  %345 = load i32, i32* %8, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %8, align 4
  br label %347

347:                                              ; preds = %342, %337
  br label %348

348:                                              ; preds = %347, %331
  %349 = load i32, i32* %8, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %348
  store i32 3, i32* %4, align 4
  br label %477

352:                                              ; preds = %348
  %353 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %354 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = icmp eq i32 %355, 128
  br i1 %356, label %357, label %378

357:                                              ; preds = %352
  %358 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %359 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %358, i32 0, i32 6
  %360 = load i32, i32* %359, align 8
  store i32 %360, i32* %9, align 4
  %361 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %362 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %361, i32 0, i32 6
  %363 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %364 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %363, i32 0, i32 10
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %367 = and i32 %365, %366
  %368 = call i32 @pci230_ns_to_single_timer(i32* %362, i32 %367)
  %369 = load i32, i32* %9, align 4
  %370 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %371 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %370, i32 0, i32 6
  %372 = load i32, i32* %371, align 8
  %373 = icmp ne i32 %369, %372
  br i1 %373, label %374, label %377

374:                                              ; preds = %357
  %375 = load i32, i32* %8, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %8, align 4
  br label %377

377:                                              ; preds = %374, %357
  br label %378

378:                                              ; preds = %377, %352
  %379 = load i32, i32* %8, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %378
  store i32 4, i32* %4, align 4
  br label %477

382:                                              ; preds = %378
  %383 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %384 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %383, i32 0, i32 11
  %385 = load i32*, i32** %384, align 8
  %386 = icmp ne i32* %385, null
  br i1 %386, label %387, label %472

387:                                              ; preds = %382
  %388 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %389 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %388, i32 0, i32 8
  %390 = load i64, i64* %389, align 8
  %391 = icmp sgt i64 %390, 0
  br i1 %391, label %392, label %472

392:                                              ; preds = %387
  %393 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %394 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %393, i32 0, i32 11
  %395 = load i32*, i32** %394, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 0
  %397 = load i32, i32* %396, align 4
  %398 = call i32 @CR_CHAN(i32 %397)
  store i32 %398, i32* %13, align 4
  %399 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %400 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %399, i32 0, i32 11
  %401 = load i32*, i32** %400, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 0
  %403 = load i32, i32* %402, align 4
  %404 = call i32 @CR_RANGE(i32 %403)
  store i32 %404, i32* %15, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %405

405:                                              ; preds = %444, %392
  %406 = load i32, i32* %11, align 4
  %407 = zext i32 %406 to i64
  %408 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %409 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %408, i32 0, i32 8
  %410 = load i64, i64* %409, align 8
  %411 = icmp slt i64 %407, %410
  br i1 %411, label %412, label %447

412:                                              ; preds = %405
  %413 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %414 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %413, i32 0, i32 11
  %415 = load i32*, i32** %414, align 8
  %416 = load i32, i32* %11, align 4
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = call i32 @CR_CHAN(i32 %419)
  store i32 %420, i32* %12, align 4
  %421 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %422 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %421, i32 0, i32 11
  %423 = load i32*, i32** %422, align 8
  %424 = load i32, i32* %11, align 4
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %423, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = call i32 @CR_RANGE(i32 %427)
  store i32 %428, i32* %14, align 4
  %429 = load i32, i32* %12, align 4
  %430 = load i32, i32* %13, align 4
  %431 = icmp ult i32 %429, %430
  br i1 %431, label %432, label %435

432:                                              ; preds = %412
  %433 = load i32, i32* %10, align 4
  %434 = or i32 %433, 1
  store i32 %434, i32* %10, align 4
  br label %435

435:                                              ; preds = %432, %412
  %436 = load i32, i32* %14, align 4
  %437 = load i32, i32* %15, align 4
  %438 = icmp ne i32 %436, %437
  br i1 %438, label %439, label %442

439:                                              ; preds = %435
  %440 = load i32, i32* %10, align 4
  %441 = or i32 %440, 2
  store i32 %441, i32* %10, align 4
  br label %442

442:                                              ; preds = %439, %435
  %443 = load i32, i32* %12, align 4
  store i32 %443, i32* %13, align 4
  br label %444

444:                                              ; preds = %442
  %445 = load i32, i32* %11, align 4
  %446 = add i32 %445, 1
  store i32 %446, i32* %11, align 4
  br label %405

447:                                              ; preds = %405
  %448 = load i32, i32* %10, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %471

450:                                              ; preds = %447
  %451 = load i32, i32* %8, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %8, align 4
  %453 = load i32, i32* %10, align 4
  %454 = and i32 %453, 1
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %461

456:                                              ; preds = %450
  %457 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %458 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = call i32 @DPRINTK(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %459)
  br label %461

461:                                              ; preds = %456, %450
  %462 = load i32, i32* %10, align 4
  %463 = and i32 %462, 2
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %470

465:                                              ; preds = %461
  %466 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %467 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 4
  %469 = call i32 @DPRINTK(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %468)
  br label %470

470:                                              ; preds = %465, %461
  br label %471

471:                                              ; preds = %470, %447
  br label %472

472:                                              ; preds = %471, %387, %382
  %473 = load i32, i32* %8, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %476

475:                                              ; preds = %472
  store i32 5, i32* %4, align 4
  br label %477

476:                                              ; preds = %472
  store i32 0, i32* %4, align 4
  br label %477

477:                                              ; preds = %476, %475, %381, %351, %219, %150
  %478 = load i32, i32* %4, align 4
  ret i32 %478
}

declare dso_local i8* @COMBINE(i32, i32, i32) #1

declare dso_local i32 @pci230_ns_to_single_timer(i32*, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
