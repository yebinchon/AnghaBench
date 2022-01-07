; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_ioctl_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_ioctl_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_7__*, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nouveau_cli = type { i32 }
%struct.nouveau_fb = type { i32 (%struct.nouveau_fb*, i32)* }
%struct.drm_nouveau_gem_new = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.nouveau_bo = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"bad page flags: 0x%08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_gem_ioctl_new(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca %struct.nouveau_cli*, align 8
  %10 = alloca %struct.nouveau_fb*, align 8
  %11 = alloca %struct.drm_nouveau_gem_new*, align 8
  %12 = alloca %struct.nouveau_bo*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %14)
  store %struct.nouveau_drm* %15, %struct.nouveau_drm** %8, align 8
  %16 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %17 = call %struct.nouveau_cli* @nouveau_cli(%struct.drm_file* %16)
  store %struct.nouveau_cli* %17, %struct.nouveau_cli** %9, align 8
  %18 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %19 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.nouveau_fb* @nouveau_fb(i32 %20)
  store %struct.nouveau_fb* %21, %struct.nouveau_fb** %10, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.drm_nouveau_gem_new*
  store %struct.drm_nouveau_gem_new* %23, %struct.drm_nouveau_gem_new** %11, align 8
  store %struct.nouveau_bo* null, %struct.nouveau_bo** %12, align 8
  store i32 0, i32* %13, align 4
  %24 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %25 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %30 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  %33 = load %struct.nouveau_fb*, %struct.nouveau_fb** %10, align 8
  %34 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %33, i32 0, i32 0
  %35 = load i32 (%struct.nouveau_fb*, i32)*, i32 (%struct.nouveau_fb*, i32)** %34, align 8
  %36 = load %struct.nouveau_fb*, %struct.nouveau_fb** %10, align 8
  %37 = load %struct.drm_nouveau_gem_new*, %struct.drm_nouveau_gem_new** %11, align 8
  %38 = getelementptr inbounds %struct.drm_nouveau_gem_new, %struct.drm_nouveau_gem_new* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 %35(%struct.nouveau_fb* %36, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %3
  %44 = load %struct.nouveau_cli*, %struct.nouveau_cli** %9, align 8
  %45 = load %struct.drm_nouveau_gem_new*, %struct.drm_nouveau_gem_new** %11, align 8
  %46 = getelementptr inbounds %struct.drm_nouveau_gem_new, %struct.drm_nouveau_gem_new* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @NV_ERROR(%struct.nouveau_cli* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %113

52:                                               ; preds = %3
  %53 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %54 = load %struct.drm_nouveau_gem_new*, %struct.drm_nouveau_gem_new** %11, align 8
  %55 = getelementptr inbounds %struct.drm_nouveau_gem_new, %struct.drm_nouveau_gem_new* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_nouveau_gem_new*, %struct.drm_nouveau_gem_new** %11, align 8
  %59 = getelementptr inbounds %struct.drm_nouveau_gem_new, %struct.drm_nouveau_gem_new* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.drm_nouveau_gem_new*, %struct.drm_nouveau_gem_new** %11, align 8
  %62 = getelementptr inbounds %struct.drm_nouveau_gem_new, %struct.drm_nouveau_gem_new* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.drm_nouveau_gem_new*, %struct.drm_nouveau_gem_new** %11, align 8
  %66 = getelementptr inbounds %struct.drm_nouveau_gem_new, %struct.drm_nouveau_gem_new* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.drm_nouveau_gem_new*, %struct.drm_nouveau_gem_new** %11, align 8
  %70 = getelementptr inbounds %struct.drm_nouveau_gem_new, %struct.drm_nouveau_gem_new* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @nouveau_gem_new(%struct.drm_device* %53, i32 %57, i32 %60, i32 %64, i32 %68, i32 %72, %struct.nouveau_bo** %12)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %52
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %4, align 4
  br label %113

78:                                               ; preds = %52
  %79 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %80 = load %struct.nouveau_bo*, %struct.nouveau_bo** %12, align 8
  %81 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.drm_nouveau_gem_new*, %struct.drm_nouveau_gem_new** %11, align 8
  %84 = getelementptr inbounds %struct.drm_nouveau_gem_new, %struct.drm_nouveau_gem_new* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = call i32 @drm_gem_handle_create(%struct.drm_file* %79, i32 %82, i32* %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %78
  %90 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %91 = load %struct.nouveau_bo*, %struct.nouveau_bo** %12, align 8
  %92 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.drm_nouveau_gem_new*, %struct.drm_nouveau_gem_new** %11, align 8
  %95 = getelementptr inbounds %struct.drm_nouveau_gem_new, %struct.drm_nouveau_gem_new* %94, i32 0, i32 0
  %96 = call i32 @nouveau_gem_info(%struct.drm_file* %90, i32 %93, %struct.TYPE_8__* %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %89
  %100 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %101 = load %struct.drm_nouveau_gem_new*, %struct.drm_nouveau_gem_new** %11, align 8
  %102 = getelementptr inbounds %struct.drm_nouveau_gem_new, %struct.drm_nouveau_gem_new* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @drm_gem_handle_delete(%struct.drm_file* %100, i32 %104)
  br label %106

106:                                              ; preds = %99, %89
  br label %107

107:                                              ; preds = %106, %78
  %108 = load %struct.nouveau_bo*, %struct.nouveau_bo** %12, align 8
  %109 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @drm_gem_object_unreference_unlocked(i32 %110)
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %107, %76, %43
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_cli* @nouveau_cli(%struct.drm_file*) #1

declare dso_local %struct.nouveau_fb* @nouveau_fb(i32) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_cli*, i8*, i32) #1

declare dso_local i32 @nouveau_gem_new(%struct.drm_device*, i32, i32, i32, i32, i32, %struct.nouveau_bo**) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, i32, i32*) #1

declare dso_local i32 @nouveau_gem_info(%struct.drm_file*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @drm_gem_handle_delete(%struct.drm_file*, i32) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
