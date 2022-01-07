; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32 }

@CMDF_WRITE = common dso_local global i32 0, align 4
@TRIG_INT = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@CR_EDGE = common dso_local global i32 0, align 4
@boardtype = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @ni_ao_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ao_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %12 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CMDF_WRITE, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32, i32* @CMDF_WRITE, align 4
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %17, %3
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @TRIG_INT, align 4
  %28 = load i32, i32* @TRIG_EXT, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %23
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %23
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @TRIG_TIMER, align 4
  %52 = load i32, i32* @TRIG_EXT, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %59 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %47
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62, %47
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* @TRIG_NOW, align 4
  %76 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %77 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %71
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %87 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %85, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84, %71
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %90, %84
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* @TRIG_COUNT, align 4
  %98 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %99 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %103 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %93
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %109 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %107, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106, %93
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %112, %106
  %116 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %117 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* @TRIG_COUNT, align 4
  %120 = load i32, i32* @TRIG_NONE, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %123 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %127 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %115
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %133 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %131, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %130, %115
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %136, %130
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 1, i32* %4, align 4
  br label %346

143:                                              ; preds = %139
  %144 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %145 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @TRIG_COUNT, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  %150 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %151 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @TRIG_NONE, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %155, %149, %143
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 2, i32* %4, align 4
  br label %346

162:                                              ; preds = %158
  %163 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %164 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @TRIG_EXT, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %198

168:                                              ; preds = %162
  %169 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %170 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @CR_CHAN(i32 %171)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp ugt i32 %173, 18
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  store i32 18, i32* %10, align 4
  br label %176

176:                                              ; preds = %175, %168
  %177 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %178 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @CR_INVERT, align 4
  %181 = load i32, i32* @CR_EDGE, align 4
  %182 = or i32 %180, %181
  %183 = and i32 %179, %182
  %184 = load i32, i32* %10, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %10, align 4
  %186 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %187 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %176
  %192 = load i32, i32* %10, align 4
  %193 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %194 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %193, i32 0, i32 6
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* %8, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %8, align 4
  br label %197

197:                                              ; preds = %191, %176
  br label %209

198:                                              ; preds = %162
  %199 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %200 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %205 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %204, i32 0, i32 6
  store i32 0, i32* %205, align 8
  %206 = load i32, i32* %8, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %8, align 4
  br label %208

208:                                              ; preds = %203, %198
  br label %209

209:                                              ; preds = %208, %197
  %210 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %211 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @TRIG_TIMER, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %246

215:                                              ; preds = %209
  %216 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %217 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %227

221:                                              ; preds = %215
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 4
  %223 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %224 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %223, i32 0, i32 7
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %8, align 4
  br label %227

227:                                              ; preds = %221, %215
  %228 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %229 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = mul nsw i32 %233, 16777215
  %235 = icmp sgt i32 %230, %234
  br i1 %235, label %236, label %245

236:                                              ; preds = %227
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = mul nsw i32 %239, 16777215
  %241 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %242 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %241, i32 0, i32 7
  store i32 %240, i32* %242, align 4
  %243 = load i32, i32* %8, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %8, align 4
  br label %245

245:                                              ; preds = %236, %227
  br label %246

246:                                              ; preds = %245, %209
  %247 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %248 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %247, i32 0, i32 8
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %246
  %252 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %253 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %252, i32 0, i32 8
  store i64 0, i64* %253, align 8
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %256

256:                                              ; preds = %251, %246
  %257 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %258 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %257, i32 0, i32 9
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %261 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %260, i32 0, i32 10
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %259, %262
  br i1 %263, label %264, label %272

264:                                              ; preds = %256
  %265 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %266 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %265, i32 0, i32 10
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %269 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %268, i32 0, i32 9
  store i64 %267, i64* %269, align 8
  %270 = load i32, i32* %8, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %8, align 4
  br label %272

272:                                              ; preds = %264, %256
  %273 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %274 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @TRIG_COUNT, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %289

278:                                              ; preds = %272
  %279 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %280 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %279, i32 0, i32 11
  %281 = load i32, i32* %280, align 8
  %282 = icmp sgt i32 %281, 16777215
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %285 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %284, i32 0, i32 11
  store i32 16777215, i32* %285, align 8
  %286 = load i32, i32* %8, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %8, align 4
  br label %288

288:                                              ; preds = %283, %278
  br label %300

289:                                              ; preds = %272
  %290 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %291 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %290, i32 0, i32 11
  %292 = load i32, i32* %291, align 8
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %289
  %295 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %296 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %295, i32 0, i32 11
  store i32 0, i32* %296, align 8
  %297 = load i32, i32* %8, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %8, align 4
  br label %299

299:                                              ; preds = %294, %289
  br label %300

300:                                              ; preds = %299, %288
  %301 = load i32, i32* %8, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %300
  store i32 3, i32* %4, align 4
  br label %346

304:                                              ; preds = %300
  %305 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %306 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @TRIG_TIMER, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %337

310:                                              ; preds = %304
  %311 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %312 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %311, i32 0, i32 7
  %313 = load i32, i32* %312, align 4
  store i32 %313, i32* %9, align 4
  %314 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %315 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %316 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %317 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %316, i32 0, i32 7
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %320 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %323 = and i32 %321, %322
  %324 = call i32 @ni_ns_to_timer(%struct.comedi_device* %315, i32 %318, i32 %323)
  %325 = call i32 @ni_timer_to_ns(%struct.comedi_device* %314, i32 %324)
  %326 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %327 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %326, i32 0, i32 7
  store i32 %325, i32* %327, align 4
  %328 = load i32, i32* %9, align 4
  %329 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %330 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %329, i32 0, i32 7
  %331 = load i32, i32* %330, align 4
  %332 = icmp ne i32 %328, %331
  br i1 %332, label %333, label %336

333:                                              ; preds = %310
  %334 = load i32, i32* %8, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %8, align 4
  br label %336

336:                                              ; preds = %333, %310
  br label %337

337:                                              ; preds = %336, %304
  %338 = load i32, i32* %8, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %337
  store i32 4, i32* %4, align 4
  br label %346

341:                                              ; preds = %337
  %342 = load i32, i32* %8, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %341
  store i32 5, i32* %4, align 4
  br label %346

345:                                              ; preds = %341
  store i32 0, i32* %4, align 4
  br label %346

346:                                              ; preds = %345, %344, %340, %303, %161, %142
  %347 = load i32, i32* %4, align 4
  ret i32 %347
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @ni_timer_to_ns(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni_ns_to_timer(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
