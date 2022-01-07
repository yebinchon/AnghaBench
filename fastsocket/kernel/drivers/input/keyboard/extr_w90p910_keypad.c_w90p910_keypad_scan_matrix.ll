; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_w90p910_keypad.c_w90p910_keypad_scan_matrix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_w90p910_keypad.c_w90p910_keypad_scan_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w90p910_keypad = type { i32*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@W90P910_ROW_SHIFT = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w90p910_keypad*, i32)* @w90p910_keypad_scan_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w90p910_keypad_scan_matrix(%struct.w90p910_keypad* %0, i32 %1) #0 {
  %3 = alloca %struct.w90p910_keypad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.w90p910_keypad* %0, %struct.w90p910_keypad** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.w90p910_keypad*, %struct.w90p910_keypad** %3, align 8
  %11 = getelementptr inbounds %struct.w90p910_keypad, %struct.w90p910_keypad* %10, i32 0, i32 1
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @KGET_RAW(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @KGET_COLUMN(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @W90P910_ROW_SHIFT, align 4
  %20 = call i32 @MATRIX_SCAN_CODE(i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.w90p910_keypad*, %struct.w90p910_keypad** %3, align 8
  %22 = getelementptr inbounds %struct.w90p910_keypad, %struct.w90p910_keypad* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %29 = load i32, i32* @EV_MSC, align 4
  %30 = load i32, i32* @MSC_SCAN, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @input_event(%struct.input_dev* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @input_report_key(%struct.input_dev* %33, i32 %34, i32 1)
  %36 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %37 = call i32 @input_sync(%struct.input_dev* %36)
  %38 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %39 = load i32, i32* @EV_MSC, align 4
  %40 = load i32, i32* @MSC_SCAN, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @input_event(%struct.input_dev* %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @input_report_key(%struct.input_dev* %43, i32 %44, i32 0)
  %46 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %47 = call i32 @input_sync(%struct.input_dev* %46)
  ret void
}

declare dso_local i32 @KGET_RAW(i32) #1

declare dso_local i32 @KGET_COLUMN(i32) #1

declare dso_local i32 @MATRIX_SCAN_CODE(i32, i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
