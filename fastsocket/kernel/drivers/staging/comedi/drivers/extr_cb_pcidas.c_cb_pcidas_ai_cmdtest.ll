; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32* }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@TIMER_BASE = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"entries in chanlist must be consecutive channels, counting upwards\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"entries in chanlist must all have the same gain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @cb_pcidas_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
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
  %67 = load i32, i32* @TRIG_NOW, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @TRIG_EXT, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %76 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %62
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %82 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79, %62
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %85, %79
  %89 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %90 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* @TRIG_COUNT, align 4
  %93 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %94 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %98 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %88
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %104 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %102, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101, %88
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %107, %101
  %111 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %112 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* @TRIG_COUNT, align 4
  %115 = load i32, i32* @TRIG_NONE, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %118 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %122 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %110
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %128 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125, %110
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %131, %125
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 1, i32* %4, align 4
  br label %506

138:                                              ; preds = %134
  %139 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %140 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @TRIG_NOW, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %138
  %145 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %146 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @TRIG_EXT, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %150, %144, %138
  %154 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %155 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @TRIG_FOLLOW, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %174

159:                                              ; preds = %153
  %160 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %161 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @TRIG_TIMER, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %159
  %166 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %167 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @TRIG_EXT, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %171, %165, %159, %153
  %175 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %176 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @TRIG_TIMER, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %195

180:                                              ; preds = %174
  %181 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %182 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @TRIG_EXT, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %180
  %187 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %188 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @TRIG_NOW, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %192, %186, %180, %174
  %196 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %197 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @TRIG_COUNT, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %195
  %202 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %203 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @TRIG_NONE, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  br label %210

210:                                              ; preds = %207, %201, %195
  %211 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %212 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @TRIG_FOLLOW, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %225

216:                                              ; preds = %210
  %217 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %218 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @TRIG_NOW, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %216
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %8, align 4
  br label %225

225:                                              ; preds = %222, %216, %210
  %226 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %227 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @TRIG_FOLLOW, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %240

231:                                              ; preds = %225
  %232 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %233 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @TRIG_NOW, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %231
  %238 = load i32, i32* %8, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %8, align 4
  br label %240

240:                                              ; preds = %237, %231, %225
  %241 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %242 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @TRIG_EXT, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %261

246:                                              ; preds = %240
  %247 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %248 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @TRIG_EXT, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %258, label %252

252:                                              ; preds = %246
  %253 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %254 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @TRIG_EXT, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %252, %246
  %259 = load i32, i32* %8, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %8, align 4
  br label %261

261:                                              ; preds = %258, %252, %240
  %262 = load i32, i32* %8, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  store i32 2, i32* %4, align 4
  br label %506

265:                                              ; preds = %261
  %266 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %267 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %266, i32 0, i32 5
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %272 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %271, i32 0, i32 5
  store i64 0, i64* %272, align 8
  %273 = load i32, i32* %8, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %8, align 4
  br label %275

275:                                              ; preds = %270, %265
  %276 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %277 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @TRIG_TIMER, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %306

281:                                              ; preds = %275
  %282 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %283 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %289 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %288, i32 0, i32 7
  %290 = load i32, i32* %289, align 4
  %291 = mul nsw i32 %287, %290
  %292 = icmp slt i32 %284, %291
  br i1 %292, label %293, label %305

293:                                              ; preds = %281
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %298 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %297, i32 0, i32 7
  %299 = load i32, i32* %298, align 4
  %300 = mul nsw i32 %296, %299
  %301 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %302 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %301, i32 0, i32 6
  store i32 %300, i32* %302, align 8
  %303 = load i32, i32* %8, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %8, align 4
  br label %305

305:                                              ; preds = %293, %281
  br label %306

306:                                              ; preds = %305, %275
  %307 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %308 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @TRIG_TIMER, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %329

312:                                              ; preds = %306
  %313 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %314 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %313, i32 0, i32 8
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = icmp slt i32 %315, %318
  br i1 %319, label %320, label %328

320:                                              ; preds = %312
  %321 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %325 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %324, i32 0, i32 8
  store i32 %323, i32* %325, align 8
  %326 = load i32, i32* %8, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %8, align 4
  br label %328

328:                                              ; preds = %320, %312
  br label %329

329:                                              ; preds = %328, %306
  %330 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %331 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %330, i32 0, i32 9
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %334 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %333, i32 0, i32 7
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %332, %335
  br i1 %336, label %337, label %345

337:                                              ; preds = %329
  %338 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %339 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %338, i32 0, i32 7
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %342 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %341, i32 0, i32 9
  store i32 %340, i32* %342, align 4
  %343 = load i32, i32* %8, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %8, align 4
  br label %345

345:                                              ; preds = %337, %329
  %346 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %347 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %346, i32 0, i32 4
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @TRIG_NONE, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %362

351:                                              ; preds = %345
  %352 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %353 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %352, i32 0, i32 10
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %351
  %357 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %358 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %357, i32 0, i32 10
  store i64 0, i64* %358, align 8
  %359 = load i32, i32* %8, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %8, align 4
  br label %361

361:                                              ; preds = %356, %351
  br label %362

362:                                              ; preds = %361, %345
  %363 = load i32, i32* %8, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %362
  store i32 3, i32* %4, align 4
  br label %506

366:                                              ; preds = %362
  %367 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %368 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @TRIG_TIMER, align 4
  %371 = icmp eq i32 %369, %370
  br i1 %371, label %372, label %398

