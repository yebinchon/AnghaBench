; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_ramht.c_nouveau_ramht_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_ramht.c_nouveau_ramht_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { %struct.nouveau_object* }
%struct.nouveau_ramht = type { i32 }
%struct.TYPE_2__ = type { i32 }

@nouveau_ramht_oclass = common dso_local global i32 0, align 4
@NVOBJ_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_ramht_new(%struct.nouveau_object* %0, %struct.nouveau_object* %1, i32 %2, i32 %3, %struct.nouveau_ramht** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_object*, align 8
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nouveau_ramht**, align 8
  %12 = alloca %struct.nouveau_ramht*, align 8
  %13 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %7, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nouveau_ramht** %4, %struct.nouveau_ramht*** %11, align 8
  %14 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %15 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %16 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %15, i32 0, i32 0
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %18 = icmp ne %struct.nouveau_object* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %21 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %20, i32 0, i32 0
  %22 = load %struct.nouveau_object*, %struct.nouveau_object** %21, align 8
  br label %25

23:                                               ; preds = %5
  %24 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi %struct.nouveau_object* [ %22, %19 ], [ %24, %23 ]
  %27 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @NVOBJ_FLAG_ZERO_ALLOC, align 4
  %31 = call i32 @nouveau_gpuobj_create(%struct.nouveau_object* %14, %struct.nouveau_object* %26, i32* @nouveau_ramht_oclass, i32 0, %struct.nouveau_object* %27, i32 %28, i32 %29, i32 %30, %struct.nouveau_ramht** %12)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.nouveau_ramht*, %struct.nouveau_ramht** %12, align 8
  %33 = load %struct.nouveau_ramht**, %struct.nouveau_ramht*** %11, align 8
  store %struct.nouveau_ramht* %32, %struct.nouveau_ramht** %33, align 8
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %6, align 4
  br label %47

38:                                               ; preds = %25
  %39 = load %struct.nouveau_ramht*, %struct.nouveau_ramht** %12, align 8
  %40 = call %struct.TYPE_2__* @nv_gpuobj(%struct.nouveau_ramht* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 3
  %44 = call i32 @log2i(i32 %43)
  %45 = load %struct.nouveau_ramht*, %struct.nouveau_ramht** %12, align 8
  %46 = getelementptr inbounds %struct.nouveau_ramht, %struct.nouveau_ramht* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %38, %36
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @nouveau_gpuobj_create(%struct.nouveau_object*, %struct.nouveau_object*, i32*, i32, %struct.nouveau_object*, i32, i32, i32, %struct.nouveau_ramht**) #1

declare dso_local i32 @log2i(i32) #1

declare dso_local %struct.TYPE_2__* @nv_gpuobj(%struct.nouveau_ramht*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
