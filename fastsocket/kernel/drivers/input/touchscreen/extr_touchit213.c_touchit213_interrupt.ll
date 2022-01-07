; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_touchit213.c_touchit213_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_touchit213.c_touchit213_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.touchit213 = type { i8*, i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@T213_FORMAT_STATUS_MASK = common dso_local global i32 0, align 4
@T213_FORMAT_STATUS_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unsynchronized data: 0x%02x\0A\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@T213_FORMAT_TOUCH_BIT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @touchit213_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @touchit213_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.touchit213*, align 8
  %8 = alloca %struct.input_dev*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %9 = load %struct.serio*, %struct.serio** %4, align 8
  %10 = call %struct.touchit213* @serio_get_drvdata(%struct.serio* %9)
  store %struct.touchit213* %10, %struct.touchit213** %7, align 8
  %11 = load %struct.touchit213*, %struct.touchit213** %7, align 8
  %12 = getelementptr inbounds %struct.touchit213, %struct.touchit213* %11, i32 0, i32 2
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %8, align 8
  %14 = load i8, i8* %5, align 1
  %15 = load %struct.touchit213*, %struct.touchit213** %7, align 8
  %16 = getelementptr inbounds %struct.touchit213, %struct.touchit213* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.touchit213*, %struct.touchit213** %7, align 8
  %19 = getelementptr inbounds %struct.touchit213, %struct.touchit213* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  store i8 %14, i8* %21, align 1
  %22 = load %struct.touchit213*, %struct.touchit213** %7, align 8
  %23 = getelementptr inbounds %struct.touchit213, %struct.touchit213* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %23, align 8
  switch i64 %24, label %93 [
    i64 0, label %26
    i64 4, label %43
  ]

26:                                               ; preds = %3
  %27 = load %struct.touchit213*, %struct.touchit213** %7, align 8
  %28 = getelementptr inbounds %struct.touchit213, %struct.touchit213* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i32, i32* @T213_FORMAT_STATUS_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @T213_FORMAT_STATUS_BYTE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load i8, i8* %5, align 1
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8 zeroext %38)
  %40 = load %struct.touchit213*, %struct.touchit213** %7, align 8
  %41 = getelementptr inbounds %struct.touchit213, %struct.touchit213* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %26
  br label %93

43:                                               ; preds = %3
  %44 = load %struct.touchit213*, %struct.touchit213** %7, align 8
  %45 = getelementptr inbounds %struct.touchit213, %struct.touchit213* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %47 = load i32, i32* @ABS_X, align 4
  %48 = load %struct.touchit213*, %struct.touchit213** %7, align 8
  %49 = getelementptr inbounds %struct.touchit213, %struct.touchit213* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 %53, 7
  %55 = load %struct.touchit213*, %struct.touchit213** %7, align 8
  %56 = getelementptr inbounds %struct.touchit213, %struct.touchit213* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = or i32 %54, %60
  %62 = call i32 @input_report_abs(%struct.input_dev* %46, i32 %47, i32 %61)
  %63 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %64 = load i32, i32* @ABS_Y, align 4
  %65 = load %struct.touchit213*, %struct.touchit213** %7, align 8
  %66 = getelementptr inbounds %struct.touchit213, %struct.touchit213* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 3
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl i32 %70, 7
  %72 = load %struct.touchit213*, %struct.touchit213** %7, align 8
  %73 = getelementptr inbounds %struct.touchit213, %struct.touchit213* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 4
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = or i32 %71, %77
  %79 = call i32 @input_report_abs(%struct.input_dev* %63, i32 %64, i32 %78)
  %80 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %81 = load i32, i32* @BTN_TOUCH, align 4
  %82 = load %struct.touchit213*, %struct.touchit213** %7, align 8
  %83 = getelementptr inbounds %struct.touchit213, %struct.touchit213* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = load i32, i32* @T213_FORMAT_TOUCH_BIT, align 4
  %89 = and i32 %87, %88
  %90 = call i32 @input_report_key(%struct.input_dev* %80, i32 %81, i32 %89)
  %91 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %92 = call i32 @input_sync(%struct.input_dev* %91)
  br label %93

93:                                               ; preds = %3, %43, %42
  %94 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %94
}

declare dso_local %struct.touchit213* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @pr_debug(i8*, i8 zeroext) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
