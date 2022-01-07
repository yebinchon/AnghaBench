; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_gpio_mouse.c_gpio_mouse_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_gpio_mouse.c_gpio_mouse_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { %struct.input_dev*, %struct.gpio_mouse_platform_data* }
%struct.input_dev = type { i32 }
%struct.gpio_mouse_platform_data = type { i64, i32, i64, i64, i64, i64, i64, i64 }

@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*)* @gpio_mouse_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_mouse_scan(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.gpio_mouse_platform_data*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %7 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %8 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %7, i32 0, i32 1
  %9 = load %struct.gpio_mouse_platform_data*, %struct.gpio_mouse_platform_data** %8, align 8
  store %struct.gpio_mouse_platform_data* %9, %struct.gpio_mouse_platform_data** %3, align 8
  %10 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %11 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %10, i32 0, i32 0
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %4, align 8
  %13 = load %struct.gpio_mouse_platform_data*, %struct.gpio_mouse_platform_data** %3, align 8
  %14 = getelementptr inbounds %struct.gpio_mouse_platform_data, %struct.gpio_mouse_platform_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %19 = load i32, i32* @BTN_LEFT, align 4
  %20 = load %struct.gpio_mouse_platform_data*, %struct.gpio_mouse_platform_data** %3, align 8
  %21 = getelementptr inbounds %struct.gpio_mouse_platform_data, %struct.gpio_mouse_platform_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @gpio_get_value(i64 %22)
  %24 = load %struct.gpio_mouse_platform_data*, %struct.gpio_mouse_platform_data** %3, align 8
  %25 = getelementptr inbounds %struct.gpio_mouse_platform_data, %struct.gpio_mouse_platform_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = xor i32 %23, %26
  %28 = call i32 @input_report_key(%struct.input_dev* %18, i32 %19, i32 %27)
  br label %29

29:                                               ; preds = %17, %1
  %30 = load %struct.gpio_mouse_platform_data*, %struct.gpio_mouse_platform_data** %3, align 8
  %31 = getelementptr inbounds %struct.gpio_mouse_platform_data, %struct.gpio_mouse_platform_data* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %36 = load i32, i32* @BTN_MIDDLE, align 4
  %37 = load %struct.gpio_mouse_platform_data*, %struct.gpio_mouse_platform_data** %3, align 8
  %38 = getelementptr inbounds %struct.gpio_mouse_platform_data, %struct.gpio_mouse_platform_data* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @gpio_get_value(i64 %39)
  %41 = load %struct.gpio_mouse_platform_data*, %struct.gpio_mouse_platform_data** %3, align 8
  %42 = getelementptr inbounds %struct.gpio_mouse_platform_data, %struct.gpio_mouse_platform_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = xor i32 %40, %43
  %45 = call i32 @input_report_key(%struct.input_dev* %35, i32 %36, i32 %44)
  br label %46

46:                                               ; preds = %34, %29
  %47 = load %struct.gpio_mouse_platform_data*, %struct.gpio_mouse_platform_data** %3, align 8
  %48 = getelementptr inbounds %struct.gpio_mouse_platform_data, %struct.gpio_mouse_platform_data* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %53 = load i32, i32* @BTN_RIGHT, align 4
  %54 = load %struct.gpio_mouse_platform_data*, %struct.gpio_mouse_platform_data** %3, align 8
  %55 = getelementptr inbounds %struct.gpio_mouse_platform_data, %struct.gpio_mouse_platform_data* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @gpio_get_value(i64 %56)
  %58 = load %struct.gpio_mouse_platform_data*, %struct.gpio_mouse_platform_data** %3, align 8
  %59 = getelementptr inbounds %struct.gpio_mouse_platform_data, %struct.gpio_mouse_platform_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = xor i32 %57, %60
  %62 = call i32 @input_report_key(%struct.input_dev* %52, i32 %53, i32 %61)
  br label %63

63:                                               ; preds = %51, %46
  %64 = load %struct.gpio_mouse_platform_data*, %struct.gpio_mouse_platform_data** %3, align 8
  %65 = getelementptr inbounds %struct.gpio_mouse_platform_data, %struct.gpio_mouse_platform_data* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @gpio_get_value(i64 %66)
  %68 = load %struct.gpio_mouse_platform_data*, %struct.gpio_mouse_platform_data** %3, align 8
  %69 = getelementptr inbounds %struct.gpio_mouse_platform_data, %struct.gpio_mouse_platform_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = xor i32 %67, %70
  %72 = load %struct.gpio_mouse_platform_data*, %struct.gpio_mouse_platform_data** %3, align 8
  %73 = getelementptr inbounds %struct.gpio_mouse_platform_data, %struct.gpio_mouse_platform_data* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @gpio_get_value(i64 %74)
  %76 = load %struct.gpio_mouse_platform_data*, %struct.gpio_mouse_platform_data** %3, align 8
  %77 = getelementptr inbounds %struct.gpio_mouse_platform_data, %struct.gpio_mouse_platform_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = xor i32 %75, %78
  %80 = sub nsw i32 %71, %79
  store i32 %80, i32* %5, align 4
  %81 = load %struct.gpio_mouse_platform_data*, %struct.gpio_mouse_platform_data** %3, align 8
  %82 = getelementptr inbounds %struct.gpio_mouse_platform_data, %struct.gpio_mouse_platform_data* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @gpio_get_value(i64 %83)
  %85 = load %struct.gpio_mouse_platform_data*, %struct.gpio_mouse_platform_data** %3, align 8
  %86 = getelementptr inbounds %struct.gpio_mouse_platform_data, %struct.gpio_mouse_platform_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = xor i32 %84, %87
  %89 = load %struct.gpio_mouse_platform_data*, %struct.gpio_mouse_platform_data** %3, align 8
  %90 = getelementptr inbounds %struct.gpio_mouse_platform_data, %struct.gpio_mouse_platform_data* %89, i32 0, i32 7
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @gpio_get_value(i64 %91)
  %93 = load %struct.gpio_mouse_platform_data*, %struct.gpio_mouse_platform_data** %3, align 8
  %94 = getelementptr inbounds %struct.gpio_mouse_platform_data, %struct.gpio_mouse_platform_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = xor i32 %92, %95
  %97 = sub nsw i32 %88, %96
  store i32 %97, i32* %6, align 4
  %98 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %99 = load i32, i32* @REL_X, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @input_report_rel(%struct.input_dev* %98, i32 %99, i32 %100)
  %102 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %103 = load i32, i32* @REL_Y, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @input_report_rel(%struct.input_dev* %102, i32 %103, i32 %104)
  %106 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %107 = call i32 @input_sync(%struct.input_dev* %106)
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @gpio_get_value(i64) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
