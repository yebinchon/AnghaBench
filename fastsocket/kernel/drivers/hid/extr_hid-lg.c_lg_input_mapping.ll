; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-lg.c_lg_input_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-lg.c_lg_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i64 }
%struct.hid_usage = type { i32 }

@lg_input_mapping.e_keymap = internal constant [80 x i32] [i32 0, i32 216, i32 0, i32 213, i32 175, i32 156, i32 0, i32 0, i32 0, i32 0, i32 144, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 212, i32 174, i32 167, i32 152, i32 161, i32 112, i32 0, i32 0, i32 0, i32 154, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 183, i32 184, i32 185, i32 186, i32 187, i32 188, i32 189, i32 190, i32 191, i32 192, i32 193, i32 194, i32 0, i32 0, i32 0], align 16
@USB_DEVICE_ID_LOGITECH_RECEIVER = common dso_local global i64 0, align 8
@LG_WIRELESS = common dso_local global i64 0, align 8
@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_BUTTON = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@HID_GD_MOUSE = common dso_local global i64 0, align 8
@LG_IGNORE_DOUBLED_WHEEL = common dso_local global i64 0, align 8
@LG_EXPANDED_KEYMAP = common dso_local global i64 0, align 8
@EV_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @lg_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %17 = call i64 @hid_get_drvdata(%struct.hid_device* %16)
  store i64 %17, i64* %14, align 8
  %18 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %19 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %15, align 4
  %21 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %22 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @USB_DEVICE_ID_LOGITECH_RECEIVER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %6
  %27 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %28 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %29 = load i64**, i64*** %12, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call i64 @lg_ultrax_remote_mapping(%struct.hid_input* %27, %struct.hid_usage* %28, i64** %29, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  br label %104

34:                                               ; preds = %26, %6
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* @LG_WIRELESS, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %41 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %42 = load i64**, i64*** %12, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i64 @lg_wireless_mapping(%struct.hid_input* %40, %struct.hid_usage* %41, i64** %42, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  br label %104

47:                                               ; preds = %39, %34
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @HID_USAGE_PAGE, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @HID_UP_BUTTON, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  br label %104

54:                                               ; preds = %47
  %55 = load i32, i32* @HID_USAGE, align 4
  %56 = load i32, i32* %15, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %15, align 4
  %58 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %59 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @HID_GD_MOUSE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %54
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* @LG_IGNORE_DOUBLED_WHEEL, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32, i32* %15, align 4
  %70 = icmp eq i32 %69, 7
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %15, align 4
  %73 = icmp eq i32 %72, 8
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %68
  store i32 -1, i32* %7, align 4
  br label %104

75:                                               ; preds = %71, %63
  br label %103

76:                                               ; preds = %54
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* @LG_EXPANDED_KEYMAP, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %76
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([80 x i32], [80 x i32]* @lg_input_mapping.e_keymap, i64 0, i64 0))
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = load i32, i32* %15, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [80 x i32], [80 x i32]* @lg_input_mapping.e_keymap, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %93 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %94 = load i64**, i64*** %12, align 8
  %95 = load i32*, i32** %13, align 8
  %96 = load i32, i32* @EV_KEY, align 4
  %97 = load i32, i32* %15, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [80 x i32], [80 x i32]* @lg_input_mapping.e_keymap, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @hid_map_usage(%struct.hid_input* %92, %struct.hid_usage* %93, i64** %94, i32* %95, i32 %96, i32 %100)
  store i32 1, i32* %7, align 4
  br label %104

102:                                              ; preds = %85, %81, %76
  br label %103

103:                                              ; preds = %102, %75
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %103, %91, %74, %53, %46, %33
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i64 @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i64 @lg_ultrax_remote_mapping(%struct.hid_input*, %struct.hid_usage*, i64**, i32*) #1

declare dso_local i64 @lg_wireless_mapping(%struct.hid_input*, %struct.hid_usage*, i64**, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @hid_map_usage(%struct.hid_input*, %struct.hid_usage*, i64**, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
