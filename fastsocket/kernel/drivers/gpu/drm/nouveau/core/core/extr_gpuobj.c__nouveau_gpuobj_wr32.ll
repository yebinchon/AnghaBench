; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_gpuobj.c__nouveau_gpuobj_wr32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_gpuobj.c__nouveau_gpuobj_wr32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_gpuobj = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.nouveau_ofuncs = type { i32 (i32, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_nouveau_gpuobj_wr32(%struct.nouveau_object* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_gpuobj*, align 8
  %8 = alloca %struct.nouveau_ofuncs*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %10 = call %struct.nouveau_gpuobj* @nv_gpuobj(%struct.nouveau_object* %9)
  store %struct.nouveau_gpuobj* %10, %struct.nouveau_gpuobj** %7, align 8
  %11 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %7, align 8
  %12 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.nouveau_ofuncs* @nv_ofuncs(i32 %13)
  store %struct.nouveau_ofuncs* %14, %struct.nouveau_ofuncs** %8, align 8
  %15 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %7, align 8
  %16 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %7, align 8
  %21 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %19, %3
  %30 = load %struct.nouveau_ofuncs*, %struct.nouveau_ofuncs** %8, align 8
  %31 = getelementptr inbounds %struct.nouveau_ofuncs, %struct.nouveau_ofuncs* %30, i32 0, i32 0
  %32 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %31, align 8
  %33 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %7, align 8
  %34 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 %32(i32 %35, i32 %36, i32 %37)
  ret void
}

declare dso_local %struct.nouveau_gpuobj* @nv_gpuobj(%struct.nouveau_object*) #1

declare dso_local %struct.nouveau_ofuncs* @nv_ofuncs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
