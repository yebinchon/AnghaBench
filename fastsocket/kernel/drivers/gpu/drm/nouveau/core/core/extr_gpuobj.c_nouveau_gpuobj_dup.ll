; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_gpuobj.c_nouveau_gpuobj_dup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_gpuobj.c_nouveau_gpuobj_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_gpuobj = type { i32, i32, i32 }

@nouveau_gpudup_oclass = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_gpuobj_dup(%struct.nouveau_object* %0, %struct.nouveau_gpuobj* %1, %struct.nouveau_gpuobj** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca %struct.nouveau_gpuobj*, align 8
  %7 = alloca %struct.nouveau_gpuobj**, align 8
  %8 = alloca %struct.nouveau_gpuobj*, align 8
  %9 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %5, align 8
  store %struct.nouveau_gpuobj* %1, %struct.nouveau_gpuobj** %6, align 8
  store %struct.nouveau_gpuobj** %2, %struct.nouveau_gpuobj*** %7, align 8
  %10 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %11 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %12 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @nouveau_object_create(%struct.nouveau_object* %10, i32 %13, i32* @nouveau_gpudup_oclass, i32 0, %struct.nouveau_gpuobj** %8)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %16 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %7, align 8
  store %struct.nouveau_gpuobj* %15, %struct.nouveau_gpuobj** %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %37

21:                                               ; preds = %3
  %22 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %6, align 8
  %23 = call i32 @nv_object(%struct.nouveau_gpuobj* %22)
  %24 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %25 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %24, i32 0, i32 2
  %26 = call i32 @nouveau_object_ref(i32 %23, i32* %25)
  %27 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %6, align 8
  %28 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %31 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %6, align 8
  %33 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %36 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %21, %19
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @nouveau_object_create(%struct.nouveau_object*, i32, i32*, i32, %struct.nouveau_gpuobj**) #1

declare dso_local i32 @nouveau_object_ref(i32, i32*) #1

declare dso_local i32 @nv_object(%struct.nouveau_gpuobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
