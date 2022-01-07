; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_v4l_stk_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_v4l_stk_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.stk_camera* }
%struct.stk_camera = type { i32, %struct.stk_sio_buffer* }
%struct.stk_sio_buffer = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.vm_area_struct = type { i64, i32, i32*, %struct.stk_sio_buffer* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_WRITE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@stk_v4l_vm_ops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @v4l_stk_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_stk_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.stk_camera*, align 8
  %10 = alloca %struct.stk_sio_buffer*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PAGE_SHIFT, align 8
  %15 = shl i64 %13, %14
  store i64 %15, i64* %8, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.stk_camera*, %struct.stk_camera** %17, align 8
  store %struct.stk_camera* %18, %struct.stk_camera** %9, align 8
  store %struct.stk_sio_buffer* null, %struct.stk_sio_buffer** %10, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @VM_WRITE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @VM_SHARED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25, %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %101

35:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %63, %35
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %39 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %36
  %43 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %44 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %43, i32 0, i32 1
  %45 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %45, i64 %47
  %49 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %42
  %56 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %57 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %56, i32 0, i32 1
  %58 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %58, i64 %60
  store %struct.stk_sio_buffer* %61, %struct.stk_sio_buffer** %10, align 8
  br label %66

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %36

66:                                               ; preds = %55, %36
  %67 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %10, align 8
  %68 = icmp eq %struct.stk_sio_buffer* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %101

72:                                               ; preds = %66
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %74 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %10, align 8
  %75 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @remap_vmalloc_range(%struct.vm_area_struct* %73, i32 %76, i32 0)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %101

82:                                               ; preds = %72
  %83 = load i32, i32* @VM_DONTEXPAND, align 4
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %10, align 8
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %90 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %89, i32 0, i32 3
  store %struct.stk_sio_buffer* %88, %struct.stk_sio_buffer** %90, align 8
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %92 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %91, i32 0, i32 2
  store i32* @stk_v4l_vm_ops, i32** %92, align 8
  %93 = load i32, i32* @V4L2_BUF_FLAG_MAPPED, align 4
  %94 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %10, align 8
  %95 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 8
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %100 = call i32 @stk_v4l_vm_open(%struct.vm_area_struct* %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %82, %80, %69, %32
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @remap_vmalloc_range(%struct.vm_area_struct*, i32, i32) #1

declare dso_local i32 @stk_v4l_vm_open(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
