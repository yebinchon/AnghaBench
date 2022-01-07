; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fops.c_drm_stub_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fops.c_drm_stub_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.file_operations* }
%struct.file_operations = type { i32 (%struct.inode*, %struct.file.0*)* }
%struct.file.0 = type opaque
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.file_operations* }
%struct.drm_minor = type { %struct.drm_device* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@drm_global_mutex = common dso_local global i32 0, align 4
@drm_minors_idr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_stub_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_minor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.file_operations*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store %struct.drm_device* null, %struct.drm_device** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @mutex_lock(i32* @drm_global_mutex)
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.drm_minor* @idr_find(i32* @drm_minors_idr, i32 %16)
  store %struct.drm_minor* %17, %struct.drm_minor** %6, align 8
  %18 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %19 = icmp ne %struct.drm_minor* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %84

21:                                               ; preds = %2
  %22 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %23 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %22, i32 0, i32 0
  %24 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  store %struct.drm_device* %24, %struct.drm_device** %5, align 8
  %25 = icmp ne %struct.drm_device* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %84

27:                                               ; preds = %21
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = call i64 @drm_device_is_unplugged(%struct.drm_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %84

32:                                               ; preds = %27
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load %struct.file_operations*, %struct.file_operations** %34, align 8
  store %struct.file_operations* %35, %struct.file_operations** %9, align 8
  %36 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.file_operations*, %struct.file_operations** %39, align 8
  %41 = call i8* @fops_get(%struct.file_operations* %40)
  %42 = bitcast i8* %41 to %struct.file_operations*
  %43 = load %struct.file*, %struct.file** %4, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  store %struct.file_operations* %42, %struct.file_operations** %44, align 8
  %45 = load %struct.file*, %struct.file** %4, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 0
  %47 = load %struct.file_operations*, %struct.file_operations** %46, align 8
  %48 = icmp eq %struct.file_operations* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %32
  %50 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %51 = load %struct.file*, %struct.file** %4, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  store %struct.file_operations* %50, %struct.file_operations** %52, align 8
  br label %84

53:                                               ; preds = %32
  %54 = load %struct.file*, %struct.file** %4, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 0
  %56 = load %struct.file_operations*, %struct.file_operations** %55, align 8
  %57 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %56, i32 0, i32 0
  %58 = load i32 (%struct.inode*, %struct.file.0*)*, i32 (%struct.inode*, %struct.file.0*)** %57, align 8
  %59 = icmp ne i32 (%struct.inode*, %struct.file.0*)* %58, null
  br i1 %59, label %60, label %81

60:                                               ; preds = %53
  %61 = load %struct.file*, %struct.file** %4, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 0
  %63 = load %struct.file_operations*, %struct.file_operations** %62, align 8
  %64 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %63, i32 0, i32 0
  %65 = load i32 (%struct.inode*, %struct.file.0*)*, i32 (%struct.inode*, %struct.file.0*)** %64, align 8
  %66 = load %struct.inode*, %struct.inode** %3, align 8
  %67 = load %struct.file*, %struct.file** %4, align 8
  %68 = bitcast %struct.file* %67 to %struct.file.0*
  %69 = call i32 %65(%struct.inode* %66, %struct.file.0* %68)
  store i32 %69, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %60
  %72 = load %struct.file*, %struct.file** %4, align 8
  %73 = getelementptr inbounds %struct.file, %struct.file* %72, i32 0, i32 0
  %74 = load %struct.file_operations*, %struct.file_operations** %73, align 8
  %75 = call i32 @fops_put(%struct.file_operations* %74)
  %76 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %77 = call i8* @fops_get(%struct.file_operations* %76)
  %78 = bitcast i8* %77 to %struct.file_operations*
  %79 = load %struct.file*, %struct.file** %4, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 0
  store %struct.file_operations* %78, %struct.file_operations** %80, align 8
  br label %81

81:                                               ; preds = %71, %60, %53
  %82 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %83 = call i32 @fops_put(%struct.file_operations* %82)
  br label %84

84:                                               ; preds = %81, %49, %31, %26, %20
  %85 = call i32 @mutex_unlock(i32* @drm_global_mutex)
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.drm_minor* @idr_find(i32*, i32) #1

declare dso_local i64 @drm_device_is_unplugged(%struct.drm_device*) #1

declare dso_local i8* @fops_get(%struct.file_operations*) #1

declare dso_local i32 @fops_put(%struct.file_operations*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
