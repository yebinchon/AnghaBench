; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_v4l_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_v4l_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.uvd* }
%struct.uvd = type { i32, i64 }
%struct.vm_area_struct = type { i64, i64 }

@EFAULT = common dso_local global i32 0, align 4
@USBVIDEO_NUMFRAMES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHARED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @usbvideo_v4l_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvideo_v4l_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.uvd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.uvd*, %struct.uvd** %12, align 8
  store %struct.uvd* %13, %struct.uvd** %6, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %19, %22
  store i64 %23, i64* %8, align 8
  %24 = load %struct.uvd*, %struct.uvd** %6, align 8
  %25 = call i32 @CAMERA_IS_OPERATIONAL(%struct.uvd* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EFAULT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %91

30:                                               ; preds = %2
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* @USBVIDEO_NUMFRAMES, align 4
  %33 = load %struct.uvd*, %struct.uvd** %6, align 8
  %34 = getelementptr inbounds %struct.uvd, %struct.uvd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %32, %35
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = add nsw i32 %36, %37
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = sub nsw i32 %40, 1
  %42 = xor i32 %41, -1
  %43 = and i32 %39, %42
  %44 = sext i32 %43 to i64
  %45 = icmp ugt i64 %31, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %30
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %91

49:                                               ; preds = %30
  %50 = load %struct.uvd*, %struct.uvd** %6, align 8
  %51 = getelementptr inbounds %struct.uvd, %struct.uvd* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %89, %49
  %54 = load i64, i64* %8, align 8
  %55 = icmp ugt i64 %54, 0
  br i1 %55, label %56, label %90

56:                                               ; preds = %53
  %57 = load i64, i64* %10, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = call i64 @vmalloc_to_pfn(i8* %58)
  store i64 %59, i64* %9, align 8
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = load i32, i32* @PAGE_SHARED, align 4
  %65 = call i64 @remap_pfn_range(%struct.vm_area_struct* %60, i64 %61, i64 %62, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load i32, i32* @EAGAIN, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %91

70:                                               ; preds = %56
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %7, align 8
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i32, i32* @PAGE_SIZE, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp ugt i64 %79, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %70
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %8, align 8
  %87 = sub i64 %86, %85
  store i64 %87, i64* %8, align 8
  br label %89

88:                                               ; preds = %70
  store i64 0, i64* %8, align 8
  br label %89

89:                                               ; preds = %88, %83
  br label %53

90:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %67, %46, %27
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @CAMERA_IS_OPERATIONAL(%struct.uvd*) #1

declare dso_local i64 @vmalloc_to_pfn(i8*) #1

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
