; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_vicam.c_vicam_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_vicam.c_vicam_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vicam_camera* }
%struct.vicam_camera = type { i64 }
%struct.vm_area_struct = type { i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"vicam_mmap: %ld\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHARED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @vicam_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vicam_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vicam_camera*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %16, %19
  store i64 %20, i64* %9, align 8
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load %struct.vicam_camera*, %struct.vicam_camera** %22, align 8
  store %struct.vicam_camera* %23, %struct.vicam_camera** %10, align 8
  %24 = load %struct.vicam_camera*, %struct.vicam_camera** %10, align 8
  %25 = icmp ne %struct.vicam_camera* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %69

29:                                               ; preds = %2
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load %struct.vicam_camera*, %struct.vicam_camera** %10, align 8
  %33 = getelementptr inbounds %struct.vicam_camera, %struct.vicam_camera* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %67, %29
  %36 = load i64, i64* %9, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %35
  %39 = load i64, i64* %7, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = call i64 @vmalloc_to_pfn(i8* %40)
  store i64 %41, i64* %6, align 8
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = load i32, i32* @PAGE_SHARED, align 4
  %47 = call i64 @remap_pfn_range(%struct.vm_area_struct* %42, i64 %43, i64 %44, i64 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i32, i32* @EAGAIN, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %69

52:                                               ; preds = %38
  %53 = load i64, i64* @PAGE_SIZE, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* @PAGE_SIZE, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @PAGE_SIZE, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load i64, i64* @PAGE_SIZE, align 8
  %64 = load i64, i64* %9, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %9, align 8
  br label %67

66:                                               ; preds = %52
  store i64 0, i64* %9, align 8
  br label %67

67:                                               ; preds = %66, %62
  br label %35

68:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %49, %26
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @DBG(i8*, i64) #1

declare dso_local i64 @vmalloc_to_pfn(i8*) #1

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
