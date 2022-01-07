; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-ntrig.c_ntrig_input_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-ntrig.c_ntrig_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32, i32 }
%struct.hid_usage = type { i32 }

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @ntrig_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntrig_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
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
  switch i32 %18, label %93 [
    i32 128, label %19
    i32 129, label %62
    i32 -16777216, label %92
  ]

19:                                               ; preds = %6
  %20 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %21 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %61 [
    i32 131, label %23
    i32 130, label %42
  ]

23:                                               ; preds = %19
  %24 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %25 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %26 = load i64**, i64*** %12, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* @EV_ABS, align 4
  %29 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %30 = call i32 @hid_map_usage(%struct.hid_input* %24, %struct.hid_usage* %25, i64** %26, i32* %27, i32 %28, i32 %29)
  %31 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %32 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ABS_X, align 4
  %35 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %36 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %39 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @input_set_abs_params(i32 %33, i32 %34, i32 %37, i32 %40, i32 0, i32 0)
  store i32 1, i32* %7, align 4
  br label %94

42:                                               ; preds = %19
  %43 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %44 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %45 = load i64**, i64*** %12, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* @EV_ABS, align 4
  %48 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %49 = call i32 @hid_map_usage(%struct.hid_input* %43, %struct.hid_usage* %44, i64** %45, i32* %46, i32 %47, i32 %48)
  %50 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %51 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ABS_Y, align 4
  %54 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %55 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %58 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @input_set_abs_params(i32 %52, i32 %53, i32 %56, i32 %59, i32 0, i32 0)
  store i32 1, i32* %7, align 4
  br label %94

61:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %94

62:                                               ; preds = %6
  %63 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %64 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %91 [
    i32 137, label %66
    i32 133, label %66
    i32 135, label %66
    i32 138, label %66
    i32 136, label %66
    i32 139, label %67
    i32 132, label %70
    i32 134, label %78
  ]

66:                                               ; preds = %62, %62, %62, %62, %62
  store i32 -1, i32* %7, align 4
  br label %94

67:                                               ; preds = %62
  %68 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %69 = call i32 @nt_map_key_clear(i32 %68)
  store i32 1, i32* %7, align 4
  br label %94

70:                                               ; preds = %62
  %71 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %72 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %73 = load i64**, i64*** %12, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* @EV_ABS, align 4
  %76 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %77 = call i32 @hid_map_usage(%struct.hid_input* %71, %struct.hid_usage* %72, i64** %73, i32* %74, i32 %75, i32 %76)
  store i32 1, i32* %7, align 4
  br label %94

78:                                               ; preds = %62
  %79 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %80 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %81 = load i64**, i64*** %12, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* @EV_ABS, align 4
  %84 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %85 = call i32 @hid_map_usage(%struct.hid_input* %79, %struct.hid_usage* %80, i64** %81, i32* %82, i32 %83, i32 %84)
  %86 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %87 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %90 = call i32 @input_set_abs_params(i32 %88, i32 %89, i32 0, i32 1, i32 0, i32 0)
  store i32 1, i32* %7, align 4
  br label %94

91:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %94

92:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %94

93:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %93, %92, %91, %78, %70, %67, %66, %61, %42, %23
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @hid_map_usage(%struct.hid_input*, %struct.hid_usage*, i64**, i32*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nt_map_key_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
