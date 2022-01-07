; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_max7359_keypad.c_max7359_build_keycode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_max7359_keypad.c_max7359_build_keycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max7359_keypad = type { i16*, %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.matrix_keymap_data = type { i32, i32* }

@MAX7359_ROW_SHIFT = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max7359_keypad*, %struct.matrix_keymap_data*)* @max7359_build_keycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max7359_build_keycode(%struct.max7359_keypad* %0, %struct.matrix_keymap_data* %1) #0 {
  %3 = alloca %struct.max7359_keypad*, align 8
  %4 = alloca %struct.matrix_keymap_data*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  store %struct.max7359_keypad* %0, %struct.max7359_keypad** %3, align 8
  store %struct.matrix_keymap_data* %1, %struct.matrix_keymap_data** %4, align 8
  %12 = load %struct.max7359_keypad*, %struct.max7359_keypad** %3, align 8
  %13 = getelementptr inbounds %struct.max7359_keypad, %struct.max7359_keypad* %12, i32 0, i32 1
  %14 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  store %struct.input_dev* %14, %struct.input_dev** %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %51, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.matrix_keymap_data*, %struct.matrix_keymap_data** %4, align 8
  %18 = getelementptr inbounds %struct.matrix_keymap_data, %struct.matrix_keymap_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %15
  %22 = load %struct.matrix_keymap_data*, %struct.matrix_keymap_data** %4, align 8
  %23 = getelementptr inbounds %struct.matrix_keymap_data, %struct.matrix_keymap_data* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @KEY_ROW(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @KEY_COL(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @MAX7359_ROW_SHIFT, align 4
  %36 = call i32 @MATRIX_SCAN_CODE(i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call zeroext i16 @KEY_VAL(i32 %37)
  store i16 %38, i16* %11, align 2
  %39 = load i16, i16* %11, align 2
  %40 = load %struct.max7359_keypad*, %struct.max7359_keypad** %3, align 8
  %41 = getelementptr inbounds %struct.max7359_keypad, %struct.max7359_keypad* %40, i32 0, i32 0
  %42 = load i16*, i16** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i16, i16* %42, i64 %44
  store i16 %39, i16* %45, align 2
  %46 = load i16, i16* %11, align 2
  %47 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @__set_bit(i16 zeroext %46, i32 %49)
  br label %51

51:                                               ; preds = %21
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %15

54:                                               ; preds = %15
  %55 = load i32, i32* @KEY_RESERVED, align 4
  %56 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @__clear_bit(i32 %55, i32 %58)
  ret void
}

declare dso_local i32 @KEY_ROW(i32) #1

declare dso_local i32 @KEY_COL(i32) #1

declare dso_local i32 @MATRIX_SCAN_CODE(i32, i32, i32) #1

declare dso_local zeroext i16 @KEY_VAL(i32) #1

declare dso_local i32 @__set_bit(i16 zeroext, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
