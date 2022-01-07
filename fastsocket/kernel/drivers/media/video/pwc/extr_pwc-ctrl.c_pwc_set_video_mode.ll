; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_set_video_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_set_video_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.pwc_device = type { i64, i64, i64, i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"set_video_mode(%dx%d @ %d, pixfmt %08x).\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not find suitable size.\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"decode_size = %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Failed to set video mode %s@%d fps; return code = %d\0A\00", align 1
@size2name = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"Set viewport to %dx%d, image size is %dx%d.\0A\00", align 1
@pwc_image_sizes = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_set_video_mode(%struct.pwc_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pwc_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %20 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PWC_DEBUG_FLOW(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18, i32 %21)
  %23 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @pwc_decode_size(%struct.pwc_device* %23, i32 %24, i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %6
  %30 = call i32 @PWC_DEBUG_MODULE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ERANGE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %119

33:                                               ; preds = %6
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @PWC_TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %37 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @DEVICE_USE_CODEC1(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @set_video_mode_Nala(%struct.pwc_device* %42, i32 %43, i32 %44)
  store i32 %45, i32* %14, align 4
  br label %67

46:                                               ; preds = %33
  %47 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %48 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @DEVICE_USE_CODEC3(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @set_video_mode_Kiara(%struct.pwc_device* %53, i32 %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %14, align 4
  br label %66

59:                                               ; preds = %46
  %60 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @set_video_mode_Timon(%struct.pwc_device* %60, i32 %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %59, %52
  br label %67

67:                                               ; preds = %66, %41
  %68 = load i32, i32* %14, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i32*, i32** @size2name, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @PWC_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %7, align 4
  br label %119

80:                                               ; preds = %67
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %83 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %87 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %90 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %93 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %97 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %101 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %100, i32 0, i32 3
  store i64 %99, i64* %101, align 8
  %102 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %103 = call i32 @pwc_set_image_buffer_size(%struct.pwc_device* %102)
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwc_image_sizes, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwc_image_sizes, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @PWC_DEBUG_SIZE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %104, i32 %105, i32 %111, i32 %117)
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %80, %70, %29
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @PWC_DEBUG_FLOW(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pwc_decode_size(%struct.pwc_device*, i32, i32) #1

declare dso_local i32 @PWC_DEBUG_MODULE(i8*) #1

declare dso_local i32 @PWC_TRACE(i8*, i32) #1

declare dso_local i64 @DEVICE_USE_CODEC1(i32) #1

declare dso_local i32 @set_video_mode_Nala(%struct.pwc_device*, i32, i32) #1

declare dso_local i64 @DEVICE_USE_CODEC3(i32) #1

declare dso_local i32 @set_video_mode_Kiara(%struct.pwc_device*, i32, i32, i32, i32) #1

declare dso_local i32 @set_video_mode_Timon(%struct.pwc_device*, i32, i32, i32, i32) #1

declare dso_local i32 @PWC_ERROR(i8*, i32, i32, i32) #1

declare dso_local i32 @pwc_set_image_buffer_size(%struct.pwc_device*) #1

declare dso_local i32 @PWC_DEBUG_SIZE(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
