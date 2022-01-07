; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_bcm5974.c_report_tp_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_bcm5974.c_report_tp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm5974 = type { i32, i32*, %struct.input_dev*, %struct.bcm5974_config }
%struct.input_dev = type { i32 }
%struct.bcm5974_config = type { i32, i64, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tp_finger = type { i32, i32, i32, i32, i32 }

@SIZEOF_FINGER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"bcm5974: raw: p: %+05d w: %+05d x: %+05d y: %+05d n: %d\0A\00", align 1
@TYPE2 = common dso_local global i64 0, align 8
@BUTTON_TYPE2 = common dso_local global i64 0, align 8
@PRESSURE_LOW = common dso_local global i32 0, align 4
@PRESSURE_HIGH = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_TRIPLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_QUADTAP = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_TOOL_WIDTH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"bcm5974: abs: p: %+05d w: %+05d x: %+05d y: %+05d nmin: %d nmax: %d n: %d ibt: %d\0A\00", align 1
@BTN_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm5974*, i32)* @report_tp_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_tp_state(%struct.bcm5974* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm5974*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm5974_config*, align 8
  %7 = alloca %struct.tp_finger*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.bcm5974* %0, %struct.bcm5974** %4, align 8
  store i32 %1, i32* %5, align 4
  %23 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %24 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %23, i32 0, i32 3
  store %struct.bcm5974_config* %24, %struct.bcm5974_config** %6, align 8
  %25 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %26 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %25, i32 0, i32 2
  %27 = load %struct.input_dev*, %struct.input_dev** %26, align 8
  store %struct.input_dev* %27, %struct.input_dev** %8, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %30 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %36 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %34, %37
  %39 = load i32, i32* @SIZEOF_FINGER, align 4
  %40 = srem i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33, %2
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %274

45:                                               ; preds = %33
  %46 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %47 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %50 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = bitcast i32* %53 to %struct.tp_finger*
  store %struct.tp_finger* %54, %struct.tp_finger** %7, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %57 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %55, %58
  %60 = load i32, i32* @SIZEOF_FINGER, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %169

64:                                               ; preds = %45
  %65 = load %struct.tp_finger*, %struct.tp_finger** %7, align 8
  %66 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @raw2int(i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load %struct.tp_finger*, %struct.tp_finger** %7, align 8
  %70 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @raw2int(i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load %struct.tp_finger*, %struct.tp_finger** %7, align 8
  %74 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @raw2int(i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load %struct.tp_finger*, %struct.tp_finger** %7, align 8
  %78 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @raw2int(i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @dprintk(i32 9, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %88 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %87, i32 0, i32 2
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @int2bound(%struct.TYPE_2__* %88, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load %struct.tp_finger*, %struct.tp_finger** %7, align 8
  %92 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @raw2int(i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %96 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @TYPE2, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %64
  %101 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %102 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @BUTTON_TYPE2, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @raw2int(i32 %106)
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %100, %64
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @PRESSURE_LOW, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %168

112:                                              ; preds = %108
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %168

115:                                              ; preds = %112
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %19, align 4
  %117 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %118 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %117, i32 0, i32 5
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @int2bound(%struct.TYPE_2__* %118, i32 %119)
  store i32 %120, i32* %20, align 4
  %121 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %122 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %121, i32 0, i32 4
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %125 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %123, %127
  %129 = call i32 @int2bound(%struct.TYPE_2__* %122, i32 %128)
  store i32 %129, i32* %21, align 4
  %130 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %131 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %130, i32 0, i32 3
  %132 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %133 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %12, align 4
  %137 = sub nsw i32 %135, %136
  %138 = call i32 @int2bound(%struct.TYPE_2__* %131, i32 %137)
  store i32 %138, i32* %22, align 4
  br label %139

139:                                              ; preds = %164, %115
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %13, align 4
  %142 = icmp ne i32 %140, 0
  br i1 %142, label %143, label %167

143:                                              ; preds = %139
  %144 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %145 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %144, i32 0, i32 2
  %146 = load %struct.tp_finger*, %struct.tp_finger** %7, align 8
  %147 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @raw2int(i32 %148)
  %150 = call i32 @int2bound(%struct.TYPE_2__* %145, i32 %149)
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* @PRESSURE_LOW, align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %143
  %155 = load i32, i32* %18, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %18, align 4
  br label %157

157:                                              ; preds = %154, %143
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* @PRESSURE_HIGH, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load i32, i32* %17, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %17, align 4
  br label %164

164:                                              ; preds = %161, %157
  %165 = load %struct.tp_finger*, %struct.tp_finger** %7, align 8
  %166 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %165, i32 1
  store %struct.tp_finger* %166, %struct.tp_finger** %7, align 8
  br label %139

167:                                              ; preds = %139
  br label %168

168:                                              ; preds = %167, %112, %108
  br label %169

169:                                              ; preds = %168, %45
  %170 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %171 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %17, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %169
  %176 = load i32, i32* %17, align 4
  %177 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %178 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %175, %169
  %180 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %181 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %18, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %179
  %186 = load i32, i32* %18, align 4
  %187 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %188 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  br label %189

189:                                              ; preds = %185, %179
  %190 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %191 = load i32, i32* @BTN_TOUCH, align 4
  %192 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %193 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp sgt i32 %194, 0
  %196 = zext i1 %195 to i32
  %197 = call i32 @input_report_key(%struct.input_dev* %190, i32 %191, i32 %196)
  %198 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %199 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %200 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %201 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp eq i32 %202, 1
  %204 = zext i1 %203 to i32
  %205 = call i32 @input_report_key(%struct.input_dev* %198, i32 %199, i32 %204)
  %206 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %207 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %208 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %209 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp eq i32 %210, 2
  %212 = zext i1 %211 to i32
  %213 = call i32 @input_report_key(%struct.input_dev* %206, i32 %207, i32 %212)
  %214 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %215 = load i32, i32* @BTN_TOOL_TRIPLETAP, align 4
  %216 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %217 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp eq i32 %218, 3
  %220 = zext i1 %219 to i32
  %221 = call i32 @input_report_key(%struct.input_dev* %214, i32 %215, i32 %220)
  %222 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %223 = load i32, i32* @BTN_TOOL_QUADTAP, align 4
  %224 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %225 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp sgt i32 %226, 3
  %228 = zext i1 %227 to i32
  %229 = call i32 @input_report_key(%struct.input_dev* %222, i32 %223, i32 %228)
  %230 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %231 = load i32, i32* @ABS_PRESSURE, align 4
  %232 = load i32, i32* %19, align 4
  %233 = call i32 @input_report_abs(%struct.input_dev* %230, i32 %231, i32 %232)
  %234 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %235 = load i32, i32* @ABS_TOOL_WIDTH, align 4
  %236 = load i32, i32* %20, align 4
  %237 = call i32 @input_report_abs(%struct.input_dev* %234, i32 %235, i32 %236)
  %238 = load i32, i32* %19, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %260

240:                                              ; preds = %189
  %241 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %242 = load i32, i32* @ABS_X, align 4
  %243 = load i32, i32* %21, align 4
  %244 = call i32 @input_report_abs(%struct.input_dev* %241, i32 %242, i32 %243)
  %245 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %246 = load i32, i32* @ABS_Y, align 4
  %247 = load i32, i32* %22, align 4
  %248 = call i32 @input_report_abs(%struct.input_dev* %245, i32 %246, i32 %247)
  %249 = load i32, i32* %19, align 4
  %250 = load i32, i32* %20, align 4
  %251 = load i32, i32* %21, align 4
  %252 = load i32, i32* %22, align 4
  %253 = load i32, i32* %17, align 4
  %254 = load i32, i32* %18, align 4
  %255 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %256 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* %16, align 4
  %259 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @dprintk(i32 8, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %257, i32 %258)
  br label %260

260:                                              ; preds = %240, %189
  %261 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %262 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @TYPE2, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %271

266:                                              ; preds = %260
  %267 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %268 = load i32, i32* @BTN_LEFT, align 4
  %269 = load i32, i32* %16, align 4
  %270 = call i32 @input_report_key(%struct.input_dev* %267, i32 %268, i32 %269)
  br label %271

271:                                              ; preds = %266, %260
  %272 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %273 = call i32 @input_sync(%struct.input_dev* %272)
  store i32 0, i32* %3, align 4
  br label %274

274:                                              ; preds = %271, %42
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i32 @raw2int(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @int2bound(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
