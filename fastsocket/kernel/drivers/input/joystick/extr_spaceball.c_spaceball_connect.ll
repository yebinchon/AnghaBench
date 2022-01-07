; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_spaceball.c_spaceball_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_spaceball.c_spaceball_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.serio_driver = type { i32 }
%struct.spaceball = type { %struct.input_dev*, i32 }
%struct.input_dev = type { i32*, i32*, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SPACEBALL_MAX_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@spaceball_names = common dso_local global i32* null, align 8
@BUS_RS232 = common dso_local global i32 0, align 4
@SERIO_SPACEBALL = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@BTN_9 = common dso_local global i32 0, align 4
@BTN_0 = common dso_local global i32 0, align 4
@BTN_A = common dso_local global i32 0, align 4
@BTN_B = common dso_local global i32 0, align 4
@BTN_C = common dso_local global i32 0, align 4
@BTN_MODE = common dso_local global i32 0, align 4
@BTN_2 = common dso_local global i32 0, align 4
@BTN_3 = common dso_local global i32 0, align 4
@BTN_4 = common dso_local global i32 0, align 4
@BTN_5 = common dso_local global i32 0, align 4
@BTN_6 = common dso_local global i32 0, align 4
@BTN_7 = common dso_local global i32 0, align 4
@BTN_8 = common dso_local global i32 0, align 4
@BTN_1 = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i64 0, align 8
@ABS_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @spaceball_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spaceball_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.spaceball*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.serio*, %struct.serio** %4, align 8
  %14 = getelementptr inbounds %struct.serio, %struct.serio* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @SPACEBALL_MAX_ID, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %209

22:                                               ; preds = %2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.spaceball* @kmalloc(i32 16, i32 %23)
  store %struct.spaceball* %24, %struct.spaceball** %6, align 8
  %25 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %25, %struct.input_dev** %7, align 8
  %26 = load %struct.spaceball*, %struct.spaceball** %6, align 8
  %27 = icmp ne %struct.spaceball* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %30 = icmp ne %struct.input_dev* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %22
  br label %203

32:                                               ; preds = %28
  %33 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %34 = load %struct.spaceball*, %struct.spaceball** %6, align 8
  %35 = getelementptr inbounds %struct.spaceball, %struct.spaceball* %34, i32 0, i32 0
  store %struct.input_dev* %33, %struct.input_dev** %35, align 8
  %36 = load %struct.spaceball*, %struct.spaceball** %6, align 8
  %37 = getelementptr inbounds %struct.spaceball, %struct.spaceball* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.serio*, %struct.serio** %4, align 8
  %40 = getelementptr inbounds %struct.serio, %struct.serio* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @snprintf(i32 %38, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load i32*, i32** @spaceball_names, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.spaceball*, %struct.spaceball** %6, align 8
  %51 = getelementptr inbounds %struct.spaceball, %struct.spaceball* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %54 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @BUS_RS232, align 4
  %56 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @SERIO_SPACEBALL, align 4
  %60 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %61 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %68 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 256, i32* %69, align 4
  %70 = load %struct.serio*, %struct.serio** %4, align 8
  %71 = getelementptr inbounds %struct.serio, %struct.serio* %70, i32 0, i32 1
  %72 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %73 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32* %71, i32** %74, align 8
  %75 = load i32, i32* @EV_KEY, align 4
  %76 = call i32 @BIT_MASK(i32 %75)
  %77 = load i32, i32* @EV_ABS, align 4
  %78 = call i32 @BIT_MASK(i32 %77)
  %79 = or i32 %76, %78
  %80 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %81 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* %10, align 4
  switch i32 %84, label %115 [
    i32 129, label %85
    i32 128, label %85
    i32 130, label %144
  ]

85:                                               ; preds = %32, %32
  %86 = load i32, i32* @BTN_9, align 4
  %87 = call i32 @BIT_MASK(i32 %86)
  %88 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %89 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @BTN_0, align 4
  %92 = call i64 @BIT_WORD(i32 %91)
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %87
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @BTN_A, align 4
  %97 = call i32 @BIT_MASK(i32 %96)
  %98 = load i32, i32* @BTN_B, align 4
  %99 = call i32 @BIT_MASK(i32 %98)
  %100 = or i32 %97, %99
  %101 = load i32, i32* @BTN_C, align 4
  %102 = call i32 @BIT_MASK(i32 %101)
  %103 = or i32 %100, %102
  %104 = load i32, i32* @BTN_MODE, align 4
  %105 = call i32 @BIT_MASK(i32 %104)
  %106 = or i32 %103, %105
  %107 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %108 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* @BTN_A, align 4
  %111 = call i64 @BIT_WORD(i32 %110)
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %106
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %32, %85
  %116 = load i32, i32* @BTN_2, align 4
  %117 = call i32 @BIT_MASK(i32 %116)
  %118 = load i32, i32* @BTN_3, align 4
  %119 = call i32 @BIT_MASK(i32 %118)
  %120 = or i32 %117, %119
  %121 = load i32, i32* @BTN_4, align 4
  %122 = call i32 @BIT_MASK(i32 %121)
  %123 = or i32 %120, %122
  %124 = load i32, i32* @BTN_5, align 4
  %125 = call i32 @BIT_MASK(i32 %124)
  %126 = or i32 %123, %125
  %127 = load i32, i32* @BTN_6, align 4
  %128 = call i32 @BIT_MASK(i32 %127)
  %129 = or i32 %126, %128
  %130 = load i32, i32* @BTN_7, align 4
  %131 = call i32 @BIT_MASK(i32 %130)
  %132 = or i32 %129, %131
  %133 = load i32, i32* @BTN_8, align 4
  %134 = call i32 @BIT_MASK(i32 %133)
  %135 = or i32 %132, %134
  %136 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %137 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* @BTN_0, align 4
  %140 = call i64 @BIT_WORD(i32 %139)
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %135
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %32, %115
  %145 = load i32, i32* @BTN_1, align 4
  %146 = call i32 @BIT_MASK(i32 %145)
  %147 = load i32, i32* @BTN_8, align 4
  %148 = call i32 @BIT_MASK(i32 %147)
  %149 = or i32 %146, %148
  %150 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %151 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* @BTN_0, align 4
  %154 = call i64 @BIT_WORD(i32 %153)
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %149
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %144
  store i32 0, i32* %9, align 4
  br label %159

159:                                              ; preds = %175, %158
  %160 = load i32, i32* %9, align 4
  %161 = icmp slt i32 %160, 3
  br i1 %161, label %162, label %178

162:                                              ; preds = %159
  %163 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %164 = load i64, i64* @ABS_X, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %164, %166
  %168 = call i32 @input_set_abs_params(%struct.input_dev* %163, i64 %167, i32 -8000, i32 8000, i32 8, i32 40)
  %169 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %170 = load i64, i64* @ABS_RX, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %170, %172
  %174 = call i32 @input_set_abs_params(%struct.input_dev* %169, i64 %173, i32 -1600, i32 1600, i32 2, i32 8)
  br label %175

175:                                              ; preds = %162
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  br label %159

178:                                              ; preds = %159
  %179 = load %struct.serio*, %struct.serio** %4, align 8
  %180 = load %struct.spaceball*, %struct.spaceball** %6, align 8
  %181 = call i32 @serio_set_drvdata(%struct.serio* %179, %struct.spaceball* %180)
  %182 = load %struct.serio*, %struct.serio** %4, align 8
  %183 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %184 = call i32 @serio_open(%struct.serio* %182, %struct.serio_driver* %183)
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  br label %200

188:                                              ; preds = %178
  %189 = load %struct.spaceball*, %struct.spaceball** %6, align 8
  %190 = getelementptr inbounds %struct.spaceball, %struct.spaceball* %189, i32 0, i32 0
  %191 = load %struct.input_dev*, %struct.input_dev** %190, align 8
  %192 = call i32 @input_register_device(%struct.input_dev* %191)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  br label %197

196:                                              ; preds = %188
  store i32 0, i32* %3, align 4
  br label %209

197:                                              ; preds = %195
  %198 = load %struct.serio*, %struct.serio** %4, align 8
  %199 = call i32 @serio_close(%struct.serio* %198)
  br label %200

200:                                              ; preds = %197, %187
  %201 = load %struct.serio*, %struct.serio** %4, align 8
  %202 = call i32 @serio_set_drvdata(%struct.serio* %201, %struct.spaceball* null)
  br label %203

203:                                              ; preds = %200, %31
  %204 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %205 = call i32 @input_free_device(%struct.input_dev* %204)
  %206 = load %struct.spaceball*, %struct.spaceball** %6, align 8
  %207 = call i32 @kfree(%struct.spaceball* %206)
  %208 = load i32, i32* %8, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %203, %196, %19
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local %struct.spaceball* @kmalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i64 @BIT_WORD(i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.spaceball*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.spaceball*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
