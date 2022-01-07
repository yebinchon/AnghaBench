; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_input_dev_g.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_input_dev_g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32*, i32*, i32* }
%struct.wacom_wac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EV_REL = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_MOUSE = common dso_local global i32 0, align 4
@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_TOOL_MOUSE = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@BTN_DIGI = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_dev_g(%struct.input_dev* %0, %struct.wacom_wac* %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.wacom_wac*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store %struct.wacom_wac* %1, %struct.wacom_wac** %4, align 8
  %5 = load i32, i32* @EV_REL, align 4
  %6 = call i32 @BIT_MASK(i32 %5)
  %7 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %8 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %6
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @REL_WHEEL, align 4
  %14 = call i32 @BIT_MASK(i32 %13)
  %15 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %16 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %14
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @BTN_LEFT, align 4
  %22 = call i32 @BIT_MASK(i32 %21)
  %23 = load i32, i32* @BTN_RIGHT, align 4
  %24 = call i32 @BIT_MASK(i32 %23)
  %25 = or i32 %22, %24
  %26 = load i32, i32* @BTN_MIDDLE, align 4
  %27 = call i32 @BIT_MASK(i32 %26)
  %28 = or i32 %25, %27
  %29 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %30 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @BTN_MOUSE, align 4
  %33 = call i64 @BIT_WORD(i32 %32)
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %28
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %38 = call i32 @BIT_MASK(i32 %37)
  %39 = load i32, i32* @BTN_TOOL_PEN, align 4
  %40 = call i32 @BIT_MASK(i32 %39)
  %41 = or i32 %38, %40
  %42 = load i32, i32* @BTN_STYLUS, align 4
  %43 = call i32 @BIT_MASK(i32 %42)
  %44 = or i32 %41, %43
  %45 = load i32, i32* @BTN_TOOL_MOUSE, align 4
  %46 = call i32 @BIT_MASK(i32 %45)
  %47 = or i32 %44, %46
  %48 = load i32, i32* @BTN_STYLUS2, align 4
  %49 = call i32 @BIT_MASK(i32 %48)
  %50 = or i32 %47, %49
  %51 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @BTN_DIGI, align 4
  %55 = call i64 @BIT_WORD(i32 %54)
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %50
  store i32 %58, i32* %56, align 4
  %59 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %60 = load i32, i32* @ABS_DISTANCE, align 4
  %61 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %62 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @input_set_abs_params(%struct.input_dev* %59, i32 %60, i32 0, i32 %65, i32 0, i32 0)
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
