; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_stub.c_drm_dropmaster_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_stub.c_drm_dropmaster_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.drm_device*, %struct.drm_file*, i32)* }
%struct.drm_file = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dropmaster_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %8 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %9 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %55

15:                                               ; preds = %3
  %16 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %17 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %55

25:                                               ; preds = %15
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.drm_device*, %struct.drm_file*, i32)*, i32 (%struct.drm_device*, %struct.drm_file*, i32)** %32, align 8
  %34 = icmp ne i32 (%struct.drm_device*, %struct.drm_file*, i32)* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %25
  %36 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.drm_device*, %struct.drm_file*, i32)*, i32 (%struct.drm_device*, %struct.drm_file*, i32)** %39, align 8
  %41 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %42 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %43 = call i32 %40(%struct.drm_device* %41, %struct.drm_file* %42, i32 0)
  br label %44

44:                                               ; preds = %35, %25
  %45 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %46 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @drm_master_put(i32* %48)
  %50 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %51 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %53 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %44, %22, %12
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_master_put(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
