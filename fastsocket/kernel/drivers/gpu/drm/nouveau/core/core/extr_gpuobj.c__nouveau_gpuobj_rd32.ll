; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_gpuobj.c__nouveau_gpuobj_rd32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_gpuobj.c__nouveau_gpuobj_rd32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_gpuobj = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.nouveau_ofuncs = type { i32 (i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_nouveau_gpuobj_rd32(%struct.nouveau_object* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_gpuobj*, align 8
  %6 = alloca %struct.nouveau_ofuncs*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %8 = call %struct.nouveau_gpuobj* @nv_gpuobj(%struct.nouveau_object* %7)
  store %struct.nouveau_gpuobj* %8, %struct.nouveau_gpuobj** %5, align 8
  %9 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %5, align 8
  %10 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.nouveau_ofuncs* @nv_ofuncs(i32 %11)
  store %struct.nouveau_ofuncs* %12, %struct.nouveau_ofuncs** %6, align 8
  %13 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %5, align 8
  %14 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %5, align 8
  %19 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %17, %2
  %28 = load %struct.nouveau_ofuncs*, %struct.nouveau_ofuncs** %6, align 8
  %29 = getelementptr inbounds %struct.nouveau_ofuncs, %struct.nouveau_ofuncs* %28, i32 0, i32 0
  %30 = load i32 (i32, i32)*, i32 (i32, i32)** %29, align 8
  %31 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %5, align 8
  %32 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 %30(i32 %33, i32 %34)
  ret i32 %35
}

declare dso_local %struct.nouveau_gpuobj* @nv_gpuobj(%struct.nouveau_object*) #1

declare dso_local %struct.nouveau_ofuncs* @nv_ofuncs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
