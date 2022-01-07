; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-topseed.c_ts_input_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-topseed.c_ts_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@KEY_HOME = common dso_local global i32 0, align 4
@KEY_MENU = common dso_local global i32 0, align 4
@KEY_TV = common dso_local global i32 0, align 4
@KEY_RED = common dso_local global i32 0, align 4
@KEY_GREEN = common dso_local global i32 0, align 4
@KEY_YELLOW = common dso_local global i32 0, align 4
@KEY_BLUE = common dso_local global i32 0, align 4
@KEY_ANGLE = common dso_local global i32 0, align 4
@KEY_LANGUAGE = common dso_local global i32 0, align 4
@KEY_SUBTITLE = common dso_local global i32 0, align 4
@KEY_AUDIO = common dso_local global i32 0, align 4
@KEY_TEXT = common dso_local global i32 0, align 4
@KEY_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @ts_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %15 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HID_USAGE_PAGE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, -4456448
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %68

21:                                               ; preds = %6
  %22 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %23 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HID_USAGE, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %66 [
    i32 13, label %27
    i32 36, label %30
    i32 37, label %33
    i32 72, label %36
    i32 71, label %39
    i32 73, label %42
    i32 74, label %45
    i32 75, label %48
    i32 76, label %51
    i32 77, label %54
    i32 49, label %57
    i32 50, label %60
    i32 51, label %63
  ]

27:                                               ; preds = %21
  %28 = load i32, i32* @KEY_HOME, align 4
  %29 = call i32 @ts_map_key_clear(i32 %28)
  br label %67

30:                                               ; preds = %21
  %31 = load i32, i32* @KEY_MENU, align 4
  %32 = call i32 @ts_map_key_clear(i32 %31)
  br label %67

33:                                               ; preds = %21
  %34 = load i32, i32* @KEY_TV, align 4
  %35 = call i32 @ts_map_key_clear(i32 %34)
  br label %67

36:                                               ; preds = %21
  %37 = load i32, i32* @KEY_RED, align 4
  %38 = call i32 @ts_map_key_clear(i32 %37)
  br label %67

39:                                               ; preds = %21
  %40 = load i32, i32* @KEY_GREEN, align 4
  %41 = call i32 @ts_map_key_clear(i32 %40)
  br label %67

42:                                               ; preds = %21
  %43 = load i32, i32* @KEY_YELLOW, align 4
  %44 = call i32 @ts_map_key_clear(i32 %43)
  br label %67

45:                                               ; preds = %21
  %46 = load i32, i32* @KEY_BLUE, align 4
  %47 = call i32 @ts_map_key_clear(i32 %46)
  br label %67

48:                                               ; preds = %21
  %49 = load i32, i32* @KEY_ANGLE, align 4
  %50 = call i32 @ts_map_key_clear(i32 %49)
  br label %67

51:                                               ; preds = %21
  %52 = load i32, i32* @KEY_LANGUAGE, align 4
  %53 = call i32 @ts_map_key_clear(i32 %52)
  br label %67

54:                                               ; preds = %21
  %55 = load i32, i32* @KEY_SUBTITLE, align 4
  %56 = call i32 @ts_map_key_clear(i32 %55)
  br label %67

57:                                               ; preds = %21
  %58 = load i32, i32* @KEY_AUDIO, align 4
  %59 = call i32 @ts_map_key_clear(i32 %58)
  br label %67

60:                                               ; preds = %21
  %61 = load i32, i32* @KEY_TEXT, align 4
  %62 = call i32 @ts_map_key_clear(i32 %61)
  br label %67

63:                                               ; preds = %21
  %64 = load i32, i32* @KEY_CHANNEL, align 4
  %65 = call i32 @ts_map_key_clear(i32 %64)
  br label %67

66:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %68

67:                                               ; preds = %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27
  store i32 1, i32* %7, align 4
  br label %68

68:                                               ; preds = %67, %66, %20
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @ts_map_key_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
