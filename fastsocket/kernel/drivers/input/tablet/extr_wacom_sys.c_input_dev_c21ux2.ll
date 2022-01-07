; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_input_dev_c21ux2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_input_dev_c21ux2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32* }
%struct.wacom_wac = type { i32 }

@BTN_A = common dso_local global i32 0, align 4
@BTN_B = common dso_local global i32 0, align 4
@BTN_C = common dso_local global i32 0, align 4
@BTN_GAMEPAD = common dso_local global i32 0, align 4
@BTN_X = common dso_local global i32 0, align 4
@BTN_Y = common dso_local global i32 0, align 4
@BTN_Z = common dso_local global i32 0, align 4
@BTN_BASE = common dso_local global i32 0, align 4
@BTN_BASE2 = common dso_local global i32 0, align 4
@BTN_JOYSTICK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_dev_c21ux2(%struct.input_dev* %0, %struct.wacom_wac* %1) #0 {
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
  %37 = load i32, i32* @BTN_BASE, align 4
  %38 = call i32 @BIT_MASK(i32 %37)
  %39 = load i32, i32* @BTN_BASE2, align 4
  %40 = call i32 @BIT_MASK(i32 %39)
  %41 = or i32 %38, %40
  %42 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @BTN_JOYSTICK, align 4
  %46 = call i64 @BIT_WORD(i32 %45)
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %41
  store i32 %49, i32* %47, align 4
  ret void
}

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i64 @BIT_WORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
