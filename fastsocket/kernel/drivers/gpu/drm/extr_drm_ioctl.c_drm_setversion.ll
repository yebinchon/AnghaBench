; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_ioctl.c_drm_setversion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_ioctl.c_drm_setversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 (%struct.drm_device*, %struct.drm_set_version*)* }
%struct.drm_set_version = type { i32, i32, i32, i64 }
%struct.drm_file = type { i32 }

@DRM_IF_MAJOR = common dso_local global i32 0, align 4
@DRM_IF_MINOR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_setversion(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_set_version*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_file* %2, %struct.drm_file** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.drm_set_version*
  store %struct.drm_set_version* %11, %struct.drm_set_version** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %13 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %64

16:                                               ; preds = %3
  %17 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %18 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DRM_IF_MAJOR, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %16
  %23 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %24 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %29 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DRM_IF_MINOR, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %22, %16
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  br label %115

36:                                               ; preds = %27
  %37 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %38 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %41 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DRM_IF_VERSION(i32 %39, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %46 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @max(i32 %44, i32 %47)
  %49 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %52 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 1
  br i1 %54, label %55, label %63

55:                                               ; preds = %36
  %56 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %57 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %58 = call i32 @drm_set_busid(%struct.drm_device* %56, %struct.drm_file* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %115

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %36
  br label %64

64:                                               ; preds = %63, %3
  %65 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %66 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %114

69:                                               ; preds = %64
  %70 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %71 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %74 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %72, %77
  br i1 %78, label %94, label %79

79:                                               ; preds = %69
  %80 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %81 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %86 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %89 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %87, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %84, %79, %69
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %9, align 4
  br label %115

97:                                               ; preds = %84
  %98 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %99 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32 (%struct.drm_device*, %struct.drm_set_version*)*, i32 (%struct.drm_device*, %struct.drm_set_version*)** %101, align 8
  %103 = icmp ne i32 (%struct.drm_device*, %struct.drm_set_version*)* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %97
  %105 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %106 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i32 (%struct.drm_device*, %struct.drm_set_version*)*, i32 (%struct.drm_device*, %struct.drm_set_version*)** %108, align 8
  %110 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %111 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %112 = call i32 %109(%struct.drm_device* %110, %struct.drm_set_version* %111)
  br label %113

113:                                              ; preds = %104, %97
  br label %114

114:                                              ; preds = %113, %64
  br label %115

115:                                              ; preds = %114, %94, %61, %33
  %116 = load i32, i32* @DRM_IF_MAJOR, align 4
  %117 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %118 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @DRM_IF_MINOR, align 4
  %120 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %121 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %123 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %128 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %130 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.drm_set_version*, %struct.drm_set_version** %7, align 8
  %135 = getelementptr inbounds %struct.drm_set_version, %struct.drm_set_version* %134, i32 0, i32 3
  store i64 %133, i64* %135, align 8
  %136 = load i32, i32* %9, align 4
  ret i32 %136
}

declare dso_local i32 @DRM_IF_VERSION(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @drm_set_busid(%struct.drm_device*, %struct.drm_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
