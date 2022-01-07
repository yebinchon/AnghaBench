; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16.c_das16_cmd_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16.c_das16_cmd_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32* }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"entries in chanlist must be consecutive channels, counting upwards\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"entries in chanlist must all have the same gain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @das16_cmd_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das16_cmd_test(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
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
  %19 = load i32, i32* @TRIG_NOW, align 4
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
  %41 = load i32, i32* @TRIG_FOLLOW, align 4
  store i32 %41, i32* %13, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 1024
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load i32, i32* @TRIG_TIMER, align 4
  %48 = load i32, i32* @TRIG_EXT, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %46, %37
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %59 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62, %52
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* @TRIG_TIMER, align 4
  %76 = load i32, i32* @TRIG_EXT, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %13, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, 1024
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load i32, i32* @TRIG_NOW, align 4
  %84 = load i32, i32* %13, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %82, %71
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %93 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %86
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %99 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96, %86
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %102, %96
  %106 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %107 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* @TRIG_COUNT, align 4
  %110 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %111 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %115 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %105
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %121 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %119, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118, %105
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %124, %118
  %128 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %129 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* @TRIG_COUNT, align 4
  %132 = load i32, i32* @TRIG_NONE, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %135 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %139 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %127
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %145 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %143, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %142, %127
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %148, %142
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i32 1, i32* %4, align 4
  br label %506

155:                                              ; preds = %151
  %156 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %157 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @TRIG_TIMER, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %155
  %162 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %163 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @TRIG_EXT, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %161
  %168 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %169 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @TRIG_FOLLOW, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %176

176:                                              ; preds = %173, %167, %161, %155
  %177 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %178 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @TRIG_TIMER, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %197

182:                                              ; preds = %176
  %183 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %184 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @TRIG_EXT, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %197

188:                                              ; preds = %182
  %189 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %190 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @TRIG_NOW, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = load i32, i32* %8, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %8, align 4
  br label %197

197:                                              ; preds = %194, %188, %182, %176
  %198 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %199 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @TRIG_NONE, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %212

203:                                              ; preds = %197
  %204 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %205 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @TRIG_COUNT, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %203
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %8, align 4
  br label %212

212:                                              ; preds = %209, %203, %197
  %213 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %214 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @TRIG_FOLLOW, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %227

218:                                              ; preds = %212
  %219 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %220 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @TRIG_NOW, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %8, align 4
  br label %227

227:                                              ; preds = %224, %218, %212
  %228 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %229 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @TRIG_FOLLOW, align 4
  %232 = icmp ne i32 %230, %231
  br i1 %232, label %233, label %242

233:                                              ; preds = %227
  %234 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %235 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @TRIG_NOW, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %233
  %240 = load i32, i32* %8, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %8, align 4
  br label %242

242:                                              ; preds = %239, %233, %227
  %243 = load i32, i32* %8, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %242
  store i32 2, i32* %4, align 4
  br label %506

246:                                              ; preds = %242
  %247 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %248 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %247, i32 0, i32 5
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %246
  %252 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %253 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %252, i32 0, i32 5
  store i64 0, i64* %253, align 8
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %256

256:                                              ; preds = %251, %246
  %257 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %258 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @TRIG_FOLLOW, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %273

262:                                              ; preds = %256
  %263 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %264 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %263, i32 0, i32 6
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %262
  %268 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %269 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %268, i32 0, i32 6
  store i32 0, i32* %269, align 8
  %270 = load i32, i32* %8, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %8, align 4
  br label %272

272:                                              ; preds = %267, %262
  br label %273

273:                                              ; preds = %272, %256
  %274 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %275 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %274, i32 0, i32 7
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %278 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %277, i32 0, i32 8
  %279 = load i32, i32* %278, align 8
  %280 = icmp ne i32 %276, %279
  br i1 %280, label %281, label %289

281:                                              ; preds = %273
  %282 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %283 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %282, i32 0, i32 8
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %286 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %285, i32 0, i32 7
  store i32 %284, i32* %286, align 4
  %287 = load i32, i32* %8, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %8, align 4
  br label %289

289:                                              ; preds = %281, %273
  %290 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %291 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @TRIG_TIMER, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %320

295:                                              ; preds = %289
  %296 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %297 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %296, i32 0, i32 6
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %303 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %302, i32 0, i32 8
  %304 = load i32, i32* %303, align 8
  %305 = mul nsw i32 %301, %304
  %306 = icmp slt i32 %298, %305
  br i1 %306, label %307, label %319

307:                                              ; preds = %295
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %312 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %311, i32 0, i32 8
  %313 = load i32, i32* %312, align 8
  %314 = mul nsw i32 %310, %313
  %315 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %316 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %315, i32 0, i32 6
  store i32 %314, i32* %316, align 8
  %317 = load i32, i32* %8, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %8, align 4
  br label %319

319:                                              ; preds = %307, %295
  br label %320

320:                                              ; preds = %319, %289
  %321 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %322 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @TRIG_TIMER, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %326, label %343

326:                                              ; preds = %320
  %327 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %328 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %327, i32 0, i32 9
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %331 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = icmp ult i32 %329, %332
  br i1 %333, label %334, label %342

334:                                              ; preds = %326
  %335 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %339 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %338, i32 0, i32 9
  store i32 %337, i32* %339, align 4
  %340 = load i32, i32* %8, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %8, align 4
  br label %342

342:                                              ; preds = %334, %326
  br label %343

343:                                              ; preds = %342, %320
  %344 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %345 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @TRIG_NONE, align 4
  %348 = icmp eq i32 %346, %347
  br i1 %348, label %349, label %360

349:                                              ; preds = %343
  %350 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %351 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %350, i32 0, i32 10
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %359

354:                                              ; preds = %349
  %355 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %356 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %355, i32 0, i32 10
  store i64 0, i64* %356, align 8
  %357 = load i32, i32* %8, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %8, align 4
  br label %359

359:                                              ; preds = %354, %349
  br label %360

360:                                              ; preds = %359, %343
  %361 = load i32, i32* %8, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %360
  store i32 3, i32* %4, align 4
  br label %506

364:                                              ; preds = %360
  %365 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %366 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @TRIG_TIMER, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %370, label %397

370:                                              ; preds = %364
  %371 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %372 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %371, i32 0, i32 6
  %373 = load i32, i32* %372, align 8
  store i32 %373, i32* %14, align 4
  %374 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 4
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
  %389 = load i32, i32* %14, align 4
  %390 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %391 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %390, i32 0, i32 6
  %392 = load i32, i32* %391, align 8
  %393 = icmp ne i32 %389, %392
  %394 = zext i1 %393 to i32
  %395 = load i32, i32* %8, align 4
  %396 = add nsw i32 %395, %394
  store i32 %396, i32* %8, align 4
  br label %397

397:                                              ; preds = %370, %364
  %398 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %399 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @TRIG_TIMER, align 4
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %403, label %430

403:                                              ; preds = %397
  %404 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %405 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %404, i32 0, i32 9
  %406 = load i32, i32* %405, align 4
  store i32 %406, i32* %15, align 4
  %407 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 1
  %412 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 0
  %414 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %415 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %414, i32 0, i32 9
  %416 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %417 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %416, i32 0, i32 11
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %420 = and i32 %418, %419
  %421 = call i32 @i8253_cascade_ns_to_timer_2div(i32 %409, i32* %411, i32* %413, i32* %415, i32 %420)
  %422 = load i32, i32* %15, align 4
  %423 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %424 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %423, i32 0, i32 9
  %425 = load i32, i32* %424, align 4
  %426 = icmp ne i32 %422, %425
  %427 = zext i1 %426 to i32
  %428 = load i32, i32* %8, align 4
  %429 = add nsw i32 %428, %427
  store i32 %429, i32* %8, align 4
  br label %430

430:                                              ; preds = %403, %397
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
  store i32 %445, i32* %10, align 4
  %446 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %447 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %446, i32 0, i32 12
  %448 = load i32*, i32** %447, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 0
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @CR_CHAN(i32 %450)
  store i32 %451, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %452

452:                                              ; preds = %497, %439
  %453 = load i32, i32* %12, align 4
  %454 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %455 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %454, i32 0, i32 8
  %456 = load i32, i32* %455, align 8
  %457 = icmp slt i32 %453, %456
  br i1 %457, label %458, label %500

458:                                              ; preds = %452
  %459 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %460 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %459, i32 0, i32 12
  %461 = load i32*, i32** %460, align 8
  %462 = load i32, i32* %12, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %461, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = call i32 @CR_CHAN(i32 %465)
  %467 = load i32, i32* %11, align 4
  %468 = load i32, i32* %12, align 4
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
  %484 = load i32, i32* %12, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i32, i32* %483, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = call i32 @CR_RANGE(i32 %487)
  %489 = load i32, i32* %10, align 4
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
  %498 = load i32, i32* %12, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %12, align 4
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

506:                                              ; preds = %505, %504, %433, %363, %245, %154
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
