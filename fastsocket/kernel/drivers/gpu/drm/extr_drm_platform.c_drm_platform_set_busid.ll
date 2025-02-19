; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_platform.c_drm_platform_set_busid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_platform.c_drm_platform_set_busid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.drm_master = type { i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"platform:%s:%02d\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unique buffer overflowed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_master*)* @drm_platform_set_busid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_platform_set_busid(%struct.drm_device* %0, %struct.drm_master* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_master*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_master* %1, %struct.drm_master** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 13, %14
  %16 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %17 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %19 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %22 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %24 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kmalloc(i32 %26, i32 %27)
  %29 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %30 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %32 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %109

38:                                               ; preds = %2
  %39 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %46, %38
  %48 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %49 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %52 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %55 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @snprintf(i8* %50, i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %63 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %47
  %67 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %107

70:                                               ; preds = %47
  %71 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %72 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %78 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %76, %79
  %81 = add nsw i32 %80, 2
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i8* @kmalloc(i32 %81, i32 %82)
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %86 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %85, i32 0, i32 1
  store i32* %84, i32** %86, align 8
  %87 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %88 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %70
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %7, align 4
  br label %107

94:                                               ; preds = %70
  %95 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %96 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %99 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %104 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @sprintf(i32* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %102, i8* %105)
  store i32 0, i32* %3, align 4
  br label %109

107:                                              ; preds = %91, %66
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %94, %35
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @sprintf(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
