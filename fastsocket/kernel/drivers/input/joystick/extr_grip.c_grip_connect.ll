; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_grip.c_grip_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_grip.c_grip_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i8*, i32 }
%struct.gameport_driver = type { i32 }
%struct.grip = type { i64*, %struct.input_dev**, i32*, %struct.gameport* }
%struct.input_dev = type { i32*, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@GRIP_LENGTH_XT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GAMEPORT_MODE_RAW = common dso_local global i32 0, align 4
@GRIP_MODE_GPP = common dso_local global i64 0, align 8
@GRIP_MODE_BD = common dso_local global i64 0, align 8
@GRIP_MODE_XT = common dso_local global i64 0, align 8
@GRIP_MODE_DC = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@grip_poll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s/input%d\00", align 1
@grip_name = common dso_local global i32* null, align 8
@BUS_GAMEPORT = common dso_local global i32 0, align 4
@GAMEPORT_ID_VENDOR_GRAVIS = common dso_local global i32 0, align 4
@grip_open = common dso_local global i32 0, align 4
@grip_close = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@grip_abs = common dso_local global i32** null, align 8
@grip_cen = common dso_local global i32* null, align 8
@grip_anx = common dso_local global i32* null, align 8
@grip_btn = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*, %struct.gameport_driver*)* @grip_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grip_connect(%struct.gameport* %0, %struct.gameport_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gameport*, align 8
  %5 = alloca %struct.gameport_driver*, align 8
  %6 = alloca %struct.grip*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %4, align 8
  store %struct.gameport_driver* %1, %struct.gameport_driver** %5, align 8
  %15 = load i32, i32* @GRIP_LENGTH_XT, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.grip* @kzalloc(i32 32, i32 %19)
  store %struct.grip* %20, %struct.grip** %6, align 8
  %21 = icmp ne %struct.grip* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %379

25:                                               ; preds = %2
  %26 = load %struct.gameport*, %struct.gameport** %4, align 8
  %27 = load %struct.grip*, %struct.grip** %6, align 8
  %28 = getelementptr inbounds %struct.grip, %struct.grip* %27, i32 0, i32 3
  store %struct.gameport* %26, %struct.gameport** %28, align 8
  %29 = load %struct.gameport*, %struct.gameport** %4, align 8
  %30 = load %struct.grip*, %struct.grip** %6, align 8
  %31 = call i32 @gameport_set_drvdata(%struct.gameport* %29, %struct.grip* %30)
  %32 = load %struct.gameport*, %struct.gameport** %4, align 8
  %33 = load %struct.gameport_driver*, %struct.gameport_driver** %5, align 8
  %34 = load i32, i32* @GAMEPORT_MODE_RAW, align 4
  %35 = call i32 @gameport_open(%struct.gameport* %32, %struct.gameport_driver* %33, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %373

39:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %100, %39
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %103

43:                                               ; preds = %40
  %44 = load %struct.gameport*, %struct.gameport** %4, align 8
  %45 = load i32, i32* %10, align 4
  %46 = shl i32 %45, 1
  %47 = add nsw i32 %46, 4
  %48 = call i32 @grip_gpp_read_packet(%struct.gameport* %44, i32 %47, i32* %18)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %43
  %51 = load i64, i64* @GRIP_MODE_GPP, align 8
  %52 = load %struct.grip*, %struct.grip** %6, align 8
  %53 = getelementptr inbounds %struct.grip, %struct.grip* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  store i64 %51, i64* %57, align 8
  br label %100

58:                                               ; preds = %43
  %59 = load %struct.gameport*, %struct.gameport** %4, align 8
  %60 = load i32, i32* %10, align 4
  %61 = shl i32 %60, 1
  %62 = add nsw i32 %61, 4
  %63 = call i32 @grip_xt_read_packet(%struct.gameport* %59, i32 %62, i32* %18)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %99, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds i32, i32* %18, i64 3
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 7
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %65
  %71 = load i64, i64* @GRIP_MODE_BD, align 8
  %72 = load %struct.grip*, %struct.grip** %6, align 8
  %73 = getelementptr inbounds %struct.grip, %struct.grip* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  store i64 %71, i64* %77, align 8
  br label %100

78:                                               ; preds = %65
  %79 = getelementptr inbounds i32, i32* %18, i64 2
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, 240
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %78
  %84 = load i64, i64* @GRIP_MODE_XT, align 8
  %85 = load %struct.grip*, %struct.grip** %6, align 8
  %86 = getelementptr inbounds %struct.grip, %struct.grip* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64 %84, i64* %90, align 8
  br label %100

91:                                               ; preds = %78
  %92 = load i64, i64* @GRIP_MODE_DC, align 8
  %93 = load %struct.grip*, %struct.grip** %6, align 8
  %94 = getelementptr inbounds %struct.grip, %struct.grip* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 %92, i64* %98, align 8
  br label %100

99:                                               ; preds = %58
  br label %100

100:                                              ; preds = %99, %91, %83, %70, %50
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %40

103:                                              ; preds = %40
  %104 = load %struct.grip*, %struct.grip** %6, align 8
  %105 = getelementptr inbounds %struct.grip, %struct.grip* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %103
  %111 = load %struct.grip*, %struct.grip** %6, align 8
  %112 = getelementptr inbounds %struct.grip, %struct.grip* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %110
  %118 = load i32, i32* @ENODEV, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %13, align 4
  br label %370

120:                                              ; preds = %110, %103
  %121 = load %struct.gameport*, %struct.gameport** %4, align 8
  %122 = load i32, i32* @grip_poll, align 4
  %123 = call i32 @gameport_set_poll_handler(%struct.gameport* %121, i32 %122)
  %124 = load %struct.gameport*, %struct.gameport** %4, align 8
  %125 = call i32 @gameport_set_poll_interval(%struct.gameport* %124, i32 20)
  store i32 0, i32* %10, align 4
  br label %126

126:                                              ; preds = %332, %120
  %127 = load i32, i32* %10, align 4
  %128 = icmp slt i32 %127, 2
  br i1 %128, label %129, label %335

129:                                              ; preds = %126
  %130 = load %struct.grip*, %struct.grip** %6, align 8
  %131 = getelementptr inbounds %struct.grip, %struct.grip* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %129
  br label %332

139:                                              ; preds = %129
  %140 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %140, %struct.input_dev** %7, align 8
  %141 = load %struct.grip*, %struct.grip** %6, align 8
  %142 = getelementptr inbounds %struct.grip, %struct.grip* %141, i32 0, i32 1
  %143 = load %struct.input_dev**, %struct.input_dev*** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %143, i64 %145
  store %struct.input_dev* %140, %struct.input_dev** %146, align 8
  %147 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %148 = icmp ne %struct.input_dev* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %139
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %13, align 4
  br label %345

152:                                              ; preds = %139
  %153 = load %struct.grip*, %struct.grip** %6, align 8
  %154 = getelementptr inbounds %struct.grip, %struct.grip* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.gameport*, %struct.gameport** %4, align 8
  %161 = getelementptr inbounds %struct.gameport, %struct.gameport* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @snprintf(i32 %159, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %162, i32 %163)
  %165 = load i32*, i32** @grip_name, align 8
  %166 = load %struct.grip*, %struct.grip** %6, align 8
  %167 = getelementptr inbounds %struct.grip, %struct.grip* %166, i32 0, i32 0
  %168 = load i64*, i64** %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds i32, i32* %165, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %176 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %175, i32 0, i32 7
  store i32 %174, i32* %176, align 4
  %177 = load %struct.grip*, %struct.grip** %6, align 8
  %178 = getelementptr inbounds %struct.grip, %struct.grip* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %185 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %184, i32 0, i32 6
  store i32 %183, i32* %185, align 8
  %186 = load i32, i32* @BUS_GAMEPORT, align 4
  %187 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %188 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 3
  store i32 %186, i32* %189, align 8
  %190 = load i32, i32* @GAMEPORT_ID_VENDOR_GRAVIS, align 4
  %191 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %192 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 2
  store i32 %190, i32* %193, align 4
  %194 = load %struct.grip*, %struct.grip** %6, align 8
  %195 = getelementptr inbounds %struct.grip, %struct.grip* %194, i32 0, i32 0
  %196 = load i64*, i64** %195, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %202 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  store i64 %200, i64* %203, align 8
  %204 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %205 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 1
  store i32 256, i32* %206, align 8
  %207 = load %struct.gameport*, %struct.gameport** %4, align 8
  %208 = getelementptr inbounds %struct.gameport, %struct.gameport* %207, i32 0, i32 1
  %209 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %210 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  store i32* %208, i32** %211, align 8
  %212 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %213 = load %struct.grip*, %struct.grip** %6, align 8
  %214 = call i32 @input_set_drvdata(%struct.input_dev* %212, %struct.grip* %213)
  %215 = load i32, i32* @grip_open, align 4
  %216 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %217 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %216, i32 0, i32 3
  store i32 %215, i32* %217, align 8
  %218 = load i32, i32* @grip_close, align 4
  %219 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %220 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %219, i32 0, i32 2
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* @EV_KEY, align 4
  %222 = call i32 @BIT_MASK(i32 %221)
  %223 = load i32, i32* @EV_ABS, align 4
  %224 = call i32 @BIT_MASK(i32 %223)
  %225 = or i32 %222, %224
  %226 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %227 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  store i32 %225, i32* %229, align 4
  store i32 0, i32* %11, align 4
  br label %230

230:                                              ; preds = %286, %152
  %231 = load i32**, i32*** @grip_abs, align 8
  %232 = load %struct.grip*, %struct.grip** %6, align 8
  %233 = getelementptr inbounds %struct.grip, %struct.grip* %232, i32 0, i32 0
  %234 = load i64*, i64** %233, align 8
  %235 = load i32, i32* %10, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i64, i64* %234, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds i32*, i32** %231, i64 %238
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %11, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %12, align 4
  %245 = icmp sge i32 %244, 0
  br i1 %245, label %246, label %289

246:                                              ; preds = %230
  %247 = load i32, i32* %11, align 4
  %248 = load i32*, i32** @grip_cen, align 8
  %249 = load %struct.grip*, %struct.grip** %6, align 8
  %250 = getelementptr inbounds %struct.grip, %struct.grip* %249, i32 0, i32 0
  %251 = load i64*, i64** %250, align 8
  %252 = load i32, i32* %10, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i64, i64* %251, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds i32, i32* %248, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = icmp slt i32 %247, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %246
  %260 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %261 = load i32, i32* %12, align 4
  %262 = call i32 @input_set_abs_params(%struct.input_dev* %260, i32 %261, i32 14, i32 52, i32 1, i32 2)
  br label %285

263:                                              ; preds = %246
  %264 = load i32, i32* %11, align 4
  %265 = load i32*, i32** @grip_anx, align 8
  %266 = load %struct.grip*, %struct.grip** %6, align 8
  %267 = getelementptr inbounds %struct.grip, %struct.grip* %266, i32 0, i32 0
  %268 = load i64*, i64** %267, align 8
  %269 = load i32, i32* %10, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %268, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds i32, i32* %265, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = icmp slt i32 %264, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %263
  %277 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %278 = load i32, i32* %12, align 4
  %279 = call i32 @input_set_abs_params(%struct.input_dev* %277, i32 %278, i32 3, i32 57, i32 1, i32 0)
  br label %284

280:                                              ; preds = %263
  %281 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %282 = load i32, i32* %12, align 4
  %283 = call i32 @input_set_abs_params(%struct.input_dev* %281, i32 %282, i32 -1, i32 1, i32 0, i32 0)
  br label %284

284:                                              ; preds = %280, %276
  br label %285

285:                                              ; preds = %284, %259
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %11, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %11, align 4
  br label %230

289:                                              ; preds = %230
  store i32 0, i32* %11, align 4
  br label %290

290:                                              ; preds = %316, %289
  %291 = load i32**, i32*** @grip_btn, align 8
  %292 = load %struct.grip*, %struct.grip** %6, align 8
  %293 = getelementptr inbounds %struct.grip, %struct.grip* %292, i32 0, i32 0
  %294 = load i64*, i64** %293, align 8
  %295 = load i32, i32* %10, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i64, i64* %294, i64 %296
  %298 = load i64, i64* %297, align 8
  %299 = getelementptr inbounds i32*, i32** %291, i64 %298
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %11, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %12, align 4
  %305 = icmp sge i32 %304, 0
  br i1 %305, label %306, label %319

306:                                              ; preds = %290
  %307 = load i32, i32* %12, align 4
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %306
  %310 = load i32, i32* %12, align 4
  %311 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %312 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @set_bit(i32 %310, i32 %313)
  br label %315

315:                                              ; preds = %309, %306
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %11, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %11, align 4
  br label %290

319:                                              ; preds = %290
  %320 = load %struct.grip*, %struct.grip** %6, align 8
  %321 = getelementptr inbounds %struct.grip, %struct.grip* %320, i32 0, i32 1
  %322 = load %struct.input_dev**, %struct.input_dev*** %321, align 8
  %323 = load i32, i32* %10, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %322, i64 %324
  %326 = load %struct.input_dev*, %struct.input_dev** %325, align 8
  %327 = call i32 @input_register_device(%struct.input_dev* %326)
  store i32 %327, i32* %13, align 4
  %328 = load i32, i32* %13, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %319
  br label %336

331:                                              ; preds = %319
  br label %332

332:                                              ; preds = %331, %138
  %333 = load i32, i32* %10, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %10, align 4
  br label %126

335:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %379

336:                                              ; preds = %330
  %337 = load %struct.grip*, %struct.grip** %6, align 8
  %338 = getelementptr inbounds %struct.grip, %struct.grip* %337, i32 0, i32 1
  %339 = load %struct.input_dev**, %struct.input_dev*** %338, align 8
  %340 = load i32, i32* %10, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %339, i64 %341
  %343 = load %struct.input_dev*, %struct.input_dev** %342, align 8
  %344 = call i32 @input_free_device(%struct.input_dev* %343)
  br label %345

345:                                              ; preds = %336, %149
  br label %346

346:                                              ; preds = %368, %345
  %347 = load i32, i32* %10, align 4
  %348 = add nsw i32 %347, -1
  store i32 %348, i32* %10, align 4
  %349 = icmp sge i32 %348, 0
  br i1 %349, label %350, label %369

350:                                              ; preds = %346
  %351 = load %struct.grip*, %struct.grip** %6, align 8
  %352 = getelementptr inbounds %struct.grip, %struct.grip* %351, i32 0, i32 1
  %353 = load %struct.input_dev**, %struct.input_dev*** %352, align 8
  %354 = load i32, i32* %10, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %353, i64 %355
  %357 = load %struct.input_dev*, %struct.input_dev** %356, align 8
  %358 = icmp ne %struct.input_dev* %357, null
  br i1 %358, label %359, label %368

359:                                              ; preds = %350
  %360 = load %struct.grip*, %struct.grip** %6, align 8
  %361 = getelementptr inbounds %struct.grip, %struct.grip* %360, i32 0, i32 1
  %362 = load %struct.input_dev**, %struct.input_dev*** %361, align 8
  %363 = load i32, i32* %10, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %362, i64 %364
  %366 = load %struct.input_dev*, %struct.input_dev** %365, align 8
  %367 = call i32 @input_unregister_device(%struct.input_dev* %366)
  br label %368

368:                                              ; preds = %359, %350
  br label %346

369:                                              ; preds = %346
  br label %370

370:                                              ; preds = %369, %117
  %371 = load %struct.gameport*, %struct.gameport** %4, align 8
  %372 = call i32 @gameport_close(%struct.gameport* %371)
  br label %373

373:                                              ; preds = %370, %38
  %374 = load %struct.gameport*, %struct.gameport** %4, align 8
  %375 = call i32 @gameport_set_drvdata(%struct.gameport* %374, %struct.grip* null)
  %376 = load %struct.grip*, %struct.grip** %6, align 8
  %377 = call i32 @kfree(%struct.grip* %376)
  %378 = load i32, i32* %13, align 4
  store i32 %378, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %379

379:                                              ; preds = %373, %335, %22
  %380 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %380)
  %381 = load i32, i32* %3, align 4
  ret i32 %381
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.grip* @kzalloc(i32, i32) #2

declare dso_local i32 @gameport_set_drvdata(%struct.gameport*, %struct.grip*) #2

declare dso_local i32 @gameport_open(%struct.gameport*, %struct.gameport_driver*, i32) #2

declare dso_local i32 @grip_gpp_read_packet(%struct.gameport*, i32, i32*) #2

declare dso_local i32 @grip_xt_read_packet(%struct.gameport*, i32, i32*) #2

declare dso_local i32 @gameport_set_poll_handler(%struct.gameport*, i32) #2

declare dso_local i32 @gameport_set_poll_interval(%struct.gameport*, i32) #2

declare dso_local %struct.input_dev* @input_allocate_device(...) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #2

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.grip*) #2

declare dso_local i32 @BIT_MASK(i32) #2

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @set_bit(i32, i32) #2

declare dso_local i32 @input_register_device(%struct.input_dev*) #2

declare dso_local i32 @input_free_device(%struct.input_dev*) #2

declare dso_local i32 @input_unregister_device(%struct.input_dev*) #2

declare dso_local i32 @gameport_close(%struct.gameport*) #2

declare dso_local i32 @kfree(%struct.grip*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