372:                                              ; preds = %366
  %373 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %374 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %373, i32 0, i32 6
  %375 = load i32, i32* %374, align 8
  store i32 %375, i32* %9, align 4
  %376 = load i32, i32* @TIMER_BASE, align 4
  %377 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 1
  %379 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 0
  %381 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %382 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %381, i32 0, i32 6
  %383 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %384 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %383, i32 0, i32 11
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %387 = and i32 %385, %386
  %388 = call i32 @i8253_cascade_ns_to_timer_2div(i32 %376, i32* %378, i32* %380, i32* %382, i32 %387)
  %389 = load i32, i32* %9, align 4
  %390 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %391 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %390, i32 0, i32 6
  %392 = load i32, i32* %391, align 8
  %393 = icmp ne i32 %389, %392
  br i1 %393, label %394, label %397

394:                                              ; preds = %372
  %395 = load i32, i32* %8, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %8, align 4
  br label %397

397:                                              ; preds = %394, %372
  br label %398

398:                                              ; preds = %397, %366
  %399 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %400 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = load i32, i32* @TRIG_TIMER, align 4
  %403 = icmp eq i32 %401, %402
  br i1 %403, label %404, label %430

404:                                              ; preds = %398
  %405 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %406 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %405, i32 0, i32 8
  %407 = load i32, i32* %406, align 8
  store i32 %407, i32* %9, align 4
  %408 = load i32, i32* @TIMER_BASE, align 4
  %409 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 1
  %411 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %412 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %411, i32 0, i32 0
  %413 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %414 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %413, i32 0, i32 8
  %415 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %416 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %415, i32 0, i32 11
  %417 = load i32, i32* %416, align 8
  %418 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %419 = and i32 %417, %418
  %420 = call i32 @i8253_cascade_ns_to_timer_2div(i32 %408, i32* %410, i32* %412, i32* %414, i32 %419)
  %421 = load i32, i32* %9, align 4
  %422 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %423 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %422, i32 0, i32 8
  %424 = load i32, i32* %423, align 8
  %425 = icmp ne i32 %421, %424
  br i1 %425, label %426, label %429

426:                                              ; preds = %404
  %427 = load i32, i32* %8, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %8, align 4
  br label %429

429:                                              ; preds = %426, %404
  br label %430

430:                                              ; preds = %429, %398
  %431 = load i32, i32* %8, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %434

433:                                              ; preds = %430
  store i32 4, i32* %4, align 4
  br label %506

434:                                              ; preds = %430
  %435 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %436 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %435, i32 0, i32 12
  %437 = load i32*, i32** %436, align 8
  %438 = icmp ne i32* %437, null
  br i1 %438, label %439, label %501

439:                                              ; preds = %434
  %440 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %441 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %440, i32 0, i32 12
  %442 = load i32*, i32** %441, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 0
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @CR_RANGE(i32 %444)
  store i32 %445, i32* %11, align 4
  %446 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %447 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %446, i32 0, i32 12
  %448 = load i32*, i32** %447, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 0
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @CR_CHAN(i32 %450)
  store i32 %451, i32* %12, align 4
  store i32 1, i32* %10, align 4
  br label %452

452:                                              ; preds = %497, %439
  %453 = load i32, i32* %10, align 4
  %454 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %455 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %454, i32 0, i32 7
  %456 = load i32, i32* %455, align 4
  %457 = icmp slt i32 %453, %456
  br i1 %457, label %458, label %500

458:                                              ; preds = %452
  %459 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %460 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %459, i32 0, i32 12
  %461 = load i32*, i32** %460, align 8
  %462 = load i32, i32* %10, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %461, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = call i32 @CR_CHAN(i32 %465)
  %467 = load i32, i32* %12, align 4
  %468 = load i32, i32* %10, align 4
  %469 = add nsw i32 %467, %468
  %470 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %471 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  %473 = srem i32 %469, %472
  %474 = icmp ne i32 %466, %473
  br i1 %474, label %475, label %480

475:                                              ; preds = %458
  %476 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %477 = call i32 @comedi_error(%struct.comedi_device* %476, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %478 = load i32, i32* %8, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %8, align 4
  br label %480

480:                                              ; preds = %475, %458
  %481 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %482 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %481, i32 0, i32 12
  %483 = load i32*, i32** %482, align 8
  %484 = load i32, i32* %10, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i32, i32* %483, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = call i32 @CR_RANGE(i32 %487)
  %489 = load i32, i32* %11, align 4
  %490 = icmp ne i32 %488, %489
  br i1 %490, label %491, label %496

491:                                              ; preds = %480
  %492 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %493 = call i32 @comedi_error(%struct.comedi_device* %492, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %494 = load i32, i32* %8, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %8, align 4
  br label %496

496:                                              ; preds = %491, %480
  br label %497

497:                                              ; preds = %496
  %498 = load i32, i32* %10, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %10, align 4
  br label %452

500:                                              ; preds = %452
  br label %501

501:                                              ; preds = %500, %434
  %502 = load i32, i32* %8, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %505

504:                                              ; preds = %501
  store i32 5, i32* %4, align 4
  br label %506

505:                                              ; preds = %501
  store i32 0, i32* %4, align 4
  br label %506

506:                                              ; preds = %505, %504, %433, %365, %264, %137
  %507 = load i32, i32* %4, align 4
  ret i32 %507
}

declare dso_local i32 @i8253_cascade_ns_to_timer_2div(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
