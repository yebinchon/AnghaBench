; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_sysfs.c_drm_sysfs_connector_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_sysfs.c_drm_sysfs_connector_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_9__, %struct.drm_device* }
%struct.TYPE_9__ = type { i32, i32, i32, i32* }
%struct.drm_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@drm_class = common dso_local global i32 0, align 4
@drm_sysfs_device_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"adding \22%s\22 to sysfs\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"card%d-%s\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to register connector device: %d\0A\00", align 1
@connector_attrs = common dso_local global i32* null, align 8
@connector_attrs_opt1 = common dso_local global i32* null, align 8
@edid_attr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_sysfs_connector_add(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 2
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 1
  %14 = call i32 @device_is_registered(%struct.TYPE_9__* %13)
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %21 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  store i32* %19, i32** %22, align 8
  %23 = load i32, i32* @drm_class, align 4
  %24 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %25 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @drm_sysfs_device_release, align 4
  %28 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %29 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %32 = call i32 @drm_get_connector_name(%struct.drm_connector* %31)
  %33 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %35 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %34, i32 0, i32 1
  %36 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %42 = call i32 @drm_get_connector_name(%struct.drm_connector* %41)
  %43 = call i32 @dev_set_name(%struct.TYPE_9__* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %42)
  %44 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %45 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %44, i32 0, i32 1
  %46 = call i32 @device_register(%struct.TYPE_9__* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %1
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %147

52:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %70, %52
  %54 = load i32, i32* %5, align 4
  %55 = load i32*, i32** @connector_attrs, align 8
  %56 = call i32 @ARRAY_SIZE(i32* %55)
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %60 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %59, i32 0, i32 1
  %61 = load i32*, i32** @connector_attrs, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @device_create_file(%struct.TYPE_9__* %60, i32* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %111

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %53

73:                                               ; preds = %53
  %74 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %75 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %99 [
    i32 130, label %77
    i32 131, label %77
    i32 129, label %77
    i32 132, label %77
    i32 128, label %77
  ]

77:                                               ; preds = %73, %73, %73, %73, %73
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %95, %77
  %79 = load i32, i32* %6, align 4
  %80 = load i32*, i32** @connector_attrs_opt1, align 8
  %81 = call i32 @ARRAY_SIZE(i32* %80)
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %85 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %84, i32 0, i32 1
  %86 = load i32*, i32** @connector_attrs_opt1, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i32 @device_create_file(%struct.TYPE_9__* %85, i32* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %111

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %78

98:                                               ; preds = %78
  br label %100

99:                                               ; preds = %73
  br label %100

100:                                              ; preds = %99, %98
  %101 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %102 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = call i32 @sysfs_create_bin_file(i32* %103, i32* @edid_attr)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %111

108:                                              ; preds = %100
  %109 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %110 = call i32 @drm_sysfs_hotplug_event(%struct.drm_device* %109)
  store i32 0, i32* %2, align 4
  br label %149

111:                                              ; preds = %107, %93, %68
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %124, %111
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %118 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %117, i32 0, i32 1
  %119 = load i32*, i32** @connector_attrs_opt1, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = call i32 @device_remove_file(%struct.TYPE_9__* %118, i32* %122)
  br label %124

124:                                              ; preds = %116
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %112

127:                                              ; preds = %112
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %140, %127
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %128
  %133 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %134 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %133, i32 0, i32 1
  %135 = load i32*, i32** @connector_attrs, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = call i32 @device_remove_file(%struct.TYPE_9__* %134, i32* %138)
  br label %140

140:                                              ; preds = %132
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %128

143:                                              ; preds = %128
  %144 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %145 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %144, i32 0, i32 1
  %146 = call i32 @device_unregister(%struct.TYPE_9__* %145)
  br label %147

147:                                              ; preds = %143, %49
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %147, %108
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @device_is_registered(%struct.TYPE_9__*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @drm_get_connector_name(%struct.drm_connector*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_9__*, i8*, i32, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_9__*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, i32*) #1

declare dso_local i32 @drm_sysfs_hotplug_event(%struct.drm_device*) #1

declare dso_local i32 @device_remove_file(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
