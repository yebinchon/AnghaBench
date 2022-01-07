; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_read_econtrol_integers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_read_econtrol_integers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_device = type { i32, i64 }
%struct.v4l2_ext_control = type { i64, i32 }

@V4L2_CID_AUDIO_COMPRESSION_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_device*, %struct.v4l2_ext_control*)* @si4713_read_econtrol_integers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_read_econtrol_integers(%struct.si4713_device* %0, %struct.v4l2_ext_control* %1) #0 {
  %3 = alloca %struct.si4713_device*, align 8
  %4 = alloca %struct.v4l2_ext_control*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store %struct.si4713_device* %0, %struct.si4713_device** %3, align 8
  store %struct.v4l2_ext_control* %1, %struct.v4l2_ext_control** %4, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64* null, i64** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %15 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @si4713_choose_econtrol_action(%struct.si4713_device* %14, i64 %17, i32** %6, i64* %8, i64* %9, i32* %10, i32* %11, i64** %12, i32* %13)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %81

22:                                               ; preds = %2
  %23 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %24 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %27 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %72

30:                                               ; preds = %22
  %31 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @si4713_read_property(%struct.si4713_device* %31, i32 %32, i32* %7)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %77

37:                                               ; preds = %30
  %38 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %39 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @V4L2_CID_AUDIO_COMPRESSION_THRESHOLD, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  br label %71

46:                                               ; preds = %37
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @get_status_bit(i32 %50, i64 %51, i64 %52)
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  br label %70

55:                                               ; preds = %46
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32*, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  br label %69

63:                                               ; preds = %55
  %64 = load i32, i32* %7, align 4
  %65 = load i64*, i64** %12, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @dev_to_usecs(i32 %64, i64* %65, i32 %66)
  %68 = load i32*, i32** %6, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %58
  br label %70

70:                                               ; preds = %69, %49
  br label %71

71:                                               ; preds = %70, %43
  br label %72

72:                                               ; preds = %71, %22
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %76 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %72, %36
  %78 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %79 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  br label %81

81:                                               ; preds = %77, %21
  %82 = load i64, i64* %5, align 8
  %83 = trunc i64 %82 to i32
  ret i32 %83
}

declare dso_local i64 @si4713_choose_econtrol_action(%struct.si4713_device*, i64, i32**, i64*, i64*, i32*, i32*, i64**, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @si4713_read_property(%struct.si4713_device*, i32, i32*) #1

declare dso_local i32 @get_status_bit(i32, i64, i64) #1

declare dso_local i32 @dev_to_usecs(i32, i64*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
