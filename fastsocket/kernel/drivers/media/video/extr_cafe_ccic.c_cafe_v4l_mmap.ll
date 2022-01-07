; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_v4l_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_v4l_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cafe_camera* }
%struct.cafe_camera = type { i32, i32, %struct.cafe_sio_buffer* }
%struct.cafe_sio_buffer = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.vm_area_struct = type { i64, i32, i32*, %struct.cafe_sio_buffer* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@cafe_v4l_vm_ops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @cafe_v4l_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_v4l_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.cafe_camera*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cafe_sio_buffer*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.cafe_camera*, %struct.cafe_camera** %12, align 8
  store %struct.cafe_camera* %13, %struct.cafe_camera** %6, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PAGE_SHIFT, align 8
  %18 = shl i64 %16, %17
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  store %struct.cafe_sio_buffer* null, %struct.cafe_sio_buffer** %10, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @VM_WRITE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @VM_SHARED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27, %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %108

37:                                               ; preds = %27
  %38 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %39 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %68, %37
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %44 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %41
  %48 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %49 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %48, i32 0, i32 2
  %50 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %50, i64 %52
  %54 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %47
  %61 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %62 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %61, i32 0, i32 2
  %63 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %63, i64 %65
  store %struct.cafe_sio_buffer* %66, %struct.cafe_sio_buffer** %10, align 8
  br label %71

67:                                               ; preds = %47
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %41

71:                                               ; preds = %60, %41
  %72 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %10, align 8
  %73 = icmp eq %struct.cafe_sio_buffer* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %103

75:                                               ; preds = %71
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %77 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %10, align 8
  %78 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @remap_vmalloc_range(%struct.vm_area_struct* %76, i32 %79, i32 0)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %103

84:                                               ; preds = %75
  %85 = load i32, i32* @VM_DONTEXPAND, align 4
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %10, align 8
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %92 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %91, i32 0, i32 3
  store %struct.cafe_sio_buffer* %90, %struct.cafe_sio_buffer** %92, align 8
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %94 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %93, i32 0, i32 2
  store i32* @cafe_v4l_vm_ops, i32** %94, align 8
  %95 = load i32, i32* @V4L2_BUF_FLAG_MAPPED, align 4
  %96 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %10, align 8
  %97 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 8
  %101 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %102 = call i32 @cafe_v4l_vm_open(%struct.vm_area_struct* %101)
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %84, %83, %74
  %104 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %105 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %104, i32 0, i32 1
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %103, %34
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @remap_vmalloc_range(%struct.vm_area_struct*, i32, i32) #1

declare dso_local i32 @cafe_v4l_vm_open(%struct.vm_area_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
