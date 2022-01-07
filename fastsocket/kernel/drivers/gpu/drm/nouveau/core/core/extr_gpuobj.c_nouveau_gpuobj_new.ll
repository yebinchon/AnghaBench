; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_gpuobj.c_nouveau_gpuobj_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_gpuobj.c_nouveau_gpuobj_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { %struct.nouveau_object* }
%struct.nouveau_gpuobj = type { i32 }
%struct.nouveau_gpuobj_class = type { i32, i32, i32, %struct.nouveau_object* }

@NV_SUBDEV_CLASS = common dso_local global i32 0, align 4
@_nouveau_gpuobj_oclass = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_gpuobj_new(%struct.nouveau_object* %0, %struct.nouveau_object* %1, i32 %2, i32 %3, i32 %4, %struct.nouveau_gpuobj** %5) #0 {
  %7 = alloca %struct.nouveau_object*, align 8
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nouveau_gpuobj**, align 8
  %13 = alloca %struct.nouveau_object*, align 8
  %14 = alloca %struct.nouveau_gpuobj_class, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %7, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.nouveau_gpuobj** %5, %struct.nouveau_gpuobj*** %12, align 8
  %15 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  store %struct.nouveau_object* %15, %struct.nouveau_object** %13, align 8
  %16 = getelementptr inbounds %struct.nouveau_gpuobj_class, %struct.nouveau_gpuobj_class* %14, i32 0, i32 0
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.nouveau_gpuobj_class, %struct.nouveau_gpuobj_class* %14, i32 0, i32 1
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.nouveau_gpuobj_class, %struct.nouveau_gpuobj_class* %14, i32 0, i32 2
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.nouveau_gpuobj_class, %struct.nouveau_gpuobj_class* %14, i32 0, i32 3
  %23 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %23, %struct.nouveau_object** %22, align 8
  %24 = load %struct.nouveau_object*, %struct.nouveau_object** %13, align 8
  %25 = load i32, i32* @NV_SUBDEV_CLASS, align 4
  %26 = call i32 @nv_iclass(%struct.nouveau_object* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %6
  %29 = load %struct.nouveau_object*, %struct.nouveau_object** %13, align 8
  %30 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %29, i32 0, i32 0
  %31 = load %struct.nouveau_object*, %struct.nouveau_object** %30, align 8
  store %struct.nouveau_object* %31, %struct.nouveau_object** %13, align 8
  br label %32

32:                                               ; preds = %28, %6
  %33 = load %struct.nouveau_object*, %struct.nouveau_object** %13, align 8
  %34 = icmp eq %struct.nouveau_object* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %38 = load %struct.nouveau_object*, %struct.nouveau_object** %13, align 8
  %39 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %12, align 8
  %40 = bitcast %struct.nouveau_gpuobj** %39 to %struct.nouveau_object**
  %41 = call i32 @nouveau_object_ctor(%struct.nouveau_object* %37, %struct.nouveau_object* %38, i32* @_nouveau_gpuobj_oclass, %struct.nouveau_gpuobj_class* %14, i32 24, %struct.nouveau_object** %40)
  ret i32 %41
}

declare dso_local i32 @nv_iclass(%struct.nouveau_object*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @nouveau_object_ctor(%struct.nouveau_object*, %struct.nouveau_object*, i32*, %struct.nouveau_gpuobj_class*, i32, %struct.nouveau_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
