; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_set_shutter_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_set_shutter_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32 }

@SET_LUM_CTL = common dso_local global i32 0, align 4
@SHUTTER_MODE_FORMATTER = common dso_local global i32 0, align 4
@PRESET_SHUTTER_FORMATTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_set_shutter_speed(%struct.pwc_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pwc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %13, align 1
  br label %16

14:                                               ; preds = %3
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 -1, i8* %15, align 1
  br label %16

16:                                               ; preds = %14, %12
  %17 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %18 = load i32, i32* @SET_LUM_CTL, align 4
  %19 = load i32, i32* @SHUTTER_MODE_FORMATTER, align 4
  %20 = bitcast [2 x i8]* %7 to i8**
  %21 = call i32 @send_control_msg(%struct.pwc_device* %17, i32 %18, i32 %19, i8** %20, i32 1)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %71, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %71

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %32, 65535
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 65535, i32* %6, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %37 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @DEVICE_USE_CODEC2(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = sdiv i32 %42, 100
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = ashr i32 %44, 8
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  store i8 %46, i8* %47, align 1
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 255
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 %50, i8* %51, align 1
  br label %65

52:                                               ; preds = %35
  %53 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %54 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @DEVICE_USE_CODEC3(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  store i8 0, i8* %59, align 1
  %60 = load i32, i32* %6, align 4
  %61 = ashr i32 %60, 8
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 %62, i8* %63, align 1
  br label %64

64:                                               ; preds = %58, %52
  br label %65

65:                                               ; preds = %64, %41
  %66 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %67 = load i32, i32* @SET_LUM_CTL, align 4
  %68 = load i32, i32* @PRESET_SHUTTER_FORMATTER, align 4
  %69 = bitcast [2 x i8]* %7 to i8**
  %70 = call i32 @send_control_msg(%struct.pwc_device* %66, i32 %67, i32 %68, i8** %69, i32 2)
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %65, %24, %16
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local i32 @send_control_msg(%struct.pwc_device*, i32, i32, i8**, i32) #1

declare dso_local i64 @DEVICE_USE_CODEC2(i32) #1

declare dso_local i64 @DEVICE_USE_CODEC3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
