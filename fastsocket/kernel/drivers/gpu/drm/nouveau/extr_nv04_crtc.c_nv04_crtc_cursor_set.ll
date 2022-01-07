; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_crtc.c_nv04_crtc_cursor_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_crtc.c_nv04_crtc_cursor_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_file = type { i32 }
%struct.nouveau_drm = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_crtc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.nouveau_crtc.0*, i32)*, i32, i32 (%struct.nouveau_crtc.1*, i32)*, %struct.TYPE_9__*, i32 (%struct.nouveau_crtc.2*, i32)* }
%struct.nouveau_crtc.0 = type opaque
%struct.nouveau_crtc.1 = type opaque
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nouveau_crtc.2 = type opaque
%struct.nouveau_bo = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_file*, i32, i32, i32)* @nv04_crtc_cursor_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_crtc_cursor_set(%struct.drm_crtc* %0, %struct.drm_file* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nouveau_drm*, align 8
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca %struct.nouveau_crtc*, align 8
  %15 = alloca %struct.nouveau_bo*, align 8
  %16 = alloca %struct.drm_gem_object*, align 8
  %17 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %19 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.nouveau_drm* @nouveau_drm(i32 %20)
  store %struct.nouveau_drm* %21, %struct.nouveau_drm** %12, align 8
  %22 = load %struct.nouveau_drm*, %struct.nouveau_drm** %12, align 8
  %23 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %22, i32 0, i32 1
  %24 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  store %struct.drm_device* %24, %struct.drm_device** %13, align 8
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %26 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %25)
  store %struct.nouveau_crtc* %26, %struct.nouveau_crtc** %14, align 8
  store %struct.nouveau_bo* null, %struct.nouveau_bo** %15, align 8
  store i32 0, i32* %17, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %5
  %30 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %31 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 4
  %33 = load i32 (%struct.nouveau_crtc.2*, i32)*, i32 (%struct.nouveau_crtc.2*, i32)** %32, align 8
  %34 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %35 = bitcast %struct.nouveau_crtc* %34 to %struct.nouveau_crtc.2*
  %36 = call i32 %33(%struct.nouveau_crtc.2* %35, i32 1)
  store i32 0, i32* %6, align 4
  br label %123

37:                                               ; preds = %5
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 64
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 64
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %123

46:                                               ; preds = %40
  %47 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %48 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device* %47, %struct.drm_file* %48, i32 %49)
  store %struct.drm_gem_object* %50, %struct.drm_gem_object** %16, align 8
  %51 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %52 = icmp ne %struct.drm_gem_object* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %123

56:                                               ; preds = %46
  %57 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %58 = call %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object* %57)
  store %struct.nouveau_bo* %58, %struct.nouveau_bo** %15, align 8
  %59 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %60 = call i32 @nouveau_bo_map(%struct.nouveau_bo* %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %119

64:                                               ; preds = %56
  %65 = load %struct.nouveau_drm*, %struct.nouveau_drm** %12, align 8
  %66 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.TYPE_8__* @nv_device(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %70, 17
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  %73 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %74 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %75 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %76 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = call i32 @nv11_cursor_upload(%struct.drm_device* %73, %struct.nouveau_bo* %74, %struct.TYPE_9__* %78)
  br label %88

80:                                               ; preds = %64
  %81 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %82 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %83 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %84 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = call i32 @nv04_cursor_upload(%struct.drm_device* %81, %struct.nouveau_bo* %82, %struct.TYPE_9__* %86)
  br label %88

88:                                               ; preds = %80, %72
  %89 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %90 = call i32 @nouveau_bo_unmap(%struct.nouveau_bo* %89)
  %91 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %92 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %99 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 8
  %101 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %102 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i32 (%struct.nouveau_crtc.1*, i32)*, i32 (%struct.nouveau_crtc.1*, i32)** %103, align 8
  %105 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %106 = bitcast %struct.nouveau_crtc* %105 to %struct.nouveau_crtc.1*
  %107 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %108 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 %104(%struct.nouveau_crtc.1* %106, i32 %110)
  %112 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %113 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32 (%struct.nouveau_crtc.0*, i32)*, i32 (%struct.nouveau_crtc.0*, i32)** %114, align 8
  %116 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %117 = bitcast %struct.nouveau_crtc* %116 to %struct.nouveau_crtc.0*
  %118 = call i32 %115(%struct.nouveau_crtc.0* %117, i32 1)
  br label %119

119:                                              ; preds = %88, %63
  %120 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %121 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %120)
  %122 = load i32, i32* %17, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %119, %53, %43, %29
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object*) #1

declare dso_local i32 @nouveau_bo_map(%struct.nouveau_bo*) #1

declare dso_local %struct.TYPE_8__* @nv_device(i32) #1

declare dso_local i32 @nv11_cursor_upload(%struct.drm_device*, %struct.nouveau_bo*, %struct.TYPE_9__*) #1

declare dso_local i32 @nv04_cursor_upload(%struct.drm_device*, %struct.nouveau_bo*, %struct.TYPE_9__*) #1

declare dso_local i32 @nouveau_bo_unmap(%struct.nouveau_bo*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
