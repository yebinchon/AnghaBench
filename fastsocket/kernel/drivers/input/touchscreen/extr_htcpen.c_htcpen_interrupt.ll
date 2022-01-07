; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_htcpen.c_htcpen_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_htcpen.c_htcpen_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }

@TOUCH_INDEX = common dso_local global i32 0, align 4
@HTCPEN_PORT_INDEX = common dso_local global i32 0, align 4
@HTCPEN_PORT_DATA = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@X_INDEX = common dso_local global i32 0, align 4
@Y_INDEX = common dso_local global i32 0, align 4
@LSB_XY_INDEX = common dso_local global i32 0, align 4
@X_AXIS_MAX = common dso_local global i16 0, align 2
@invert_x = common dso_local global i64 0, align 8
@invert_y = common dso_local global i64 0, align 8
@Y_AXIS_MAX = common dso_local global i16 0, align 2
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@HTCPEN_PORT_IRQ_CLEAR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @htcpen_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htcpen_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.input_dev*
  store %struct.input_dev* %10, %struct.input_dev** %5, align 8
  %11 = load i32, i32* @TOUCH_INDEX, align 4
  %12 = load i32, i32* @HTCPEN_PORT_INDEX, align 4
  %13 = call i32 @outb_p(i32 %11, i32 %12)
  %14 = load i32, i32* @HTCPEN_PORT_DATA, align 4
  %15 = call signext i16 @inb_p(i32 %14)
  %16 = icmp ne i16 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %19 = load i32, i32* @BTN_TOUCH, align 4
  %20 = call i32 @input_report_key(%struct.input_dev* %18, i32 %19, i32 0)
  br label %99

21:                                               ; preds = %2
  %22 = load i32, i32* @X_INDEX, align 4
  %23 = load i32, i32* @HTCPEN_PORT_INDEX, align 4
  %24 = call i32 @outb_p(i32 %22, i32 %23)
  %25 = load i32, i32* @HTCPEN_PORT_DATA, align 4
  %26 = call signext i16 @inb_p(i32 %25)
  store i16 %26, i16* %6, align 2
  %27 = load i32, i32* @Y_INDEX, align 4
  %28 = load i32, i32* @HTCPEN_PORT_INDEX, align 4
  %29 = call i32 @outb_p(i32 %27, i32 %28)
  %30 = load i32, i32* @HTCPEN_PORT_DATA, align 4
  %31 = call signext i16 @inb_p(i32 %30)
  store i16 %31, i16* %7, align 2
  %32 = load i32, i32* @LSB_XY_INDEX, align 4
  %33 = load i32, i32* @HTCPEN_PORT_INDEX, align 4
  %34 = call i32 @outb_p(i32 %32, i32 %33)
  %35 = load i32, i32* @HTCPEN_PORT_DATA, align 4
  %36 = call signext i16 @inb_p(i32 %35)
  store i16 %36, i16* %8, align 2
  %37 = load i16, i16* @X_AXIS_MAX, align 2
  %38 = zext i16 %37 to i32
  %39 = load i16, i16* %6, align 2
  %40 = zext i16 %39 to i32
  %41 = mul nsw i32 %40, 8
  %42 = load i16, i16* %8, align 2
  %43 = zext i16 %42 to i32
  %44 = ashr i32 %43, 4
  %45 = and i32 %44, 15
  %46 = add nsw i32 %41, %45
  %47 = sub nsw i32 %38, %46
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %6, align 2
  %49 = load i16, i16* %7, align 2
  %50 = zext i16 %49 to i32
  %51 = mul nsw i32 %50, 8
  %52 = load i16, i16* %8, align 2
  %53 = zext i16 %52 to i32
  %54 = and i32 %53, 15
  %55 = add nsw i32 %51, %54
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %7, align 2
  %57 = load i64, i64* @invert_x, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %21
  %60 = load i16, i16* @X_AXIS_MAX, align 2
  %61 = zext i16 %60 to i32
  %62 = load i16, i16* %6, align 2
  %63 = zext i16 %62 to i32
  %64 = sub nsw i32 %61, %63
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %6, align 2
  br label %66

66:                                               ; preds = %59, %21
  %67 = load i64, i64* @invert_y, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i16, i16* @Y_AXIS_MAX, align 2
  %71 = zext i16 %70 to i32
  %72 = load i16, i16* %7, align 2
  %73 = zext i16 %72 to i32
  %74 = sub nsw i32 %71, %73
  %75 = trunc i32 %74 to i16
  store i16 %75, i16* %7, align 2
  br label %76

76:                                               ; preds = %69, %66
  %77 = load i16, i16* %6, align 2
  %78 = zext i16 %77 to i32
  %79 = load i16, i16* @X_AXIS_MAX, align 2
  %80 = zext i16 %79 to i32
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %76
  %83 = load i16, i16* %6, align 2
  %84 = zext i16 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %88 = load i32, i32* @BTN_TOUCH, align 4
  %89 = call i32 @input_report_key(%struct.input_dev* %87, i32 %88, i32 1)
  %90 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %91 = load i32, i32* @ABS_X, align 4
  %92 = load i16, i16* %6, align 2
  %93 = call i32 @input_report_abs(%struct.input_dev* %90, i32 %91, i16 zeroext %92)
  %94 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %95 = load i32, i32* @ABS_Y, align 4
  %96 = load i16, i16* %7, align 2
  %97 = call i32 @input_report_abs(%struct.input_dev* %94, i32 %95, i16 zeroext %96)
  br label %98

98:                                               ; preds = %86, %82, %76
  br label %99

99:                                               ; preds = %98, %17
  %100 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %101 = call i32 @input_sync(%struct.input_dev* %100)
  %102 = load i32, i32* @HTCPEN_PORT_IRQ_CLEAR, align 4
  %103 = call signext i16 @inb_p(i32 %102)
  %104 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %104
}

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local signext i16 @inb_p(i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i16 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
