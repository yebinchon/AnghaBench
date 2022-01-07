; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-microsoft.c_ms_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-microsoft.c_ms_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.hid_usage = type { i32, i32 }

@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4
@MS_ERGONOMY = common dso_local global i64 0, align 8
@HID_UP_MSVENDOR = common dso_local global i32 0, align 4
@ms_event.last_key = internal global i32 0, align 4
@KEY_F14 = common dso_local global i32 0, align 4
@KEY_F15 = common dso_local global i32 0, align 4
@KEY_F16 = common dso_local global i32 0, align 4
@KEY_F17 = common dso_local global i32 0, align 4
@KEY_F18 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* @ms_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.input_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_field* %1, %struct.hid_field** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %14 = call i64 @hid_get_drvdata(%struct.hid_device* %13)
  store i64 %14, i64* %10, align 8
  %15 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %16 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %23 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %28 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %21, %4
  store i32 0, i32* %5, align 4
  br label %81

32:                                               ; preds = %26
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @MS_ERGONOMY, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %80

37:                                               ; preds = %32
  %38 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %39 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HID_UP_MSVENDOR, align 4
  %42 = or i32 %41, 65285
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %80

44:                                               ; preds = %37
  %45 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %46 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.input_dev*, %struct.input_dev** %48, align 8
  store %struct.input_dev* %49, %struct.input_dev** %11, align 8
  store i32 0, i32* %12, align 4
  %50 = load i32, i32* %9, align 4
  switch i32 %50, label %61 [
    i32 1, label %51
    i32 2, label %53
    i32 4, label %55
    i32 8, label %57
    i32 16, label %59
  ]

51:                                               ; preds = %44
  %52 = load i32, i32* @KEY_F14, align 4
  store i32 %52, i32* %12, align 4
  br label %61

53:                                               ; preds = %44
  %54 = load i32, i32* @KEY_F15, align 4
  store i32 %54, i32* %12, align 4
  br label %61

55:                                               ; preds = %44
  %56 = load i32, i32* @KEY_F16, align 4
  store i32 %56, i32* %12, align 4
  br label %61

57:                                               ; preds = %44
  %58 = load i32, i32* @KEY_F17, align 4
  store i32 %58, i32* %12, align 4
  br label %61

59:                                               ; preds = %44
  %60 = load i32, i32* @KEY_F18, align 4
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %44, %59, %57, %55, %53, %51
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %66 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %67 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @input_event(%struct.input_dev* %65, i32 %68, i32 %69, i32 1)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* @ms_event.last_key, align 4
  br label %79

72:                                               ; preds = %61
  %73 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %74 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %75 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ms_event.last_key, align 4
  %78 = call i32 @input_event(%struct.input_dev* %73, i32 %76, i32 %77, i32 0)
  br label %79

79:                                               ; preds = %72, %64
  store i32 1, i32* %5, align 4
  br label %81

80:                                               ; preds = %37, %32
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %79, %31
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i64 @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
