; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_led_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_led_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32*, i32, i8, i8 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INTUOS5S = common dso_local global i64 0, align 8
@INTUOS5L = common dso_local global i64 0, align 8
@WAC_CMD_LED_CONTROL = common dso_local global i8 0, align 1
@WACOM_21UX2 = common dso_local global i64 0, align 8
@WACOM_24HD = common dso_local global i64 0, align 8
@WAC_CMD_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom*)* @wacom_led_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_led_control(%struct.wacom* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wacom*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kzalloc(i32 9, i32 %10)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %142

17:                                               ; preds = %1
  %18 = load %struct.wacom*, %struct.wacom** %3, align 8
  %19 = getelementptr inbounds %struct.wacom, %struct.wacom* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @INTUOS5S, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %17
  %28 = load %struct.wacom*, %struct.wacom** %3, align 8
  %29 = getelementptr inbounds %struct.wacom, %struct.wacom* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @INTUOS5L, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %27
  %38 = load %struct.wacom*, %struct.wacom** %3, align 8
  %39 = getelementptr inbounds %struct.wacom, %struct.wacom* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 3
  store i32 %44, i32* %6, align 4
  %45 = load %struct.wacom*, %struct.wacom** %3, align 8
  %46 = getelementptr inbounds %struct.wacom, %struct.wacom* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 96
  %50 = ashr i32 %49, 5
  %51 = sub nsw i32 %50, 1
  %52 = and i32 %51, 3
  store i32 %52, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %53 = load i8, i8* @WAC_CMD_LED_CONTROL, align 1
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 %53, i8* %55, align 1
  %56 = load i32, i32* %8, align 4
  %57 = shl i32 %56, 4
  %58 = load i32, i32* %7, align 4
  %59 = shl i32 %58, 2
  %60 = or i32 %57, %59
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %60, %61
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8 %63, i8* %65, align 1
  br label %131

66:                                               ; preds = %27, %17
  %67 = load %struct.wacom*, %struct.wacom** %3, align 8
  %68 = getelementptr inbounds %struct.wacom, %struct.wacom* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, 4
  store i32 %73, i32* %9, align 4
  %74 = load %struct.wacom*, %struct.wacom** %3, align 8
  %75 = getelementptr inbounds %struct.wacom, %struct.wacom* %74, i32 0, i32 2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @WACOM_21UX2, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %93, label %83

83:                                               ; preds = %66
  %84 = load %struct.wacom*, %struct.wacom** %3, align 8
  %85 = getelementptr inbounds %struct.wacom, %struct.wacom* %84, i32 0, i32 2
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @WACOM_24HD, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %83, %66
  %94 = load %struct.wacom*, %struct.wacom** %3, align 8
  %95 = getelementptr inbounds %struct.wacom, %struct.wacom* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 4
  %101 = or i32 %100, 64
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %93, %83
  %105 = load i8, i8* @WAC_CMD_LED_CONTROL, align 1
  %106 = load i8*, i8** %4, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  store i8 %105, i8* %107, align 1
  %108 = load i32, i32* %9, align 4
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %4, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  store i8 %109, i8* %111, align 1
  %112 = load %struct.wacom*, %struct.wacom** %3, align 8
  %113 = getelementptr inbounds %struct.wacom, %struct.wacom* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 2
  store i8 %116, i8* %118, align 1
  %119 = load %struct.wacom*, %struct.wacom** %3, align 8
  %120 = getelementptr inbounds %struct.wacom, %struct.wacom* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i8, i8* %121, align 4
  %123 = load i8*, i8** %4, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 3
  store i8 %122, i8* %124, align 1
  %125 = load %struct.wacom*, %struct.wacom** %3, align 8
  %126 = getelementptr inbounds %struct.wacom, %struct.wacom* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  %128 = load i8, i8* %127, align 1
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 4
  store i8 %128, i8* %130, align 1
  br label %131

131:                                              ; preds = %104, %37
  %132 = load %struct.wacom*, %struct.wacom** %3, align 8
  %133 = getelementptr inbounds %struct.wacom, %struct.wacom* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i8, i8* @WAC_CMD_LED_CONTROL, align 1
  %136 = load i8*, i8** %4, align 8
  %137 = load i32, i32* @WAC_CMD_RETRIES, align 4
  %138 = call i32 @wacom_set_report(i32 %134, i32 3, i8 zeroext %135, i8* %136, i32 9, i32 %137)
  store i32 %138, i32* %5, align 4
  %139 = load i8*, i8** %4, align 8
  %140 = call i32 @kfree(i8* %139)
  %141 = load i32, i32* %5, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %131, %14
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @wacom_set_report(i32, i32, i8 zeroext, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
