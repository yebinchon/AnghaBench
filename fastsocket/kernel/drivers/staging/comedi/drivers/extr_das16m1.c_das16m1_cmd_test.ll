; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16m1.c_das16m1_cmd_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16m1.c_das16m1_cmd_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i64, i32, i32* }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@DAS16M1_XTAL = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"bad chanlist:\0A even/odd channels must go have even/odd chanlist indices\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"chanlist must be of even length or length 1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @das16m1_cmd_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das16m1_cmd_test(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
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
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @TRIG_NOW, align 4
  %15 = load i32, i32* @TRIG_EXT, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %28 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %3
  %32 = load i32, i32* %8, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %36 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @TRIG_FOLLOW, align 4
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %50 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %34
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %58 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @TRIG_TIMER, align 4
  %61 = load i32, i32* @TRIG_EXT, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %64 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %68 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %56
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %74 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71, %56
  %78 = load i32, i32* %8, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %77, %71
  %81 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %82 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* @TRIG_COUNT, align 4
  %85 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %86 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %90 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %80
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %96 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %94, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93, %80
  %100 = load i32, i32* %8, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %99, %93
  %103 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %104 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* @TRIG_COUNT, align 4
  %107 = load i32, i32* @TRIG_NONE, align 4
  %108 = or i32 %106, %107
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

117:                                              ; preds = %102
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %120 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %118, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117, %102
  %124 = load i32, i32* %8, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %123, %117
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 1, i32* %4, align 4
  br label %359

130:                                              ; preds = %126
  %131 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %132 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @TRIG_COUNT, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %130
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @TRIG_NONE, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load i32, i32* %8, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %142, %136, %130
  %146 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %147 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @TRIG_NOW, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %145
  %152 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %153 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @TRIG_EXT, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load i32, i32* %8, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %157, %151, %145
  %161 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %162 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @TRIG_TIMER, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %160
  %167 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %168 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @TRIG_EXT, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load i32, i32* %8, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %175

175:                                              ; preds = %172, %166, %160
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  store i32 2, i32* %4, align 4
  br label %359

179:                                              ; preds = %175
  %180 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %181 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %180, i32 0, i32 5
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %186 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %185, i32 0, i32 5
  store i64 0, i64* %186, align 8
  %187 = load i32, i32* %8, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %8, align 4
  br label %189

189:                                              ; preds = %184, %179
  %190 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %191 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @TRIG_FOLLOW, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %189
  %196 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %197 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %196, i32 0, i32 6
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %202 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %201, i32 0, i32 6
  store i64 0, i64* %202, align 8
  %203 = load i32, i32* %8, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %8, align 4
  br label %205

205:                                              ; preds = %200, %195
  br label %206

206:                                              ; preds = %205, %189
  %207 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %208 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @TRIG_TIMER, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %229

212:                                              ; preds = %206
  %213 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %214 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %213, i32 0, i32 7
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp ult i32 %215, %218
  br i1 %219, label %220, label %228

220:                                              ; preds = %212
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %225 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %224, i32 0, i32 7
  store i32 %223, i32* %225, align 8
  %226 = load i32, i32* %8, align 4
  %227 = add i32 %226, 1
  store i32 %227, i32* %8, align 4
  br label %228

228:                                              ; preds = %220, %212
  br label %229

229:                                              ; preds = %228, %206
  %230 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %231 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %230, i32 0, i32 8
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %234 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %233, i32 0, i32 9
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %232, %235
  br i1 %236, label %237, label %245

237:                                              ; preds = %229
  %238 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %239 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %238, i32 0, i32 9
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %242 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %241, i32 0, i32 8
  store i32 %240, i32* %242, align 4
  %243 = load i32, i32* %8, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %8, align 4
  br label %245

245:                                              ; preds = %237, %229
  %246 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %247 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @TRIG_COUNT, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %245
  br label %263

252:                                              ; preds = %245
  %253 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %254 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %253, i32 0, i32 10
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %252
  %258 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %259 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %258, i32 0, i32 10
  store i64 0, i64* %259, align 8
  %260 = load i32, i32* %8, align 4
  %261 = add i32 %260, 1
  store i32 %261, i32* %8, align 4
  br label %262

262:                                              ; preds = %257, %252
  br label %263

263:                                              ; preds = %262, %251
  %264 = load i32, i32* %8, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %263
  store i32 3, i32* %4, align 4
  br label %359

267:                                              ; preds = %263
  %268 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %269 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @TRIG_TIMER, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %299

273:                                              ; preds = %267
  %274 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %275 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %274, i32 0, i32 7
  %276 = load i32, i32* %275, align 8
  store i32 %276, i32* %9, align 4
  %277 = load i32, i32* @DAS16M1_XTAL, align 4
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %283 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %282, i32 0, i32 7
  %284 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %285 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %284, i32 0, i32 11
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %288 = and i32 %286, %287
  %289 = call i32 @i8253_cascade_ns_to_timer_2div(i32 %277, i32* %279, i32* %281, i32* %283, i32 %288)
  %290 = load i32, i32* %9, align 4
  %291 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %292 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %291, i32 0, i32 7
  %293 = load i32, i32* %292, align 8
  %294 = icmp ne i32 %290, %293
  br i1 %294, label %295, label %298

295:                                              ; preds = %273
  %296 = load i32, i32* %8, align 4
  %297 = add i32 %296, 1
  store i32 %297, i32* %8, align 4
  br label %298

298:                                              ; preds = %295, %273
  br label %299

299:                                              ; preds = %298, %267
  %300 = load i32, i32* %8, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %299
  store i32 4, i32* %4, align 4
  br label %359

303:                                              ; preds = %299
  %304 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %305 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %304, i32 0, i32 12
  %306 = load i32*, i32** %305, align 8
  %307 = icmp ne i32* %306, null
  br i1 %307, label %308, label %354

308:                                              ; preds = %303
  %309 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %310 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %309, i32 0, i32 9
  %311 = load i32, i32* %310, align 8
  %312 = icmp sgt i32 %311, 1
  br i1 %312, label %313, label %354

313:                                              ; preds = %308
  store i32 0, i32* %10, align 4
  br label %314

314:                                              ; preds = %339, %313
  %315 = load i32, i32* %10, align 4
  %316 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %317 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %316, i32 0, i32 9
  %318 = load i32, i32* %317, align 8
  %319 = icmp ult i32 %315, %318
  br i1 %319, label %320, label %342

320:                                              ; preds = %314
  %321 = load i32, i32* %10, align 4
  %322 = urem i32 %321, 2
  %323 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %324 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %323, i32 0, i32 12
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %10, align 4
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @CR_CHAN(i32 %329)
  %331 = srem i32 %330, 2
  %332 = icmp ne i32 %322, %331
  br i1 %332, label %333, label %338

333:                                              ; preds = %320
  %334 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %335 = call i32 @comedi_error(%struct.comedi_device* %334, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %336 = load i32, i32* %8, align 4
  %337 = add i32 %336, 1
  store i32 %337, i32* %8, align 4
  br label %338

338:                                              ; preds = %333, %320
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %10, align 4
  %341 = add i32 %340, 1
  store i32 %341, i32* %10, align 4
  br label %314

342:                                              ; preds = %314
  %343 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %344 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %343, i32 0, i32 9
  %345 = load i32, i32* %344, align 8
  %346 = srem i32 %345, 2
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %342
  %349 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %350 = call i32 @comedi_error(%struct.comedi_device* %349, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %351 = load i32, i32* %8, align 4
  %352 = add i32 %351, 1
  store i32 %352, i32* %8, align 4
  br label %353

353:                                              ; preds = %348, %342
  br label %354

354:                                              ; preds = %353, %308, %303
  %355 = load i32, i32* %8, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %354
  store i32 5, i32* %4, align 4
  br label %359

358:                                              ; preds = %354
  store i32 0, i32* %4, align 4
  br label %359

359:                                              ; preds = %358, %357, %302, %266, %178, %129
  %360 = load i32, i32* %4, align 4
  ret i32 %360
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
