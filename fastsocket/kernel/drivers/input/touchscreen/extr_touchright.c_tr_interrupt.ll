; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_touchright.c_tr_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_touchright.c_tr_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.tr = type { i8*, i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@TR_FORMAT_STATUS_MASK = common dso_local global i32 0, align 4
@TR_FORMAT_STATUS_BYTE = common dso_local global i32 0, align 4
@TR_LENGTH = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@TR_FORMAT_TOUCH_BIT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @tr_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tr_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.tr*, align 8
  %8 = alloca %struct.input_dev*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %9 = load %struct.serio*, %struct.serio** %4, align 8
  %10 = call %struct.tr* @serio_get_drvdata(%struct.serio* %9)
  store %struct.tr* %10, %struct.tr** %7, align 8
  %11 = load %struct.tr*, %struct.tr** %7, align 8
  %12 = getelementptr inbounds %struct.tr, %struct.tr* %11, i32 0, i32 2
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %8, align 8
  %14 = load i8, i8* %5, align 1
  %15 = load %struct.tr*, %struct.tr** %7, align 8
  %16 = getelementptr inbounds %struct.tr, %struct.tr* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.tr*, %struct.tr** %7, align 8
  %19 = getelementptr inbounds %struct.tr, %struct.tr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  store i8 %14, i8* %21, align 1
  %22 = load %struct.tr*, %struct.tr** %7, align 8
  %23 = getelementptr inbounds %struct.tr, %struct.tr* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = load i32, i32* @TR_FORMAT_STATUS_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @TR_FORMAT_STATUS_BYTE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %92

32:                                               ; preds = %3
  %33 = load %struct.tr*, %struct.tr** %7, align 8
  %34 = getelementptr inbounds %struct.tr, %struct.tr* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load i64, i64* @TR_LENGTH, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %91

39:                                               ; preds = %32
  %40 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %41 = load i32, i32* @ABS_X, align 4
  %42 = load %struct.tr*, %struct.tr** %7, align 8
  %43 = getelementptr inbounds %struct.tr, %struct.tr* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 5
  %49 = load %struct.tr*, %struct.tr** %7, align 8
  %50 = getelementptr inbounds %struct.tr, %struct.tr* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = ashr i32 %54, 1
  %56 = or i32 %48, %55
  %57 = call i32 @input_report_abs(%struct.input_dev* %40, i32 %41, i32 %56)
  %58 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %59 = load i32, i32* @ABS_Y, align 4
  %60 = load %struct.tr*, %struct.tr** %7, align 8
  %61 = getelementptr inbounds %struct.tr, %struct.tr* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 3
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl i32 %65, 5
  %67 = load %struct.tr*, %struct.tr** %7, align 8
  %68 = getelementptr inbounds %struct.tr, %struct.tr* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 4
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = ashr i32 %72, 1
  %74 = or i32 %66, %73
  %75 = call i32 @input_report_abs(%struct.input_dev* %58, i32 %59, i32 %74)
  %76 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %77 = load i32, i32* @BTN_TOUCH, align 4
  %78 = load %struct.tr*, %struct.tr** %7, align 8
  %79 = getelementptr inbounds %struct.tr, %struct.tr* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = load i32, i32* @TR_FORMAT_TOUCH_BIT, align 4
  %85 = and i32 %83, %84
  %86 = call i32 @input_report_key(%struct.input_dev* %76, i32 %77, i32 %85)
  %87 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %88 = call i32 @input_sync(%struct.input_dev* %87)
  %89 = load %struct.tr*, %struct.tr** %7, align 8
  %90 = getelementptr inbounds %struct.tr, %struct.tr* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %39, %32
  br label %92

92:                                               ; preds = %91, %3
  %93 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %93
}

declare dso_local %struct.tr* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
