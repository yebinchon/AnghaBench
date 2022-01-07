; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_sysfs.c_drm_sysfs_connector_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_sysfs.c_drm_sysfs_connector_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"removing \22%s\22 from sysfs\0A\00", align 1
@connector_attrs = common dso_local global i32* null, align 8
@edid_attr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_sysfs_connector_remove(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %5 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %41

10:                                               ; preds = %1
  %11 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %12 = call i32 @drm_get_connector_name(%struct.drm_connector* %11)
  %13 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %27, %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32*, i32** @connector_attrs, align 8
  %17 = call i32 @ARRAY_SIZE(i32* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %21 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %20, i32 0, i32 0
  %22 = load i32*, i32** @connector_attrs, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @device_remove_file(%struct.TYPE_3__* %21, i32* %25)
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %14

30:                                               ; preds = %14
  %31 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %32 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = call i32 @sysfs_remove_bin_file(i32* %33, i32* @edid_attr)
  %35 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %36 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %35, i32 0, i32 0
  %37 = call i32 @device_unregister(%struct.TYPE_3__* %36)
  %38 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %39 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %30, %9
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @drm_get_connector_name(%struct.drm_connector*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @device_remove_file(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @sysfs_remove_bin_file(i32*, i32*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
