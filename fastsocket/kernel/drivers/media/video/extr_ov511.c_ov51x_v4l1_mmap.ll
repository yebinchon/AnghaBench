; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_v4l1_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_v4l1_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.video_device* }
%struct.video_device = type { i32 }
%struct.vm_area_struct = type { i64, i64 }
%struct.usb_ov511 = type { i32, i64, i32, i32, i32* }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"mmap: %ld (%lX) bytes\00", align 1
@OV511_NUMFRAMES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@PAGE_SHARED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @ov51x_v4l1_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov51x_v4l1_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.usb_ov511*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.video_device*, %struct.video_device** %13, align 8
  store %struct.video_device* %14, %struct.video_device** %6, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub i64 %20, %23
  store i64 %24, i64* %8, align 8
  %25 = load %struct.video_device*, %struct.video_device** %6, align 8
  %26 = call %struct.usb_ov511* @video_get_drvdata(%struct.video_device* %25)
  store %struct.usb_ov511* %26, %struct.usb_ov511** %9, align 8
  %27 = load %struct.usb_ov511*, %struct.usb_ov511** %9, align 8
  %28 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %116

34:                                               ; preds = %2
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @PDEBUG(i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %36)
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* @OV511_NUMFRAMES, align 4
  %40 = load %struct.usb_ov511*, %struct.usb_ov511** %9, align 8
  %41 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.usb_ov511*, %struct.usb_ov511** %9, align 8
  %44 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @MAX_DATA_SIZE(i32 %42, i32 %45)
  %47 = mul nsw i32 %39, %46
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = add nsw i32 %47, %48
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = sub nsw i32 %51, 1
  %53 = xor i32 %52, -1
  %54 = and i32 %50, %53
  %55 = sext i32 %54 to i64
  %56 = icmp ugt i64 %38, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %34
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %116

60:                                               ; preds = %34
  %61 = load %struct.usb_ov511*, %struct.usb_ov511** %9, align 8
  %62 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %61, i32 0, i32 0
  %63 = call i64 @mutex_lock_interruptible(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EINTR, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %116

68:                                               ; preds = %60
  %69 = load %struct.usb_ov511*, %struct.usb_ov511** %9, align 8
  %70 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %11, align 8
  br label %72

72:                                               ; preds = %111, %68
  %73 = load i64, i64* %8, align 8
  %74 = icmp ugt i64 %73, 0
  br i1 %74, label %75, label %112

75:                                               ; preds = %72
  %76 = load i64, i64* %11, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = call i64 @vmalloc_to_pfn(i8* %77)
  store i64 %78, i64* %10, align 8
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = load i32, i32* @PAGE_SHARED, align 4
  %84 = call i64 @remap_pfn_range(%struct.vm_area_struct* %79, i64 %80, i64 %81, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %75
  %87 = load %struct.usb_ov511*, %struct.usb_ov511** %9, align 8
  %88 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* @EAGAIN, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %116

92:                                               ; preds = %75
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %7, align 8
  %97 = load i32, i32* @PAGE_SIZE, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %11, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp ugt i64 %101, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %92
  %106 = load i32, i32* @PAGE_SIZE, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %8, align 8
  %109 = sub i64 %108, %107
  store i64 %109, i64* %8, align 8
  br label %111

110:                                              ; preds = %92
  store i64 0, i64* %8, align 8
  br label %111

111:                                              ; preds = %110, %105
  br label %72

112:                                              ; preds = %72
  %113 = load %struct.usb_ov511*, %struct.usb_ov511** %9, align 8
  %114 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %113, i32 0, i32 0
  %115 = call i32 @mutex_unlock(i32* %114)
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %112, %86, %65, %57, %31
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.usb_ov511* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i64, i64) #1

declare dso_local i32 @MAX_DATA_SIZE(i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @vmalloc_to_pfn(i8*) #1

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
