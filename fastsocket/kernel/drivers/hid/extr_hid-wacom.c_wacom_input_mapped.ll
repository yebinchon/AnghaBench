; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-wacom.c_wacom_input_mapped.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-wacom.c_wacom_input_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { %struct.input_dev* }
%struct.input_dev = type { i32*, i32, i32, i32, i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }

@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@BTN_0 = common dso_local global i32 0, align 4
@BTN_1 = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@BTN_TOOL_MOUSE = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@BTN_2 = common dso_local global i32 0, align 4
@BTN_3 = common dso_local global i32 0, align 4
@BTN_4 = common dso_local global i32 0, align 4
@BTN_5 = common dso_local global i32 0, align 4
@BTN_6 = common dso_local global i32 0, align 4
@BTN_7 = common dso_local global i32 0, align 4
@BTN_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @wacom_input_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_input_mapped(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca %struct.hid_input*, align 8
  %9 = alloca %struct.hid_field*, align 8
  %10 = alloca %struct.hid_usage*, align 8
  %11 = alloca i64**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.input_dev*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store %struct.hid_input* %1, %struct.hid_input** %8, align 8
  store %struct.hid_field* %2, %struct.hid_field** %9, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %10, align 8
  store i64** %4, i64*** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.hid_input*, %struct.hid_input** %8, align 8
  %15 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %14, i32 0, i32 0
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %13, align 8
  %17 = load i32, i32* @EV_KEY, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = load i32, i32* @EV_ABS, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = or i32 %18, %20
  %22 = load i32, i32* @EV_REL, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = or i32 %21, %23
  %25 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %24
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @REL_WHEEL, align 4
  %32 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %33 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @__set_bit(i32 %31, i32 %34)
  %36 = load i32, i32* @BTN_TOOL_PEN, align 4
  %37 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @__set_bit(i32 %36, i32 %39)
  %41 = load i32, i32* @BTN_TOUCH, align 4
  %42 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @__set_bit(i32 %41, i32 %44)
  %46 = load i32, i32* @BTN_STYLUS, align 4
  %47 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @__set_bit(i32 %46, i32 %49)
  %51 = load i32, i32* @BTN_STYLUS2, align 4
  %52 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %53 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @__set_bit(i32 %51, i32 %54)
  %56 = load i32, i32* @BTN_LEFT, align 4
  %57 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %58 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @__set_bit(i32 %56, i32 %59)
  %61 = load i32, i32* @BTN_RIGHT, align 4
  %62 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %63 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @__set_bit(i32 %61, i32 %64)
  %66 = load i32, i32* @BTN_MIDDLE, align 4
  %67 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %68 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @__set_bit(i32 %66, i32 %69)
  %71 = load i32, i32* @EV_MSC, align 4
  %72 = call i32 @BIT(i32 %71)
  %73 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %72
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* @MSC_SERIAL, align 4
  %80 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %81 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @__set_bit(i32 %79, i32 %82)
  %84 = load i32, i32* @BTN_0, align 4
  %85 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %86 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @__set_bit(i32 %84, i32 %87)
  %89 = load i32, i32* @BTN_1, align 4
  %90 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %91 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @__set_bit(i32 %89, i32 %92)
  %94 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %95 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %96 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @__set_bit(i32 %94, i32 %97)
  %99 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %100 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %101 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @__set_bit(i32 %99, i32 %102)
  %104 = load i32, i32* @BTN_TOOL_MOUSE, align 4
  %105 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %106 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @__set_bit(i32 %104, i32 %107)
  %109 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %110 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %178 [
    i32 129, label %112
    i32 128, label %125
  ]

112:                                              ; preds = %6
  %113 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %114 = load i32, i32* @ABS_X, align 4
  %115 = call i32 @input_set_abs_params(%struct.input_dev* %113, i32 %114, i32 0, i32 16704, i32 4, i32 0)
  %116 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %117 = load i32, i32* @ABS_Y, align 4
  %118 = call i32 @input_set_abs_params(%struct.input_dev* %116, i32 %117, i32 0, i32 12064, i32 4, i32 0)
  %119 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %120 = load i32, i32* @ABS_PRESSURE, align 4
  %121 = call i32 @input_set_abs_params(%struct.input_dev* %119, i32 %120, i32 0, i32 511, i32 0, i32 0)
  %122 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %123 = load i32, i32* @ABS_DISTANCE, align 4
  %124 = call i32 @input_set_abs_params(%struct.input_dev* %122, i32 %123, i32 0, i32 32, i32 0, i32 0)
  br label %178

125:                                              ; preds = %6
  %126 = load i32, i32* @ABS_MISC, align 4
  %127 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %128 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @__set_bit(i32 %126, i32 %129)
  %131 = load i32, i32* @BTN_2, align 4
  %132 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %133 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @__set_bit(i32 %131, i32 %134)
  %136 = load i32, i32* @BTN_3, align 4
  %137 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %138 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @__set_bit(i32 %136, i32 %139)
  %141 = load i32, i32* @BTN_4, align 4
  %142 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %143 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @__set_bit(i32 %141, i32 %144)
  %146 = load i32, i32* @BTN_5, align 4
  %147 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %148 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @__set_bit(i32 %146, i32 %149)
  %151 = load i32, i32* @BTN_6, align 4
  %152 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %153 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @__set_bit(i32 %151, i32 %154)
  %156 = load i32, i32* @BTN_7, align 4
  %157 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %158 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @__set_bit(i32 %156, i32 %159)
  %161 = load i32, i32* @BTN_8, align 4
  %162 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %163 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @__set_bit(i32 %161, i32 %164)
  %166 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %167 = load i32, i32* @ABS_X, align 4
  %168 = call i32 @input_set_abs_params(%struct.input_dev* %166, i32 %167, i32 0, i32 40640, i32 4, i32 0)
  %169 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %170 = load i32, i32* @ABS_Y, align 4
  %171 = call i32 @input_set_abs_params(%struct.input_dev* %169, i32 %170, i32 0, i32 25400, i32 4, i32 0)
  %172 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %173 = load i32, i32* @ABS_PRESSURE, align 4
  %174 = call i32 @input_set_abs_params(%struct.input_dev* %172, i32 %173, i32 0, i32 2047, i32 0, i32 0)
  %175 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %176 = load i32, i32* @ABS_DISTANCE, align 4
  %177 = call i32 @input_set_abs_params(%struct.input_dev* %175, i32 %176, i32 0, i32 63, i32 0, i32 0)
  br label %178

178:                                              ; preds = %6, %125, %112
  ret i32 0
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
