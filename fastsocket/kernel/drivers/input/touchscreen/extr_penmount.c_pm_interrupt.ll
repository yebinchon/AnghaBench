; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_penmount.c_pm_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_penmount.c_pm_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.pm = type { i8*, i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@PM_MAX_LENGTH = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @pm_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.pm*, align 8
  %8 = alloca %struct.input_dev*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %9 = load %struct.serio*, %struct.serio** %4, align 8
  %10 = call %struct.pm* @serio_get_drvdata(%struct.serio* %9)
  store %struct.pm* %10, %struct.pm** %7, align 8
  %11 = load %struct.pm*, %struct.pm** %7, align 8
  %12 = getelementptr inbounds %struct.pm, %struct.pm* %11, i32 0, i32 2
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %8, align 8
  %14 = load i8, i8* %5, align 1
  %15 = load %struct.pm*, %struct.pm** %7, align 8
  %16 = getelementptr inbounds %struct.pm, %struct.pm* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.pm*, %struct.pm** %7, align 8
  %19 = getelementptr inbounds %struct.pm, %struct.pm* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  store i8 %14, i8* %21, align 1
  %22 = load %struct.pm*, %struct.pm** %7, align 8
  %23 = getelementptr inbounds %struct.pm, %struct.pm* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 128
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %91

30:                                               ; preds = %3
  %31 = load i64, i64* @PM_MAX_LENGTH, align 8
  %32 = load %struct.pm*, %struct.pm** %7, align 8
  %33 = getelementptr inbounds %struct.pm, %struct.pm* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = icmp eq i64 %31, %35
  br i1 %36, label %37, label %90

37:                                               ; preds = %30
  %38 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %39 = load i32, i32* @ABS_X, align 4
  %40 = load %struct.pm*, %struct.pm** %7, align 8
  %41 = getelementptr inbounds %struct.pm, %struct.pm* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = mul nsw i32 %45, 128
  %47 = load %struct.pm*, %struct.pm** %7, align 8
  %48 = getelementptr inbounds %struct.pm, %struct.pm* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = add nsw i32 %46, %52
  %54 = call i32 @input_report_abs(%struct.input_dev* %38, i32 %39, i32 %53)
  %55 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %56 = load i32, i32* @ABS_Y, align 4
  %57 = load %struct.pm*, %struct.pm** %7, align 8
  %58 = getelementptr inbounds %struct.pm, %struct.pm* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = mul nsw i32 %62, 128
  %64 = load %struct.pm*, %struct.pm** %7, align 8
  %65 = getelementptr inbounds %struct.pm, %struct.pm* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %63, %69
  %71 = call i32 @input_report_abs(%struct.input_dev* %55, i32 %56, i32 %70)
  %72 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %73 = load i32, i32* @BTN_TOUCH, align 4
  %74 = load %struct.pm*, %struct.pm** %7, align 8
  %75 = getelementptr inbounds %struct.pm, %struct.pm* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %79, 64
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @input_report_key(%struct.input_dev* %72, i32 %73, i32 %84)
  %86 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %87 = call i32 @input_sync(%struct.input_dev* %86)
  %88 = load %struct.pm*, %struct.pm** %7, align 8
  %89 = getelementptr inbounds %struct.pm, %struct.pm* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %37, %30
  br label %91

91:                                               ; preds = %90, %3
  %92 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %92
}

declare dso_local %struct.pm* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
