; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_sysfs.c_drm_sysfs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_sysfs.c_drm_sysfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class = type { i32, i32, i32 }
%struct.module = type { i32 }

@drm_class_suspend = common dso_local global i32 0, align 4
@drm_class_resume = common dso_local global i32 0, align 4
@class_attr_version = common dso_local global i32 0, align 4
@drm_devnode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.class* @drm_sysfs_create(%struct.module* %0, i8* %1) #0 {
  %3 = alloca %struct.class*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.class*, align 8
  %7 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.module*, %struct.module** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.class* @class_create(%struct.module* %8, i8* %9)
  store %struct.class* %10, %struct.class** %6, align 8
  %11 = load %struct.class*, %struct.class** %6, align 8
  %12 = call i64 @IS_ERR(%struct.class* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.class*, %struct.class** %6, align 8
  %16 = call i32 @PTR_ERR(%struct.class* %15)
  store i32 %16, i32* %7, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load i32, i32* @drm_class_suspend, align 4
  %19 = load %struct.class*, %struct.class** %6, align 8
  %20 = getelementptr inbounds %struct.class, %struct.class* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @drm_class_resume, align 4
  %22 = load %struct.class*, %struct.class** %6, align 8
  %23 = getelementptr inbounds %struct.class, %struct.class* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.class*, %struct.class** %6, align 8
  %25 = call i32 @class_create_file(%struct.class* %24, i32* @class_attr_version)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %34

29:                                               ; preds = %17
  %30 = load i32, i32* @drm_devnode, align 4
  %31 = load %struct.class*, %struct.class** %6, align 8
  %32 = getelementptr inbounds %struct.class, %struct.class* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.class*, %struct.class** %6, align 8
  store %struct.class* %33, %struct.class** %3, align 8
  br label %40

34:                                               ; preds = %28
  %35 = load %struct.class*, %struct.class** %6, align 8
  %36 = call i32 @class_destroy(%struct.class* %35)
  br label %37

37:                                               ; preds = %34, %14
  %38 = load i32, i32* %7, align 4
  %39 = call %struct.class* @ERR_PTR(i32 %38)
  store %struct.class* %39, %struct.class** %3, align 8
  br label %40

40:                                               ; preds = %37, %29
  %41 = load %struct.class*, %struct.class** %3, align 8
  ret %struct.class* %41
}

declare dso_local %struct.class* @class_create(%struct.module*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.class*) #1

declare dso_local i32 @PTR_ERR(%struct.class*) #1

declare dso_local i32 @class_create_file(%struct.class*, i32*) #1

declare dso_local i32 @class_destroy(%struct.class*) #1

declare dso_local %struct.class* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
