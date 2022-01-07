; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_max7359_keypad.c_max7359_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_max7359_keypad.c_max7359_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max7359_keypad = type { i32*, %struct.TYPE_2__*, %struct.input_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }

@MAX7359_REG_KEYFIFO = common dso_local global i32 0, align 4
@MAX7359_ROW_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"key[%d:%d] %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"press\00", align 1
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max7359_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max7359_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.max7359_keypad*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.max7359_keypad*
  store %struct.max7359_keypad* %13, %struct.max7359_keypad** %5, align 8
  %14 = load %struct.max7359_keypad*, %struct.max7359_keypad** %5, align 8
  %15 = getelementptr inbounds %struct.max7359_keypad, %struct.max7359_keypad* %14, i32 0, i32 2
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %6, align 8
  %17 = load %struct.max7359_keypad*, %struct.max7359_keypad** %5, align 8
  %18 = getelementptr inbounds %struct.max7359_keypad, %struct.max7359_keypad* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* @MAX7359_REG_KEYFIFO, align 4
  %21 = call i32 @max7359_read_reg(%struct.TYPE_2__* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 7
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = ashr i32 %24, 3
  %26 = and i32 %25, 7
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 64
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @MAX7359_ROW_SHIFT, align 4
  %32 = call i32 @MATRIX_SCAN_CODE(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.max7359_keypad*, %struct.max7359_keypad** %5, align 8
  %34 = getelementptr inbounds %struct.max7359_keypad, %struct.max7359_keypad* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %43 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i8* %42)
  %44 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %45 = load i32, i32* @EV_MSC, align 4
  %46 = load i32, i32* @MSC_SCAN, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @input_event(%struct.input_dev* %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %50 = load %struct.max7359_keypad*, %struct.max7359_keypad** %5, align 8
  %51 = getelementptr inbounds %struct.max7359_keypad, %struct.max7359_keypad* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @input_report_key(%struct.input_dev* %49, i32 %56, i32 %60)
  %62 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %63 = call i32 @input_sync(%struct.input_dev* %62)
  %64 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %64
}

declare dso_local i32 @max7359_read_reg(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @MATRIX_SCAN_CODE(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i8*) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
