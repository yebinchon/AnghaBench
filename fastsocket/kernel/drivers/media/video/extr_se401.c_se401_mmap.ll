; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.video_device* }
%struct.video_device = type { i32 }
%struct.vm_area_struct = type { i64, i64 }
%struct.usb_se401 = type { i32, i32, i64, i32* }

@EIO = common dso_local global i32 0, align 4
@SE401_NUMFRAMES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHARED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @se401_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @se401_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca %struct.usb_se401*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.video_device*, %struct.video_device** %13, align 8
  store %struct.video_device* %14, %struct.video_device** %6, align 8
  %15 = load %struct.video_device*, %struct.video_device** %6, align 8
  %16 = bitcast %struct.video_device* %15 to %struct.usb_se401*
  store %struct.usb_se401* %16, %struct.usb_se401** %7, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  store i64 %26, i64* %9, align 8
  %27 = load %struct.usb_se401*, %struct.usb_se401** %7, align 8
  %28 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.usb_se401*, %struct.usb_se401** %7, align 8
  %31 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load %struct.usb_se401*, %struct.usb_se401** %7, align 8
  %36 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %110

40:                                               ; preds = %2
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* @SE401_NUMFRAMES, align 4
  %43 = load %struct.usb_se401*, %struct.usb_se401** %7, align 8
  %44 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %42, %45
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = add nsw i32 %46, %47
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = sub nsw i32 %50, 1
  %52 = xor i32 %51, -1
  %53 = and i32 %49, %52
  %54 = sext i32 %53 to i64
  %55 = icmp ugt i64 %41, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %40
  %57 = load %struct.usb_se401*, %struct.usb_se401** %7, align 8
  %58 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %110

62:                                               ; preds = %40
  %63 = load %struct.usb_se401*, %struct.usb_se401** %7, align 8
  %64 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %105, %62
  %67 = load i64, i64* %9, align 8
  %68 = icmp ugt i64 %67, 0
  br i1 %68, label %69, label %106

69:                                               ; preds = %66
  %70 = load i64, i64* %11, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = call i64 @vmalloc_to_pfn(i8* %71)
  store i64 %72, i64* %10, align 8
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = load i32, i32* @PAGE_SHARED, align 4
  %78 = call i64 @remap_pfn_range(%struct.vm_area_struct* %73, i64 %74, i64 %75, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %69
  %81 = load %struct.usb_se401*, %struct.usb_se401** %7, align 8
  %82 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* @EAGAIN, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %110

86:                                               ; preds = %69
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %8, align 8
  %91 = load i32, i32* @PAGE_SIZE, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %11, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp ugt i64 %95, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %86
  %100 = load i32, i32* @PAGE_SIZE, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %9, align 8
  %103 = sub i64 %102, %101
  store i64 %103, i64* %9, align 8
  br label %105

104:                                              ; preds = %86
  store i64 0, i64* %9, align 8
  br label %105

105:                                              ; preds = %104, %99
  br label %66

106:                                              ; preds = %66
  %107 = load %struct.usb_se401*, %struct.usb_se401** %7, align 8
  %108 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %107, i32 0, i32 1
  %109 = call i32 @mutex_unlock(i32* %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %80, %56, %34
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @vmalloc_to_pfn(i8*) #1

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
