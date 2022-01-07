; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_addfb2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_addfb2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)* }
%struct.drm_framebuffer = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32 }
%struct.drm_file = type { i32, i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_FB_INTERLACED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"bad framebuffer flags 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"bad framebuffer width %d, should be >= %d && <= %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"bad framebuffer height %d, should be >= %d && <= %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"could not create framebuffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"[FB:%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_addfb2(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %9 = alloca %struct.drm_mode_config*, align 8
  %10 = alloca %struct.drm_framebuffer*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_mode_fb_cmd2*
  store %struct.drm_mode_fb_cmd2* %13, %struct.drm_mode_fb_cmd2** %8, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  store %struct.drm_mode_config* %15, %struct.drm_mode_config** %9, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = load i32, i32* @DRIVER_MODESET, align 4
  %18 = call i32 @drm_core_check_feature(%struct.drm_device* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %145

23:                                               ; preds = %3
  %24 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %25 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DRM_MODE_FB_INTERLACED, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %33 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %145

38:                                               ; preds = %23
  %39 = load %struct.drm_mode_config*, %struct.drm_mode_config** %9, align 8
  %40 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %43 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %38
  %47 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %48 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.drm_mode_config*, %struct.drm_mode_config** %9, align 8
  %51 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %46, %38
  %55 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %56 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_mode_config*, %struct.drm_mode_config** %9, align 8
  %59 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.drm_mode_config*, %struct.drm_mode_config** %9, align 8
  %62 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %60, i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %145

67:                                               ; preds = %46
  %68 = load %struct.drm_mode_config*, %struct.drm_mode_config** %9, align 8
  %69 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %72 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %70, %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %67
  %76 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %77 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.drm_mode_config*, %struct.drm_mode_config** %9, align 8
  %80 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %75, %67
  %84 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %85 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.drm_mode_config*, %struct.drm_mode_config** %9, align 8
  %88 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.drm_mode_config*, %struct.drm_mode_config** %9, align 8
  %91 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %89, i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %145

96:                                               ; preds = %75
  %97 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %98 = call i32 @framebuffer_check(%struct.drm_mode_fb_cmd2* %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %4, align 4
  br label %145

103:                                              ; preds = %96
  %104 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %105 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %105, i32 0, i32 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load %struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)*, %struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)** %108, align 8
  %110 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %111 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %112 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %113 = call %struct.drm_framebuffer* %109(%struct.drm_device* %110, %struct.drm_file* %111, %struct.drm_mode_fb_cmd2* %112)
  store %struct.drm_framebuffer* %113, %struct.drm_framebuffer** %10, align 8
  %114 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %115 = call i64 @IS_ERR(%struct.drm_framebuffer* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %103
  %118 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %119 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %120 = call i32 @PTR_ERR(%struct.drm_framebuffer* %119)
  store i32 %120, i32* %4, align 4
  br label %145

121:                                              ; preds = %103
  %122 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %123 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %122, i32 0, i32 0
  %124 = call i32 @mutex_lock(i32* %123)
  %125 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %126 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %130 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %132 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %131, i32 0, i32 1
  %133 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %134 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %133, i32 0, i32 1
  %135 = call i32 @list_add(i32* %132, i32* %134)
  %136 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %137 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  %141 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %142 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %141, i32 0, i32 0
  %143 = call i32 @mutex_unlock(i32* %142)
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %121, %117, %101, %83, %54, %31, %20
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @framebuffer_check(%struct.drm_mode_fb_cmd2*) #1

declare dso_local i64 @IS_ERR(%struct.drm_framebuffer*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_framebuffer*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
