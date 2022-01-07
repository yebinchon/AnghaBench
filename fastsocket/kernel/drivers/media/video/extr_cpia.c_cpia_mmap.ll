; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_cpia_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_cpia_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.video_device* }
%struct.video_device = type { i32 }
%struct.vm_area_struct = type { i64, i64 }
%struct.cam_data = type { i32, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cpia_mmap: %ld\0A\00", align 1
@FRAME_NUM = common dso_local global i64 0, align 8
@CPIA_MAX_FRAME_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHARED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @cpia_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cam_data*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.video_device*, %struct.video_device** %14, align 8
  store %struct.video_device* %15, %struct.video_device** %6, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub i64 %21, %24
  store i64 %25, i64* %8, align 8
  %26 = load %struct.video_device*, %struct.video_device** %6, align 8
  %27 = call %struct.cam_data* @video_get_drvdata(%struct.video_device* %26)
  store %struct.cam_data* %27, %struct.cam_data** %11, align 8
  %28 = load %struct.cam_data*, %struct.cam_data** %11, align 8
  %29 = icmp ne %struct.cam_data* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.cam_data*, %struct.cam_data** %11, align 8
  %32 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %2
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %129

38:                                               ; preds = %30
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @FRAME_NUM, align 8
  %43 = load i64, i64* @CPIA_MAX_FRAME_SIZE, align 8
  %44 = mul i64 %42, %43
  %45 = icmp ugt i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %129

49:                                               ; preds = %38
  %50 = load %struct.cam_data*, %struct.cam_data** %11, align 8
  %51 = icmp ne %struct.cam_data* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.cam_data*, %struct.cam_data** %11, align 8
  %54 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52, %49
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %129

60:                                               ; preds = %52
  %61 = load %struct.cam_data*, %struct.cam_data** %11, align 8
  %62 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %61, i32 0, i32 0
  %63 = call i64 @mutex_lock_interruptible(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EINTR, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %129

68:                                               ; preds = %60
  %69 = load %struct.cam_data*, %struct.cam_data** %11, align 8
  %70 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %68
  %74 = load %struct.cam_data*, %struct.cam_data** %11, align 8
  %75 = call i32 @allocate_frame_buf(%struct.cam_data* %74)
  store i32 %75, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load %struct.cam_data*, %struct.cam_data** %11, align 8
  %79 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %3, align 4
  br label %129

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %68
  %84 = load %struct.cam_data*, %struct.cam_data** %11, align 8
  %85 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %10, align 8
  br label %87

87:                                               ; preds = %122, %83
  %88 = load i64, i64* %8, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %123

90:                                               ; preds = %87
  %91 = load i64, i64* %10, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = call i64 @vmalloc_to_pfn(i8* %92)
  store i64 %93, i64* %9, align 8
  %94 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* @PAGE_SIZE, align 8
  %98 = load i32, i32* @PAGE_SHARED, align 4
  %99 = call i64 @remap_pfn_range(%struct.vm_area_struct* %94, i64 %95, i64 %96, i64 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %90
  %102 = load %struct.cam_data*, %struct.cam_data** %11, align 8
  %103 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i32, i32* @EAGAIN, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %129

107:                                              ; preds = %90
  %108 = load i64, i64* @PAGE_SIZE, align 8
  %109 = load i64, i64* %7, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %7, align 8
  %111 = load i64, i64* @PAGE_SIZE, align 8
  %112 = load i64, i64* %10, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %10, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* @PAGE_SIZE, align 8
  %116 = icmp ugt i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %107
  %118 = load i64, i64* @PAGE_SIZE, align 8
  %119 = load i64, i64* %8, align 8
  %120 = sub i64 %119, %118
  store i64 %120, i64* %8, align 8
  br label %122

121:                                              ; preds = %107
  store i64 0, i64* %8, align 8
  br label %122

122:                                              ; preds = %121, %117
  br label %87

123:                                              ; preds = %87
  %124 = load i64, i64* %8, align 8
  %125 = call i32 @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %124)
  %126 = load %struct.cam_data*, %struct.cam_data** %11, align 8
  %127 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %126, i32 0, i32 0
  %128 = call i32 @mutex_unlock(i32* %127)
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %123, %101, %77, %65, %57, %46, %35
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.cam_data* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @DBG(i8*, i64) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @allocate_frame_buf(%struct.cam_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @vmalloc_to_pfn(i8*) #1

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
