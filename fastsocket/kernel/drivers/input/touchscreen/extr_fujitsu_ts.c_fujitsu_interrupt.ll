; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_fujitsu_ts.c_fujitsu_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_fujitsu_ts.c_fujitsu_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.fujitsu = type { i64, i8*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@FUJITSU_LENGTH = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @fujitsu_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fujitsu_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.serio*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.fujitsu*, align 8
  %9 = alloca %struct.input_dev*, align 8
  store %struct.serio* %0, %struct.serio** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  %10 = load %struct.serio*, %struct.serio** %5, align 8
  %11 = call %struct.fujitsu* @serio_get_drvdata(%struct.serio* %10)
  store %struct.fujitsu* %11, %struct.fujitsu** %8, align 8
  %12 = load %struct.fujitsu*, %struct.fujitsu** %8, align 8
  %13 = getelementptr inbounds %struct.fujitsu, %struct.fujitsu* %12, i32 0, i32 2
  %14 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  store %struct.input_dev* %14, %struct.input_dev** %9, align 8
  %15 = load %struct.fujitsu*, %struct.fujitsu** %8, align 8
  %16 = getelementptr inbounds %struct.fujitsu, %struct.fujitsu* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load i8, i8* %6, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 240
  %23 = icmp ne i32 %22, 128
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %25, i32* %4, align 4
  br label %105

26:                                               ; preds = %19
  br label %37

27:                                               ; preds = %3
  %28 = load i8, i8* %6, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 128
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.fujitsu*, %struct.fujitsu** %8, align 8
  %34 = getelementptr inbounds %struct.fujitsu, %struct.fujitsu* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %35, i32* %4, align 4
  br label %105

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i8, i8* %6, align 1
  %39 = load %struct.fujitsu*, %struct.fujitsu** %8, align 8
  %40 = getelementptr inbounds %struct.fujitsu, %struct.fujitsu* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.fujitsu*, %struct.fujitsu** %8, align 8
  %43 = getelementptr inbounds %struct.fujitsu, %struct.fujitsu* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = getelementptr inbounds i8, i8* %41, i64 %44
  store i8 %38, i8* %46, align 1
  %47 = load %struct.fujitsu*, %struct.fujitsu** %8, align 8
  %48 = getelementptr inbounds %struct.fujitsu, %struct.fujitsu* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FUJITSU_LENGTH, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %103

52:                                               ; preds = %37
  %53 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %54 = load i32, i32* @ABS_X, align 4
  %55 = load %struct.fujitsu*, %struct.fujitsu** %8, align 8
  %56 = getelementptr inbounds %struct.fujitsu, %struct.fujitsu* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl i32 %60, 7
  %62 = load %struct.fujitsu*, %struct.fujitsu** %8, align 8
  %63 = getelementptr inbounds %struct.fujitsu, %struct.fujitsu* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %61, %67
  %69 = call i32 @input_report_abs(%struct.input_dev* %53, i32 %54, i32 %68)
  %70 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %71 = load i32, i32* @ABS_Y, align 4
  %72 = load %struct.fujitsu*, %struct.fujitsu** %8, align 8
  %73 = getelementptr inbounds %struct.fujitsu, %struct.fujitsu* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 4
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl i32 %77, 7
  %79 = load %struct.fujitsu*, %struct.fujitsu** %8, align 8
  %80 = getelementptr inbounds %struct.fujitsu, %struct.fujitsu* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 3
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %78, %84
  %86 = call i32 @input_report_abs(%struct.input_dev* %70, i32 %71, i32 %85)
  %87 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %88 = load i32, i32* @BTN_TOUCH, align 4
  %89 = load %struct.fujitsu*, %struct.fujitsu** %8, align 8
  %90 = getelementptr inbounds %struct.fujitsu, %struct.fujitsu* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 3
  %96 = icmp ne i32 %95, 2
  %97 = zext i1 %96 to i32
  %98 = call i32 @input_report_key(%struct.input_dev* %87, i32 %88, i32 %97)
  %99 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %100 = call i32 @input_sync(%struct.input_dev* %99)
  %101 = load %struct.fujitsu*, %struct.fujitsu** %8, align 8
  %102 = getelementptr inbounds %struct.fujitsu, %struct.fujitsu* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %52, %37
  %104 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %32, %24
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.fujitsu* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
