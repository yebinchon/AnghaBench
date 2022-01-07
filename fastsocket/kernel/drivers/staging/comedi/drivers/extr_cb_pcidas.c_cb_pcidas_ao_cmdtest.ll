; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ao_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ao_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32* }

@TRIG_INT = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@TIMER_BASE = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"channels must be ordered channel 0, channel 1 in chanlist\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @cb_pcidas_ao_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas_ao_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %11 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @TRIG_INT, align 4
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %3
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @TRIG_TIMER, align 4
  %36 = load i32, i32* @TRIG_EXT, align 4
  %37 = or i32 %35, %36
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

46:                                               ; preds = %31
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %31
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %46
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @TRIG_NOW, align 4
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %55
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %71 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68, %55
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %74, %68
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* @TRIG_COUNT, align 4
  %82 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %83 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %87 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %77
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %93 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %91, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90, %77
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %96, %90
  %100 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %101 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* @TRIG_COUNT, align 4
  %104 = load i32, i32* @TRIG_NONE, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %107 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %111 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %99
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %117 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %115, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114, %99
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %120, %114
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 1, i32* %4, align 4
  br label %304

127:                                              ; preds = %123
  %128 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %129 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @TRIG_TIMER, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %127
  %134 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %135 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @TRIG_EXT, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %139, %133, %127
  %143 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %144 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @TRIG_COUNT, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %142
  %149 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %150 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @TRIG_NONE, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  br label %157

157:                                              ; preds = %154, %148, %142
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i32 2, i32* %4, align 4
  br label %304

161:                                              ; preds = %157
  %162 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %163 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %168 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %167, i32 0, i32 5
  store i64 0, i64* %168, align 8
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %166, %161
  %172 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %173 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @TRIG_TIMER, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %194

177:                                              ; preds = %171
  %178 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %179 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %177
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %190 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %185, %177
  br label %194

194:                                              ; preds = %193, %171
  %195 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %196 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %199 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %198, i32 0, i32 8
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %197, %200
  br i1 %201, label %202, label %210

202:                                              ; preds = %194
  %203 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %204 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %203, i32 0, i32 8
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %207 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %206, i32 0, i32 7
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  br label %210

210:                                              ; preds = %202, %194
  %211 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %212 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @TRIG_NONE, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %227

216:                                              ; preds = %210
  %217 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %218 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %217, i32 0, i32 9
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %216
  %222 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %223 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %222, i32 0, i32 9
  store i64 0, i64* %223, align 8
  %224 = load i32, i32* %8, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %8, align 4
  br label %226

226:                                              ; preds = %221, %216
  br label %227

227:                                              ; preds = %226, %210
  %228 = load i32, i32* %8, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %227
  store i32 3, i32* %4, align 4
  br label %304

231:                                              ; preds = %227
  %232 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %233 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @TRIG_TIMER, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %263

237:                                              ; preds = %231
  %238 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %239 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 8
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* @TIMER_BASE, align 4
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %247 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %246, i32 0, i32 6
  %248 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %249 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %248, i32 0, i32 10
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %252 = and i32 %250, %251
  %253 = call i32 @i8253_cascade_ns_to_timer_2div(i32 %241, i32* %243, i32* %245, i32* %247, i32 %252)
  %254 = load i32, i32* %9, align 4
  %255 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %256 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %255, i32 0, i32 6
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %254, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %237
  %260 = load i32, i32* %8, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %8, align 4
  br label %262

262:                                              ; preds = %259, %237
  br label %263

263:                                              ; preds = %262, %231
  %264 = load i32, i32* %8, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %263
  store i32 4, i32* %4, align 4
  br label %304

267:                                              ; preds = %263
  %268 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %269 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %268, i32 0, i32 11
  %270 = load i32*, i32** %269, align 8
  %271 = icmp ne i32* %270, null
  br i1 %271, label %272, label %299

272:                                              ; preds = %267
  %273 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %274 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %273, i32 0, i32 8
  %275 = load i32, i32* %274, align 8
  %276 = icmp sgt i32 %275, 1
  br i1 %276, label %277, label %299

277:                                              ; preds = %272
  %278 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %279 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %278, i32 0, i32 11
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @CR_CHAN(i32 %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %293, label %285

285:                                              ; preds = %277
  %286 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %287 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %286, i32 0, i32 11
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @CR_CHAN(i32 %290)
  %292 = icmp ne i32 %291, 1
  br i1 %292, label %293, label %298

293:                                              ; preds = %285, %277
  %294 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %295 = call i32 @comedi_error(%struct.comedi_device* %294, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %296 = load i32, i32* %8, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %8, align 4
  br label %298

298:                                              ; preds = %293, %285
  br label %299

299:                                              ; preds = %298, %272, %267
  %300 = load i32, i32* %8, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %299
  store i32 5, i32* %4, align 4
  br label %304

303:                                              ; preds = %299
  store i32 0, i32* %4, align 4
  br label %304

304:                                              ; preds = %303, %302, %266, %230, %160, %126
  %305 = load i32, i32* %4, align 4
  ret i32 %305
}

declare dso_local i32 @i8253_cascade_ns_to_timer_2div(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
