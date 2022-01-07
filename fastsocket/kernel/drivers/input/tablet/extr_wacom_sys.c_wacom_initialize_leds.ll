; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_initialize_leds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_initialize_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@intuos4_led_attr_group = common dso_local global i32 0, align 4
@cintiq_led_attr_group = common dso_local global i32 0, align 4
@intuos5_led_attr_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cannot create sysfs group err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom*)* @wacom_initialize_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_initialize_leds(%struct.wacom* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wacom*, align 8
  %4 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %3, align 8
  %5 = load %struct.wacom*, %struct.wacom** %3, align 8
  %6 = getelementptr inbounds %struct.wacom, %struct.wacom* %5, i32 0, i32 2
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %90 [
    i32 134, label %12
    i32 133, label %12
    i32 128, label %38
    i32 129, label %38
    i32 130, label %64
    i32 132, label %64
    i32 131, label %64
  ]

12:                                               ; preds = %1, %1
  %13 = load %struct.wacom*, %struct.wacom** %3, align 8
  %14 = getelementptr inbounds %struct.wacom, %struct.wacom* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.wacom*, %struct.wacom** %3, align 8
  %19 = getelementptr inbounds %struct.wacom, %struct.wacom* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.wacom*, %struct.wacom** %3, align 8
  %24 = getelementptr inbounds %struct.wacom, %struct.wacom* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 10, i32* %25, align 8
  %26 = load %struct.wacom*, %struct.wacom** %3, align 8
  %27 = getelementptr inbounds %struct.wacom, %struct.wacom* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i32 20, i32* %28, align 4
  %29 = load %struct.wacom*, %struct.wacom** %3, align 8
  %30 = getelementptr inbounds %struct.wacom, %struct.wacom* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  store i32 10, i32* %31, align 8
  %32 = load %struct.wacom*, %struct.wacom** %3, align 8
  %33 = getelementptr inbounds %struct.wacom, %struct.wacom* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = call i32 @sysfs_create_group(i32* %36, i32* @intuos4_led_attr_group)
  store i32 %37, i32* %4, align 4
  br label %91

38:                                               ; preds = %1, %1
  %39 = load %struct.wacom*, %struct.wacom** %3, align 8
  %40 = getelementptr inbounds %struct.wacom, %struct.wacom* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 0, i32* %43, align 4
  %44 = load %struct.wacom*, %struct.wacom** %3, align 8
  %45 = getelementptr inbounds %struct.wacom, %struct.wacom* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 0, i32* %48, align 4
  %49 = load %struct.wacom*, %struct.wacom** %3, align 8
  %50 = getelementptr inbounds %struct.wacom, %struct.wacom* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.wacom*, %struct.wacom** %3, align 8
  %53 = getelementptr inbounds %struct.wacom, %struct.wacom* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.wacom*, %struct.wacom** %3, align 8
  %56 = getelementptr inbounds %struct.wacom, %struct.wacom* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  store i32 0, i32* %57, align 8
  %58 = load %struct.wacom*, %struct.wacom** %3, align 8
  %59 = getelementptr inbounds %struct.wacom, %struct.wacom* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = call i32 @sysfs_create_group(i32* %62, i32* @cintiq_led_attr_group)
  store i32 %63, i32* %4, align 4
  br label %91

64:                                               ; preds = %1, %1, %1
  %65 = load %struct.wacom*, %struct.wacom** %3, align 8
  %66 = getelementptr inbounds %struct.wacom, %struct.wacom* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 0, i32* %69, align 4
  %70 = load %struct.wacom*, %struct.wacom** %3, align 8
  %71 = getelementptr inbounds %struct.wacom, %struct.wacom* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 0, i32* %74, align 4
  %75 = load %struct.wacom*, %struct.wacom** %3, align 8
  %76 = getelementptr inbounds %struct.wacom, %struct.wacom* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32 32, i32* %77, align 8
  %78 = load %struct.wacom*, %struct.wacom** %3, align 8
  %79 = getelementptr inbounds %struct.wacom, %struct.wacom* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  %81 = load %struct.wacom*, %struct.wacom** %3, align 8
  %82 = getelementptr inbounds %struct.wacom, %struct.wacom* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  store i32 0, i32* %83, align 8
  %84 = load %struct.wacom*, %struct.wacom** %3, align 8
  %85 = getelementptr inbounds %struct.wacom, %struct.wacom* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = call i32 @sysfs_create_group(i32* %88, i32* @intuos5_led_attr_group)
  store i32 %89, i32* %4, align 4
  br label %91

90:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %105

91:                                               ; preds = %64, %38, %12
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load %struct.wacom*, %struct.wacom** %3, align 8
  %96 = getelementptr inbounds %struct.wacom, %struct.wacom* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @dev_err(%struct.TYPE_10__* %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %105

102:                                              ; preds = %91
  %103 = load %struct.wacom*, %struct.wacom** %3, align 8
  %104 = call i32 @wacom_led_control(%struct.wacom* %103)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %102, %94, %90
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @wacom_led_control(%struct.wacom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
