; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-wm831x-status.c_wm831x_status_src_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-wm831x-status.c_wm831x_status_src_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { i32 }
%struct.wm831x_status = type { i32, i32, i32 }

@led_src_texts = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @wm831x_status_src_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wm831x_status_src_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.led_classdev*, align 8
  %10 = alloca %struct.wm831x_status*, align 8
  %11 = alloca [20 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.led_classdev* @dev_get_drvdata(%struct.device* %14)
  store %struct.led_classdev* %15, %struct.led_classdev** %9, align 8
  %16 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %17 = call %struct.wm831x_status* @to_wm831x_status(%struct.led_classdev* %16)
  store %struct.wm831x_status* %17, %struct.wm831x_status** %10, align 8
  %18 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 19
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strncpy(i8* %19, i8* %20, i32 19)
  %22 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %23 = call i64 @strlen(i8* %22)
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %4
  %27 = load i64, i64* %13, align 8
  %28 = sub i64 %27, 1
  %29 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i64, i64* %13, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %35
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %33, %26, %4
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %66, %37
  %39 = load i32, i32* %12, align 4
  %40 = load i32*, i32** @led_src_texts, align 8
  %41 = call i32 @ARRAY_SIZE(i32* %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %38
  %44 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %45 = load i32*, i32** @led_src_texts, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strcmp(i8* %44, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %43
  %53 = load %struct.wm831x_status*, %struct.wm831x_status** %10, align 8
  %54 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %53, i32 0, i32 1
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.wm831x_status*, %struct.wm831x_status** %10, align 8
  %58 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.wm831x_status*, %struct.wm831x_status** %10, align 8
  %60 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %59, i32 0, i32 2
  %61 = call i32 @schedule_work(i32* %60)
  %62 = load %struct.wm831x_status*, %struct.wm831x_status** %10, align 8
  %63 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  br label %65

65:                                               ; preds = %52, %43
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %38

69:                                               ; preds = %38
  %70 = load i64, i64* %8, align 8
  ret i64 %70
}

declare dso_local %struct.led_classdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.wm831x_status* @to_wm831x_status(%struct.led_classdev*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
