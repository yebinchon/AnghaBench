; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_input_dev_i4s.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_input_dev_i4s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32* }
%struct.wacom_wac = type { i32 }

@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_DIGI = common dso_local global i32 0, align 4
@BTN_0 = common dso_local global i32 0, align 4
@BTN_1 = common dso_local global i32 0, align 4
@BTN_2 = common dso_local global i32 0, align 4
@BTN_3 = common dso_local global i32 0, align 4
@BTN_MISC = common dso_local global i32 0, align 4
@BTN_4 = common dso_local global i32 0, align 4
@BTN_5 = common dso_local global i32 0, align 4
@BTN_6 = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_dev_i4s(%struct.input_dev* %0, %struct.wacom_wac* %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.wacom_wac*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store %struct.wacom_wac* %1, %struct.wacom_wac** %4, align 8
  %5 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %6 = call i32 @BIT_MASK(i32 %5)
  %7 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %8 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* @BTN_DIGI, align 4
  %11 = call i64 @BIT_WORD(i32 %10)
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %6
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @BTN_0, align 4
  %16 = call i32 @BIT_MASK(i32 %15)
  %17 = load i32, i32* @BTN_1, align 4
  %18 = call i32 @BIT_MASK(i32 %17)
  %19 = or i32 %16, %18
  %20 = load i32, i32* @BTN_2, align 4
  %21 = call i32 @BIT_MASK(i32 %20)
  %22 = or i32 %19, %21
  %23 = load i32, i32* @BTN_3, align 4
  %24 = call i32 @BIT_MASK(i32 %23)
  %25 = or i32 %22, %24
  %26 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %27 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @BTN_MISC, align 4
  %30 = call i64 @BIT_WORD(i32 %29)
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %25
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @BTN_4, align 4
  %35 = call i32 @BIT_MASK(i32 %34)
  %36 = load i32, i32* @BTN_5, align 4
  %37 = call i32 @BIT_MASK(i32 %36)
  %38 = or i32 %35, %37
  %39 = load i32, i32* @BTN_6, align 4
  %40 = call i32 @BIT_MASK(i32 %39)
  %41 = or i32 %38, %40
  %42 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @BTN_MISC, align 4
  %46 = call i64 @BIT_WORD(i32 %45)
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %41
  store i32 %49, i32* %47, align 4
  %50 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %51 = load i32, i32* @ABS_Z, align 4
  %52 = call i32 @input_set_abs_params(%struct.input_dev* %50, i32 %51, i32 -900, i32 899, i32 0, i32 0)
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
