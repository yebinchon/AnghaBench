; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_gpuobj.c_nouveau_gpuobj_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_gpuobj.c_nouveau_gpuobj_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_gpuobj = type { i32 }
%struct.nouveau_vma = type { i32 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*, %struct.nouveau_mem*, i32, %struct.nouveau_vma*)* }
%struct.nouveau_mem = type { i32 }
%struct.nouveau_instobj = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NV_MEMOBJ_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_gpuobj_map(%struct.nouveau_gpuobj* %0, i32 %1, %struct.nouveau_vma* %2) #0 {
  %4 = alloca %struct.nouveau_gpuobj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_vma*, align 8
  %7 = alloca %struct.nouveau_bar*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_instobj*, align 8
  %10 = alloca %struct.nouveau_mem**, align 8
  store %struct.nouveau_gpuobj* %0, %struct.nouveau_gpuobj** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nouveau_vma* %2, %struct.nouveau_vma** %6, align 8
  %11 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %12 = call %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_gpuobj* %11)
  store %struct.nouveau_bar* %12, %struct.nouveau_bar** %7, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.nouveau_bar*, %struct.nouveau_bar** %7, align 8
  %16 = icmp ne %struct.nouveau_bar* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %3
  %18 = load %struct.nouveau_bar*, %struct.nouveau_bar** %7, align 8
  %19 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %18, i32 0, i32 0
  %20 = load i32 (%struct.nouveau_bar*, %struct.nouveau_mem*, i32, %struct.nouveau_vma*)*, i32 (%struct.nouveau_bar*, %struct.nouveau_mem*, i32, %struct.nouveau_vma*)** %19, align 8
  %21 = icmp ne i32 (%struct.nouveau_bar*, %struct.nouveau_mem*, i32, %struct.nouveau_vma*)* %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %24 = call i32 @nv_object(%struct.nouveau_gpuobj* %23)
  %25 = load i32, i32* @NV_MEMOBJ_CLASS, align 4
  %26 = call i64 @nv_pclass(i32 %24, i32 %25)
  %27 = inttoptr i64 %26 to i8*
  %28 = bitcast i8* %27 to %struct.nouveau_instobj*
  store %struct.nouveau_instobj* %28, %struct.nouveau_instobj** %9, align 8
  %29 = load %struct.nouveau_instobj*, %struct.nouveau_instobj** %9, align 8
  %30 = getelementptr inbounds %struct.nouveau_instobj, %struct.nouveau_instobj* %29, i64 1
  %31 = bitcast %struct.nouveau_instobj* %30 to i8*
  %32 = bitcast i8* %31 to %struct.nouveau_mem**
  store %struct.nouveau_mem** %32, %struct.nouveau_mem*** %10, align 8
  %33 = load %struct.nouveau_bar*, %struct.nouveau_bar** %7, align 8
  %34 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %33, i32 0, i32 0
  %35 = load i32 (%struct.nouveau_bar*, %struct.nouveau_mem*, i32, %struct.nouveau_vma*)*, i32 (%struct.nouveau_bar*, %struct.nouveau_mem*, i32, %struct.nouveau_vma*)** %34, align 8
  %36 = load %struct.nouveau_bar*, %struct.nouveau_bar** %7, align 8
  %37 = load %struct.nouveau_mem**, %struct.nouveau_mem*** %10, align 8
  %38 = load %struct.nouveau_mem*, %struct.nouveau_mem** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.nouveau_vma*, %struct.nouveau_vma** %6, align 8
  %41 = call i32 %35(%struct.nouveau_bar* %36, %struct.nouveau_mem* %38, i32 %39, %struct.nouveau_vma* %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %22, %17, %3
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_gpuobj*) #1

declare dso_local i64 @nv_pclass(i32, i32) #1

declare dso_local i32 @nv_object(%struct.nouveau_gpuobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
