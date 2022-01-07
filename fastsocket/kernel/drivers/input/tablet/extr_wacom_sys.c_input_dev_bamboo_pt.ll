; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_input_dev_bamboo_pt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_input_dev_bamboo_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32*, i32* }
%struct.wacom_wac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ABS_MISC = common dso_local global i32 0, align 4
@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@BTN_DIGI = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_dev_bamboo_pt(%struct.input_dev* %0, %struct.wacom_wac* %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.wacom_wac*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store %struct.wacom_wac* %1, %struct.wacom_wac** %4, align 8
  %5 = load i32, i32* @ABS_MISC, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %8 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* @ABS_MISC, align 4
  %11 = call i64 @BIT_WORD(i32 %10)
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %6
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %16 = call i32 @BIT_MASK(i32 %15)
  %17 = load i32, i32* @BTN_STYLUS2, align 4
  %18 = call i32 @BIT_MASK(i32 %17)
  %19 = or i32 %16, %18
  %20 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @BTN_DIGI, align 4
  %24 = call i64 @BIT_WORD(i32 %23)
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %19
  store i32 %27, i32* %25, align 4
  %28 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %29 = load i32, i32* @ABS_DISTANCE, align 4
  %30 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %31 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @input_set_abs_params(%struct.input_dev* %28, i32 %29, i32 0, i32 %34, i32 0, i32 0)
  ret void
}

declare dso_local i64 @BIT_WORD(i32) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
