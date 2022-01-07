; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_input_dev_cintiq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_input_dev_cintiq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32*, i32*, i32* }
%struct.wacom_wac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BTN_0 = common dso_local global i32 0, align 4
@BTN_1 = common dso_local global i32 0, align 4
@BTN_2 = common dso_local global i32 0, align 4
@BTN_3 = common dso_local global i32 0, align 4
@BTN_MISC = common dso_local global i32 0, align 4
@BTN_4 = common dso_local global i32 0, align 4
@BTN_5 = common dso_local global i32 0, align 4
@BTN_6 = common dso_local global i32 0, align 4
@BTN_7 = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_DIGI = common dso_local global i32 0, align 4
@ABS_RX = common dso_local global i32 0, align 4
@ABS_RY = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
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
define dso_local void @input_dev_cintiq(%struct.input_dev* %0, %struct.wacom_wac* %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.wacom_wac*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store %struct.wacom_wac* %1, %struct.wacom_wac** %4, align 8
  %5 = load i32, i32* @BTN_0, align 4
  %6 = call i32 @BIT_MASK(i32 %5)
  %7 = load i32, i32* @BTN_1, align 4
  %8 = call i32 @BIT_MASK(i32 %7)
  %9 = or i32 %6, %8
  %10 = load i32, i32* @BTN_2, align 4
  %11 = call i32 @BIT_MASK(i32 %10)
  %12 = or i32 %9, %11
  %13 = load i32, i32* @BTN_3, align 4
  %14 = call i32 @BIT_MASK(i32 %13)
  %15 = or i32 %12, %14
  %16 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %17 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @BTN_MISC, align 4
  %20 = call i64 @BIT_WORD(i32 %19)
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %15
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @BTN_4, align 4
  %25 = call i32 @BIT_MASK(i32 %24)
  %26 = load i32, i32* @BTN_5, align 4
  %27 = call i32 @BIT_MASK(i32 %26)
  %28 = or i32 %25, %27
  %29 = load i32, i32* @BTN_6, align 4
  %30 = call i32 @BIT_MASK(i32 %29)
  %31 = or i32 %28, %30
  %32 = load i32, i32* @BTN_7, align 4
  %33 = call i32 @BIT_MASK(i32 %32)
  %34 = or i32 %31, %33
  %35 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @BTN_MISC, align 4
  %39 = call i64 @BIT_WORD(i32 %38)
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %34
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %44 = call i32 @BIT_MASK(i32 %43)
  %45 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %46 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @BTN_DIGI, align 4
  %49 = call i64 @BIT_WORD(i32 %48)
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %44
  store i32 %52, i32* %50, align 4
  %53 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %54 = load i32, i32* @ABS_RX, align 4
  %55 = call i32 @input_set_abs_params(%struct.input_dev* %53, i32 %54, i32 0, i32 4096, i32 0, i32 0)
  %56 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %57 = load i32, i32* @ABS_RY, align 4
  %58 = call i32 @input_set_abs_params(%struct.input_dev* %56, i32 %57, i32 0, i32 4096, i32 0, i32 0)
  %59 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %60 = load i32, i32* @ABS_Z, align 4
  %61 = call i32 @input_set_abs_params(%struct.input_dev* %59, i32 %60, i32 -900, i32 899, i32 0, i32 0)
  %62 = load i32, i32* @EV_MSC, align 4
  %63 = call i32 @BIT_MASK(i32 %62)
  %64 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %63
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @MSC_SERIAL, align 4
  %71 = call i32 @BIT_MASK(i32 %70)
  %72 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %73 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %71
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %79 = call i32 @BIT_MASK(i32 %78)
  %80 = load i32, i32* @BTN_TOOL_PEN, align 4
  %81 = call i32 @BIT_MASK(i32 %80)
  %82 = or i32 %79, %81
  %83 = load i32, i32* @BTN_TOOL_BRUSH, align 4
  %84 = call i32 @BIT_MASK(i32 %83)
  %85 = or i32 %82, %84
  %86 = load i32, i32* @BTN_TOOL_PENCIL, align 4
  %87 = call i32 @BIT_MASK(i32 %86)
  %88 = or i32 %85, %87
  %89 = load i32, i32* @BTN_TOOL_AIRBRUSH, align 4
  %90 = call i32 @BIT_MASK(i32 %89)
  %91 = or i32 %88, %90
  %92 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %93 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* @BTN_DIGI, align 4
  %96 = call i64 @BIT_WORD(i32 %95)
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %91
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* @BTN_STYLUS, align 4
  %101 = call i32 @BIT_MASK(i32 %100)
  %102 = load i32, i32* @BTN_STYLUS2, align 4
  %103 = call i32 @BIT_MASK(i32 %102)
  %104 = or i32 %101, %103
  %105 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %106 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @BTN_DIGI, align 4
  %109 = call i64 @BIT_WORD(i32 %108)
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %104
  store i32 %112, i32* %110, align 4
  %113 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %114 = load i32, i32* @ABS_DISTANCE, align 4
  %115 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %116 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @input_set_abs_params(%struct.input_dev* %113, i32 %114, i32 0, i32 %119, i32 0, i32 0)
  %121 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %122 = load i32, i32* @ABS_WHEEL, align 4
  %123 = call i32 @input_set_abs_params(%struct.input_dev* %121, i32 %122, i32 0, i32 1023, i32 0, i32 0)
  %124 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %125 = load i32, i32* @ABS_TILT_X, align 4
  %126 = call i32 @input_set_abs_params(%struct.input_dev* %124, i32 %125, i32 0, i32 127, i32 0, i32 0)
  %127 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %128 = load i32, i32* @ABS_TILT_Y, align 4
  %129 = call i32 @input_set_abs_params(%struct.input_dev* %127, i32 %128, i32 0, i32 127, i32 0, i32 0)
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
