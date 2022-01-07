; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_lkkbd.c_lkkbd_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_lkkbd.c_lkkbd_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i8*, i32 }
%struct.serio_driver = type { i32 }
%struct.lkkbd = type { %struct.serio*, %struct.input_dev*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.input_dev = type { i32, i32, i32, i32*, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lkkbd_reinit = common dso_local global i32 0, align 4
@bell_volume = common dso_local global i32 0, align 4
@keyclick_volume = common dso_local global i32 0, align 4
@ctrlclick_volume = common dso_local global i32 0, align 4
@lkkbd_keycode = common dso_local global i32 0, align 4
@LK_NUM_KEYCODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"DEC LK keyboard\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@BUS_RS232 = common dso_local global i32 0, align 4
@SERIO_LKKBD = common dso_local global i32 0, align 4
@lkkbd_event = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_LED = common dso_local global i32 0, align 4
@EV_SND = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@LED_CAPSL = common dso_local global i32 0, align 4
@LED_SLEEP = common dso_local global i32 0, align 4
@LED_COMPOSE = common dso_local global i32 0, align 4
@LED_SCROLLL = common dso_local global i32 0, align 4
@SND_BELL = common dso_local global i32 0, align 4
@SND_CLICK = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@LK_CMD_POWERCYCLE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @lkkbd_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lkkbd_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.lkkbd*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.lkkbd* @kzalloc(i32 48, i32 %10)
  store %struct.lkkbd* %11, %struct.lkkbd** %6, align 8
  %12 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %12, %struct.input_dev** %7, align 8
  %13 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %14 = icmp ne %struct.lkkbd* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %17 = icmp ne %struct.input_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  br label %210

21:                                               ; preds = %15
  %22 = load %struct.serio*, %struct.serio** %4, align 8
  %23 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %24 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %23, i32 0, i32 0
  store %struct.serio* %22, %struct.serio** %24, align 8
  %25 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %26 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %27 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %26, i32 0, i32 1
  store %struct.input_dev* %25, %struct.input_dev** %27, align 8
  %28 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %29 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %28, i32 0, i32 8
  %30 = load i32, i32* @lkkbd_reinit, align 4
  %31 = call i32 @INIT_WORK(i32* %29, i32 %30)
  %32 = load i32, i32* @bell_volume, align 4
  %33 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %34 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @keyclick_volume, align 4
  %36 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %37 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @ctrlclick_volume, align 4
  %39 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %40 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %42 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @lkkbd_keycode, align 4
  %45 = load i32, i32* @LK_NUM_KEYCODES, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 4, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memcpy(i32* %43, i32 %44, i32 %48)
  %50 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %51 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strlcpy(i32 %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 4)
  %54 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %55 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.serio*, %struct.serio** %4, align 8
  %58 = getelementptr inbounds %struct.serio, %struct.serio* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @snprintf(i32 %56, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %62 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 11
  store i32 %63, i32* %65, align 4
  %66 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %67 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %69, i32 0, i32 10
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @BUS_RS232, align 4
  %72 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %73 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %72, i32 0, i32 9
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @SERIO_LKKBD, align 4
  %76 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %77 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %76, i32 0, i32 9
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 8
  %79 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %80 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %79, i32 0, i32 9
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %83 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %82, i32 0, i32 9
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 256, i32* %84, align 8
  %85 = load %struct.serio*, %struct.serio** %4, align 8
  %86 = getelementptr inbounds %struct.serio, %struct.serio* %85, i32 0, i32 1
  %87 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %88 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32* %86, i32** %89, align 8
  %90 = load i32, i32* @lkkbd_event, align 4
  %91 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %92 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 4
  %93 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %94 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %95 = call i32 @input_set_drvdata(%struct.input_dev* %93, %struct.lkkbd* %94)
  %96 = load i32, i32* @EV_KEY, align 4
  %97 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %98 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @set_bit(i32 %96, i32 %99)
  %101 = load i32, i32* @EV_LED, align 4
  %102 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %103 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @set_bit(i32 %101, i32 %104)
  %106 = load i32, i32* @EV_SND, align 4
  %107 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %108 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @set_bit(i32 %106, i32 %109)
  %111 = load i32, i32* @EV_REP, align 4
  %112 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %113 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @set_bit(i32 %111, i32 %114)
  %116 = load i32, i32* @LED_CAPSL, align 4
  %117 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %118 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @set_bit(i32 %116, i32 %119)
  %121 = load i32, i32* @LED_SLEEP, align 4
  %122 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %123 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @set_bit(i32 %121, i32 %124)
  %126 = load i32, i32* @LED_COMPOSE, align 4
  %127 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %128 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @set_bit(i32 %126, i32 %129)
  %131 = load i32, i32* @LED_SCROLLL, align 4
  %132 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %133 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @set_bit(i32 %131, i32 %134)
  %136 = load i32, i32* @SND_BELL, align 4
  %137 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %138 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @set_bit(i32 %136, i32 %139)
  %141 = load i32, i32* @SND_CLICK, align 4
  %142 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %143 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @set_bit(i32 %141, i32 %144)
  %146 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %147 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %150 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %149, i32 0, i32 3
  store i32* %148, i32** %150, align 8
  %151 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %152 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %151, i32 0, i32 0
  store i32 4, i32* %152, align 8
  %153 = load i32, i32* @LK_NUM_KEYCODES, align 4
  %154 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %155 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  store i32 0, i32* %8, align 4
  br label %156

156:                                              ; preds = %172, %21
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @LK_NUM_KEYCODES, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %175

160:                                              ; preds = %156
  %161 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %162 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %169 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @__set_bit(i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %160
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %156

175:                                              ; preds = %156
  %176 = load i32, i32* @KEY_RESERVED, align 4
  %177 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %178 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @__clear_bit(i32 %176, i32 %179)
  %181 = load %struct.serio*, %struct.serio** %4, align 8
  %182 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %183 = call i32 @serio_set_drvdata(%struct.serio* %181, %struct.lkkbd* %182)
  %184 = load %struct.serio*, %struct.serio** %4, align 8
  %185 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %186 = call i32 @serio_open(%struct.serio* %184, %struct.serio_driver* %185)
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %175
  br label %207

190:                                              ; preds = %175
  %191 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %192 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %191, i32 0, i32 1
  %193 = load %struct.input_dev*, %struct.input_dev** %192, align 8
  %194 = call i32 @input_register_device(%struct.input_dev* %193)
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %190
  br label %204

198:                                              ; preds = %190
  %199 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %200 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %199, i32 0, i32 0
  %201 = load %struct.serio*, %struct.serio** %200, align 8
  %202 = load i32, i32* @LK_CMD_POWERCYCLE_RESET, align 4
  %203 = call i32 @serio_write(%struct.serio* %201, i32 %202)
  store i32 0, i32* %3, align 4
  br label %216

204:                                              ; preds = %197
  %205 = load %struct.serio*, %struct.serio** %4, align 8
  %206 = call i32 @serio_close(%struct.serio* %205)
  br label %207

207:                                              ; preds = %204, %189
  %208 = load %struct.serio*, %struct.serio** %4, align 8
  %209 = call i32 @serio_set_drvdata(%struct.serio* %208, %struct.lkkbd* null)
  br label %210

210:                                              ; preds = %207, %18
  %211 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %212 = call i32 @input_free_device(%struct.input_dev* %211)
  %213 = load %struct.lkkbd*, %struct.lkkbd** %6, align 8
  %214 = call i32 @kfree(%struct.lkkbd* %213)
  %215 = load i32, i32* %9, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %210, %198
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local %struct.lkkbd* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.lkkbd*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.lkkbd*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @serio_write(%struct.serio*, i32) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.lkkbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
