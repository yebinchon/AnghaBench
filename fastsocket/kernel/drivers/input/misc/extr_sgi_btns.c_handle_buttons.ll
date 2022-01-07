; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_sgi_btns.c_handle_buttons.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_sgi_btns.c_handle_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { %struct.input_dev*, %struct.buttons_dev* }
%struct.input_dev = type { i32 }
%struct.buttons_dev = type { i64*, i32* }

@BUTTONS_COUNT_THRESHOLD = common dso_local global i64 0, align 8
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*)* @handle_buttons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_buttons(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.buttons_dev*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %7 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %8 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %7, i32 0, i32 1
  %9 = load %struct.buttons_dev*, %struct.buttons_dev** %8, align 8
  store %struct.buttons_dev* %9, %struct.buttons_dev** %3, align 8
  %10 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %11 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %10, i32 0, i32 0
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %4, align 8
  %13 = call i32 (...) @button_status()
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %91, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.buttons_dev*, %struct.buttons_dev** %3, align 8
  %17 = getelementptr inbounds %struct.buttons_dev, %struct.buttons_dev* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %94

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %21
  %28 = load %struct.buttons_dev*, %struct.buttons_dev** %3, align 8
  %29 = getelementptr inbounds %struct.buttons_dev, %struct.buttons_dev* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load i64, i64* @BUTTONS_COUNT_THRESHOLD, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %27
  %39 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %40 = load i32, i32* @EV_MSC, align 4
  %41 = load i32, i32* @MSC_SCAN, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @input_event(%struct.input_dev* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %45 = load %struct.buttons_dev*, %struct.buttons_dev** %3, align 8
  %46 = getelementptr inbounds %struct.buttons_dev, %struct.buttons_dev* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @input_report_key(%struct.input_dev* %44, i32 %51, i32 1)
  %53 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %54 = call i32 @input_sync(%struct.input_dev* %53)
  br label %55

55:                                               ; preds = %38, %27
  br label %90

56:                                               ; preds = %21
  %57 = load %struct.buttons_dev*, %struct.buttons_dev** %3, align 8
  %58 = getelementptr inbounds %struct.buttons_dev, %struct.buttons_dev* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @BUTTONS_COUNT_THRESHOLD, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %56
  %67 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %68 = load i32, i32* @EV_MSC, align 4
  %69 = load i32, i32* @MSC_SCAN, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @input_event(%struct.input_dev* %67, i32 %68, i32 %69, i32 %70)
  %72 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %73 = load %struct.buttons_dev*, %struct.buttons_dev** %3, align 8
  %74 = getelementptr inbounds %struct.buttons_dev, %struct.buttons_dev* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @input_report_key(%struct.input_dev* %72, i32 %79, i32 0)
  %81 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %82 = call i32 @input_sync(%struct.input_dev* %81)
  br label %83

83:                                               ; preds = %66, %56
  %84 = load %struct.buttons_dev*, %struct.buttons_dev** %3, align 8
  %85 = getelementptr inbounds %struct.buttons_dev, %struct.buttons_dev* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %83, %55
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %14

94:                                               ; preds = %14
  ret void
}

declare dso_local i32 @button_status(...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
