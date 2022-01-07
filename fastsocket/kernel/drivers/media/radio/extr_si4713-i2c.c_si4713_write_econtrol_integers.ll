; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_write_econtrol_integers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_write_econtrol_integers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_device = type { i32, i64, i32 }
%struct.v4l2_ext_control = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_device*, %struct.v4l2_ext_control*)* @si4713_write_econtrol_integers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_write_econtrol_integers(%struct.si4713_device* %0, %struct.v4l2_ext_control* %1) #0 {
  %3 = alloca %struct.si4713_device*, align 8
  %4 = alloca %struct.v4l2_ext_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store %struct.si4713_device* %0, %struct.si4713_device** %3, align 8
  store %struct.v4l2_ext_control* %1, %struct.v4l2_ext_control** %4, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64* null, i64** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %15 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %14, i32 0, i32 2
  %16 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %17 = call i32 @validate_range(i32* %15, %struct.v4l2_ext_control* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %131

21:                                               ; preds = %2
  %22 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %23 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @si4713_choose_econtrol_action(%struct.si4713_device* %22, i32 %25, i32** %6, i32* %8, i32* %9, i32* %10, i32* %11, i64** %12, i32* %13)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %131

30:                                               ; preds = %21
  %31 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %7, align 4
  br label %58

42:                                               ; preds = %30
  %43 = load i64*, i64** %12, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %47 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64*, i64** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @usecs_to_dev(i32 %48, i64* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %131

55:                                               ; preds = %45
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %42
  br label %58

58:                                               ; preds = %57, %36
  %59 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %60 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %59, i32 0, i32 0
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %63 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %100

66:                                               ; preds = %58
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %66
  %70 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @si4713_read_property(%struct.si4713_device* %70, i32 %71, i32* %7)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %127

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %79 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @set_bits(i32 %77, i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %76, %66
  %85 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @si4713_write_property(%struct.si4713_device* %85, i32 %86, i32 %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %127

92:                                               ; preds = %84
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %97 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %95, %92
  br label %100

100:                                              ; preds = %99, %58
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %11, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32*, i32** %6, align 8
  store i32 %106, i32* %107, align 4
  br label %126

108:                                              ; preds = %100
  %109 = load i64*, i64** %12, align 8
  %110 = icmp ne i64* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %108
  %112 = load i32, i32* %7, align 4
  %113 = load i64*, i64** %12, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @dev_to_usecs(i32 %112, i64* %113, i32 %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %127

119:                                              ; preds = %111
  %120 = load i32, i32* %5, align 4
  %121 = load i32*, i32** %6, align 8
  store i32 %120, i32* %121, align 4
  store i32 0, i32* %5, align 4
  br label %125

122:                                              ; preds = %108
  %123 = load i32, i32* %7, align 4
  %124 = load i32*, i32** %6, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125, %103
  br label %127

127:                                              ; preds = %126, %118, %91, %75
  %128 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %129 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %128, i32 0, i32 0
  %130 = call i32 @mutex_unlock(i32* %129)
  br label %131

131:                                              ; preds = %127, %54, %29, %20
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @validate_range(i32*, %struct.v4l2_ext_control*) #1

declare dso_local i32 @si4713_choose_econtrol_action(%struct.si4713_device*, i32, i32**, i32*, i32*, i32*, i32*, i64**, i32*) #1

declare dso_local i32 @usecs_to_dev(i32, i64*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @si4713_read_property(%struct.si4713_device*, i32, i32*) #1

declare dso_local i32 @set_bits(i32, i32, i32, i32) #1

declare dso_local i32 @si4713_write_property(%struct.si4713_device*, i32, i32) #1

declare dso_local i32 @dev_to_usecs(i32, i64*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
