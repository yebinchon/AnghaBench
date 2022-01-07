; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_input_dev_i.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_input_dev_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32*, i32*, i32*, i32* }
%struct.wacom_wac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EV_MSC = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_SIDE = common dso_local global i32 0, align 4
@BTN_EXTRA = common dso_local global i32 0, align 4
@BTN_MOUSE = common dso_local global i32 0, align 4
@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_TOOL_MOUSE = common dso_local global i32 0, align 4
@BTN_TOOL_BRUSH = common dso_local global i32 0, align 4
@BTN_TOOL_PENCIL = common dso_local global i32 0, align 4
@BTN_TOOL_AIRBRUSH = common dso_local global i32 0, align 4
@BTN_TOOL_LENS = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@BTN_DIGI = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@ABS_WHEEL = common dso_local global i32 0, align 4
@ABS_TILT_X = common dso_local global i32 0, align 4
@ABS_TILT_Y = common dso_local global i32 0, align 4
@ABS_RZ = common dso_local global i32 0, align 4
@ABS_THROTTLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_dev_i(%struct.input_dev* %0, %struct.wacom_wac* %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.wacom_wac*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store %struct.wacom_wac* %1, %struct.wacom_wac** %4, align 8
  %5 = load i32, i32* @EV_MSC, align 4
  %6 = call i32 @BIT_MASK(i32 %5)
  %7 = load i32, i32* @EV_REL, align 4
  %8 = call i32 @BIT_MASK(i32 %7)
  %9 = or i32 %6, %8
  %10 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %11 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %9
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @MSC_SERIAL, align 4
  %17 = call i32 @BIT_MASK(i32 %16)
  %18 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %19 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %17
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @REL_WHEEL, align 4
  %25 = call i32 @BIT_MASK(i32 %24)
  %26 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %27 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %25
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @BTN_LEFT, align 4
  %33 = call i32 @BIT_MASK(i32 %32)
  %34 = load i32, i32* @BTN_RIGHT, align 4
  %35 = call i32 @BIT_MASK(i32 %34)
  %36 = or i32 %33, %35
  %37 = load i32, i32* @BTN_MIDDLE, align 4
  %38 = call i32 @BIT_MASK(i32 %37)
  %39 = or i32 %36, %38
  %40 = load i32, i32* @BTN_SIDE, align 4
  %41 = call i32 @BIT_MASK(i32 %40)
  %42 = or i32 %39, %41
  %43 = load i32, i32* @BTN_EXTRA, align 4
  %44 = call i32 @BIT_MASK(i32 %43)
  %45 = or i32 %42, %44
  %46 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @BTN_MOUSE, align 4
  %50 = call i64 @BIT_WORD(i32 %49)
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %45
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %55 = call i32 @BIT_MASK(i32 %54)
  %56 = load i32, i32* @BTN_TOOL_PEN, align 4
  %57 = call i32 @BIT_MASK(i32 %56)
  %58 = or i32 %55, %57
  %59 = load i32, i32* @BTN_STYLUS, align 4
  %60 = call i32 @BIT_MASK(i32 %59)
  %61 = or i32 %58, %60
  %62 = load i32, i32* @BTN_TOOL_MOUSE, align 4
  %63 = call i32 @BIT_MASK(i32 %62)
  %64 = or i32 %61, %63
  %65 = load i32, i32* @BTN_TOOL_BRUSH, align 4
  %66 = call i32 @BIT_MASK(i32 %65)
  %67 = or i32 %64, %66
  %68 = load i32, i32* @BTN_TOOL_PENCIL, align 4
  %69 = call i32 @BIT_MASK(i32 %68)
  %70 = or i32 %67, %69
  %71 = load i32, i32* @BTN_TOOL_AIRBRUSH, align 4
  %72 = call i32 @BIT_MASK(i32 %71)
  %73 = or i32 %70, %72
  %74 = load i32, i32* @BTN_TOOL_LENS, align 4
  %75 = call i32 @BIT_MASK(i32 %74)
  %76 = or i32 %73, %75
  %77 = load i32, i32* @BTN_STYLUS2, align 4
  %78 = call i32 @BIT_MASK(i32 %77)
  %79 = or i32 %76, %78
  %80 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %81 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @BTN_DIGI, align 4
  %84 = call i64 @BIT_WORD(i32 %83)
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %79
  store i32 %87, i32* %85, align 4
  %88 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %89 = load i32, i32* @ABS_DISTANCE, align 4
  %90 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %91 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @input_set_abs_params(%struct.input_dev* %88, i32 %89, i32 0, i32 %94, i32 0, i32 0)
  %96 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %97 = load i32, i32* @ABS_WHEEL, align 4
  %98 = call i32 @input_set_abs_params(%struct.input_dev* %96, i32 %97, i32 0, i32 1023, i32 0, i32 0)
  %99 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %100 = load i32, i32* @ABS_TILT_X, align 4
  %101 = call i32 @input_set_abs_params(%struct.input_dev* %99, i32 %100, i32 0, i32 127, i32 0, i32 0)
  %102 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %103 = load i32, i32* @ABS_TILT_Y, align 4
  %104 = call i32 @input_set_abs_params(%struct.input_dev* %102, i32 %103, i32 0, i32 127, i32 0, i32 0)
  %105 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %106 = load i32, i32* @ABS_RZ, align 4
  %107 = call i32 @input_set_abs_params(%struct.input_dev* %105, i32 %106, i32 -900, i32 899, i32 0, i32 0)
  %108 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %109 = load i32, i32* @ABS_THROTTLE, align 4
  %110 = call i32 @input_set_abs_params(%struct.input_dev* %108, i32 %109, i32 -1023, i32 1023, i32 0, i32 0)
  ret void
}

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i64 @BIT_WORD(i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
