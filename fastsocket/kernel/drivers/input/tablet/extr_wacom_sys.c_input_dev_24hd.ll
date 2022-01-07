; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_input_dev_24hd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_input_dev_24hd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32* }
%struct.wacom_wac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BTN_A = common dso_local global i32 0, align 4
@BTN_B = common dso_local global i32 0, align 4
@BTN_C = common dso_local global i32 0, align 4
@BTN_GAMEPAD = common dso_local global i32 0, align 4
@BTN_X = common dso_local global i32 0, align 4
@BTN_Y = common dso_local global i32 0, align 4
@BTN_Z = common dso_local global i32 0, align 4
@BTN_0 = common dso_local global i32 0, align 4
@BTN_1 = common dso_local global i32 0, align 4
@BTN_2 = common dso_local global i32 0, align 4
@BTN_3 = common dso_local global i32 0, align 4
@BTN_4 = common dso_local global i32 0, align 4
@BTN_5 = common dso_local global i32 0, align 4
@BTN_6 = common dso_local global i32 0, align 4
@BTN_7 = common dso_local global i32 0, align 4
@BTN_8 = common dso_local global i32 0, align 4
@BTN_9 = common dso_local global i32 0, align 4
@BTN_MISC = common dso_local global i32 0, align 4
@KEY_PROG1 = common dso_local global i32 0, align 4
@KEY_PROG2 = common dso_local global i32 0, align 4
@KEY_PROG3 = common dso_local global i32 0, align 4
@KEY_PLAYCD = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@ABS_THROTTLE = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_TOOL_BRUSH = common dso_local global i32 0, align 4
@BTN_TOOL_PENCIL = common dso_local global i32 0, align 4
@BTN_TOOL_AIRBRUSH = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@ABS_WHEEL = common dso_local global i32 0, align 4
@ABS_TILT_X = common dso_local global i32 0, align 4
@ABS_TILT_Y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_dev_24hd(%struct.input_dev* %0, %struct.wacom_wac* %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.wacom_wac*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store %struct.wacom_wac* %1, %struct.wacom_wac** %4, align 8
  %5 = load i32, i32* @BTN_A, align 4
  %6 = call i32 @BIT_MASK(i32 %5)
  %7 = load i32, i32* @BTN_B, align 4
  %8 = call i32 @BIT_MASK(i32 %7)
  %9 = or i32 %6, %8
  %10 = load i32, i32* @BTN_C, align 4
  %11 = call i32 @BIT_MASK(i32 %10)
  %12 = or i32 %9, %11
  %13 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %14 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @BTN_GAMEPAD, align 4
  %17 = call i64 @BIT_WORD(i32 %16)
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %12
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @BTN_X, align 4
  %22 = call i32 @BIT_MASK(i32 %21)
  %23 = load i32, i32* @BTN_Y, align 4
  %24 = call i32 @BIT_MASK(i32 %23)
  %25 = or i32 %22, %24
  %26 = load i32, i32* @BTN_Z, align 4
  %27 = call i32 @BIT_MASK(i32 %26)
  %28 = or i32 %25, %27
  %29 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %30 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @BTN_GAMEPAD, align 4
  %33 = call i64 @BIT_WORD(i32 %32)
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %28
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @BTN_0, align 4
  %38 = call i32 @BIT_MASK(i32 %37)
  %39 = load i32, i32* @BTN_1, align 4
  %40 = call i32 @BIT_MASK(i32 %39)
  %41 = or i32 %38, %40
  %42 = load i32, i32* @BTN_2, align 4
  %43 = call i32 @BIT_MASK(i32 %42)
  %44 = or i32 %41, %43
  %45 = load i32, i32* @BTN_3, align 4
  %46 = call i32 @BIT_MASK(i32 %45)
  %47 = or i32 %44, %46
  %48 = load i32, i32* @BTN_4, align 4
  %49 = call i32 @BIT_MASK(i32 %48)
  %50 = or i32 %47, %49
  %51 = load i32, i32* @BTN_5, align 4
  %52 = call i32 @BIT_MASK(i32 %51)
  %53 = or i32 %50, %52
  %54 = load i32, i32* @BTN_6, align 4
  %55 = call i32 @BIT_MASK(i32 %54)
  %56 = or i32 %53, %55
  %57 = load i32, i32* @BTN_7, align 4
  %58 = call i32 @BIT_MASK(i32 %57)
  %59 = or i32 %56, %58
  %60 = load i32, i32* @BTN_8, align 4
  %61 = call i32 @BIT_MASK(i32 %60)
  %62 = or i32 %59, %61
  %63 = load i32, i32* @BTN_9, align 4
  %64 = call i32 @BIT_MASK(i32 %63)
  %65 = or i32 %62, %64
  %66 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %67 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @BTN_MISC, align 4
  %70 = call i64 @BIT_WORD(i32 %69)
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %65
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* @KEY_PROG1, align 4
  %75 = call i32 @BIT_MASK(i32 %74)
  %76 = load i32, i32* @KEY_PROG2, align 4
  %77 = call i32 @BIT_MASK(i32 %76)
  %78 = or i32 %75, %77
  %79 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %80 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @KEY_PROG1, align 4
  %83 = call i64 @BIT_WORD(i32 %82)
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %78
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @KEY_PROG3, align 4
  %88 = call i32 @BIT_MASK(i32 %87)
  %89 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %90 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @KEY_PLAYCD, align 4
  %93 = call i64 @BIT_WORD(i32 %92)
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %88
  store i32 %96, i32* %94, align 4
  %97 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %98 = load i32, i32* @ABS_Z, align 4
  %99 = call i32 @input_set_abs_params(%struct.input_dev* %97, i32 %98, i32 -900, i32 899, i32 0, i32 0)
  %100 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %101 = load i32, i32* @ABS_THROTTLE, align 4
  %102 = call i32 @input_set_abs_params(%struct.input_dev* %100, i32 %101, i32 0, i32 71, i32 0, i32 0)
  %103 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %104 = load i32, i32* @EV_MSC, align 4
  %105 = load i32, i32* @MSC_SERIAL, align 4
  %106 = call i32 @input_set_capability(%struct.input_dev* %103, i32 %104, i32 %105)
  %107 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %108 = call i32 @BIT_MASK(i32 %107)
  %109 = load i32, i32* @BTN_TOOL_PEN, align 4
  %110 = call i32 @BIT_MASK(i32 %109)
  %111 = or i32 %108, %110
  %112 = load i32, i32* @BTN_TOOL_BRUSH, align 4
  %113 = call i32 @BIT_MASK(i32 %112)
  %114 = or i32 %111, %113
  %115 = load i32, i32* @BTN_TOOL_PENCIL, align 4
  %116 = call i32 @BIT_MASK(i32 %115)
  %117 = or i32 %114, %116
  %118 = load i32, i32* @BTN_TOOL_AIRBRUSH, align 4
  %119 = call i32 @BIT_MASK(i32 %118)
  %120 = or i32 %117, %119
  %121 = load i32, i32* @BTN_STYLUS, align 4
  %122 = call i32 @BIT_MASK(i32 %121)
  %123 = or i32 %120, %122
  %124 = load i32, i32* @BTN_STYLUS2, align 4
  %125 = call i32 @BIT_MASK(i32 %124)
  %126 = or i32 %123, %125
  %127 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %128 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %131 = call i64 @BIT_WORD(i32 %130)
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %126
  store i32 %134, i32* %132, align 4
  %135 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %136 = load i32, i32* @ABS_DISTANCE, align 4
  %137 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %138 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %137, i32 0, i32 0
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @input_set_abs_params(%struct.input_dev* %135, i32 %136, i32 0, i32 %141, i32 0, i32 0)
  %143 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %144 = load i32, i32* @ABS_WHEEL, align 4
  %145 = call i32 @input_set_abs_params(%struct.input_dev* %143, i32 %144, i32 0, i32 1023, i32 0, i32 0)
  %146 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %147 = load i32, i32* @ABS_TILT_X, align 4
  %148 = call i32 @input_set_abs_params(%struct.input_dev* %146, i32 %147, i32 0, i32 127, i32 0, i32 0)
  %149 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %150 = load i32, i32* @ABS_TILT_Y, align 4
  %151 = call i32 @input_set_abs_params(%struct.input_dev* %149, i32 %150, i32 0, i32 127, i32 0, i32 0)
  ret void
}

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i64 @BIT_WORD(i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
