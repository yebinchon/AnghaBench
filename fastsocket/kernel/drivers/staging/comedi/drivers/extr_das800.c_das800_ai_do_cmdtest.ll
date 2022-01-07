; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das800.c_das800_ai_do_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das800.c_das800_ai_do_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32* }

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
@N_CHAN_AI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"entries in chanlist must be consecutive channels, counting upwards\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"entries in chanlist must all have the same gain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @das800_ai_do_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das800_ai_do_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
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
  %41 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %36
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %52 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49, %36
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %55, %49
  %59 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %60 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @TRIG_TIMER, align 4
  %63 = load i32, i32* @TRIG_EXT, align 4
  %64 = or i32 %62, %63
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

73:                                               ; preds = %58
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %76 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73, %58
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
  %108 = load i32, i32* @TRIG_COUNT, align 4
  %109 = load i32, i32* @TRIG_NONE, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %112 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %116 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %104
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %122 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %120, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119, %104
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %125, %119
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 1, i32* %4, align 4
  br label %378

132:                                              ; preds = %128
  %133 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %134 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @TRIG_NOW, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %132
  %139 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %140 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @TRIG_EXT, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %144, %138, %132
  %148 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %149 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @TRIG_TIMER, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %147
  %154 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %155 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @TRIG_EXT, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %159, %153, %147
  %163 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %164 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @TRIG_COUNT, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %162
  %169 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %170 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @TRIG_NONE, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %168
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %174, %168, %162
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  store i32 2, i32* %4, align 4
  br label %378

181:                                              ; preds = %177
  %182 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %183 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %188 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %187, i32 0, i32 5
  store i64 0, i64* %188, align 8
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %8, align 4
  br label %191

191:                                              ; preds = %186, %181
  %192 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %193 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @TRIG_TIMER, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %214

197:                                              ; preds = %191
  %198 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %199 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %213

205:                                              ; preds = %197
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %210 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %209, i32 0, i32 6
  store i32 %208, i32* %210, align 8
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %213

213:                                              ; preds = %205, %197
  br label %214

214:                                              ; preds = %213, %191
  %215 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %216 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %214
  %220 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %221 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %220, i32 0, i32 7
  store i32 1, i32* %221, align 4
  %222 = load i32, i32* %8, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %8, align 4
  br label %224

224:                                              ; preds = %219, %214
  %225 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %226 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %225, i32 0, i32 8
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %229 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %227, %230
  br i1 %231, label %232, label %240

232:                                              ; preds = %224
  %233 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %234 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %233, i32 0, i32 7
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %237 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %236, i32 0, i32 8
  store i32 %235, i32* %237, align 8
  %238 = load i32, i32* %8, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %8, align 4
  br label %240

240:                                              ; preds = %232, %224
  %241 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %242 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @TRIG_COUNT, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %257

246:                                              ; preds = %240
  %247 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %248 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %247, i32 0, i32 9
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %246
  %252 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %253 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %252, i32 0, i32 9
  store i32 1, i32* %253, align 4
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %256

256:                                              ; preds = %251, %246
  br label %268

257:                                              ; preds = %240
  %258 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %259 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %258, i32 0, i32 9
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %257
  %263 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %264 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %263, i32 0, i32 9
  store i32 0, i32* %264, align 4
  %265 = load i32, i32* %8, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %8, align 4
  br label %267

267:                                              ; preds = %262, %257
  br label %268

268:                                              ; preds = %267, %256
  %269 = load i32, i32* %8, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %268
  store i32 3, i32* %4, align 4
  br label %378

272:                                              ; preds = %268
  %273 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %274 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @TRIG_TIMER, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %304

278:                                              ; preds = %272
  %279 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %280 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 8
  store i32 %281, i32* %9, align 4
  %282 = load i32, i32* @TIMER_BASE, align 4
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 1
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  %287 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %288 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %287, i32 0, i32 6
  %289 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %290 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %289, i32 0, i32 10
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %293 = and i32 %291, %292
  %294 = call i32 @i8253_cascade_ns_to_timer_2div(i32 %282, i32* %284, i32* %286, i32* %288, i32 %293)
  %295 = load i32, i32* %9, align 4
  %296 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %297 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %296, i32 0, i32 6
  %298 = load i32, i32* %297, align 8
  %299 = icmp ne i32 %295, %298
  br i1 %299, label %300, label %303

300:                                              ; preds = %278
  %301 = load i32, i32* %8, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %8, align 4
  br label %303

303:                                              ; preds = %300, %278
  br label %304

304:                                              ; preds = %303, %272
  %305 = load i32, i32* %8, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %304
  store i32 4, i32* %4, align 4
  br label %378

308:                                              ; preds = %304
  %309 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %310 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %309, i32 0, i32 11
  %311 = load i32*, i32** %310, align 8
  %312 = icmp ne i32* %311, null
  br i1 %312, label %313, label %373

313:                                              ; preds = %308
  %314 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %315 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %314, i32 0, i32 11
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 0
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @CR_RANGE(i32 %318)
  store i32 %319, i32* %10, align 4
  %320 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %321 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %320, i32 0, i32 11
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 0
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @CR_CHAN(i32 %324)
  store i32 %325, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %326

326:                                              ; preds = %369, %313
  %327 = load i32, i32* %12, align 4
  %328 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %329 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %328, i32 0, i32 7
  %330 = load i32, i32* %329, align 4
  %331 = icmp slt i32 %327, %330
  br i1 %331, label %332, label %372

332:                                              ; preds = %326
  %333 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %334 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %333, i32 0, i32 11
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %12, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @CR_CHAN(i32 %339)
  %341 = load i32, i32* %11, align 4
  %342 = load i32, i32* %12, align 4
  %343 = add nsw i32 %341, %342
  %344 = load i32, i32* @N_CHAN_AI, align 4
  %345 = srem i32 %343, %344
  %346 = icmp ne i32 %340, %345
  br i1 %346, label %347, label %352

347:                                              ; preds = %332
  %348 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %349 = call i32 @comedi_error(%struct.comedi_device* %348, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %350 = load i32, i32* %8, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %8, align 4
  br label %352

352:                                              ; preds = %347, %332
  %353 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %354 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %353, i32 0, i32 11
  %355 = load i32*, i32** %354, align 8
  %356 = load i32, i32* %12, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @CR_RANGE(i32 %359)
  %361 = load i32, i32* %10, align 4
  %362 = icmp ne i32 %360, %361
  br i1 %362, label %363, label %368

363:                                              ; preds = %352
  %364 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %365 = call i32 @comedi_error(%struct.comedi_device* %364, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %366 = load i32, i32* %8, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %8, align 4
  br label %368

368:                                              ; preds = %363, %352
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* %12, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %12, align 4
  br label %326

372:                                              ; preds = %326
  br label %373

373:                                              ; preds = %372, %308
  %374 = load i32, i32* %8, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %373
  store i32 5, i32* %4, align 4
  br label %378

377:                                              ; preds = %373
  store i32 0, i32* %4, align 4
  br label %378

378:                                              ; preds = %377, %376, %307, %271, %180, %131
  %379 = load i32, i32* %4, align 4
  ret i32 %379
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
