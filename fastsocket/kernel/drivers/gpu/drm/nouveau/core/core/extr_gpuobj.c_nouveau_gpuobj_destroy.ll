; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_gpuobj.c_nouveau_gpuobj_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_gpuobj.c_nouveau_gpuobj_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_gpuobj = type { i32, i32, i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@NVOBJ_FLAG_ZERO_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_gpuobj_destroy(%struct.nouveau_gpuobj* %0) #0 {
  %2 = alloca %struct.nouveau_gpuobj*, align 8
  %3 = alloca i32, align 4
  store %struct.nouveau_gpuobj* %0, %struct.nouveau_gpuobj** %2, align 8
  %4 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %2, align 8
  %5 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @NVOBJ_FLAG_ZERO_FREE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %21, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %2, align 8
  %14 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %18, i32 %19, i32 0)
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 4
  store i32 %23, i32* %3, align 4
  br label %11

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %2, align 8
  %27 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %2, align 8
  %32 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.TYPE_3__* @nv_gpuobj(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %2, align 8
  %37 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %36, i32 0, i32 4
  %38 = call i32 @nouveau_mm_free(i32* %35, i64* %37)
  br label %39

39:                                               ; preds = %30, %25
  %40 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %2, align 8
  %41 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %2, align 8
  %47 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %46, i32 0, i32 3
  %48 = call i32 @nouveau_mm_fini(%struct.TYPE_4__* %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %2, align 8
  %51 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %50, i32 0, i32 2
  %52 = call i32 @nouveau_object_destroy(i32* %51)
  ret void
}

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

declare dso_local i32 @nouveau_mm_free(i32*, i64*) #1

declare dso_local %struct.TYPE_3__* @nv_gpuobj(i32) #1

declare dso_local i32 @nouveau_mm_fini(%struct.TYPE_4__*) #1

declare dso_local i32 @nouveau_object_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
