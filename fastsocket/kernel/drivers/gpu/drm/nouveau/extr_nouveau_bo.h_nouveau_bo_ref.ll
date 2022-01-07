; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.h_nouveau_bo_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.h_nouveau_bo_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { %struct.ttm_buffer_object }
%struct.ttm_buffer_object = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_bo*, %struct.nouveau_bo**)* @nouveau_bo_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_bo_ref(%struct.nouveau_bo* %0, %struct.nouveau_bo** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_bo*, align 8
  %5 = alloca %struct.nouveau_bo**, align 8
  %6 = alloca %struct.nouveau_bo*, align 8
  %7 = alloca %struct.ttm_buffer_object*, align 8
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %4, align 8
  store %struct.nouveau_bo** %1, %struct.nouveau_bo*** %5, align 8
  %8 = load %struct.nouveau_bo**, %struct.nouveau_bo*** %5, align 8
  %9 = icmp ne %struct.nouveau_bo** %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.nouveau_bo**, %struct.nouveau_bo*** %5, align 8
  %15 = load %struct.nouveau_bo*, %struct.nouveau_bo** %14, align 8
  store %struct.nouveau_bo* %15, %struct.nouveau_bo** %6, align 8
  %16 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %17 = icmp ne %struct.nouveau_bo* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %20 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %19, i32 0, i32 0
  %21 = call i32 @ttm_bo_reference(%struct.ttm_buffer_object* %20)
  %22 = call %struct.nouveau_bo* @nouveau_bo(i32 %21)
  br label %24

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23, %18
  %25 = phi %struct.nouveau_bo* [ %22, %18 ], [ null, %23 ]
  %26 = load %struct.nouveau_bo**, %struct.nouveau_bo*** %5, align 8
  store %struct.nouveau_bo* %25, %struct.nouveau_bo** %26, align 8
  %27 = load %struct.nouveau_bo*, %struct.nouveau_bo** %6, align 8
  %28 = icmp ne %struct.nouveau_bo* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.nouveau_bo*, %struct.nouveau_bo** %6, align 8
  %31 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %30, i32 0, i32 0
  store %struct.ttm_buffer_object* %31, %struct.ttm_buffer_object** %7, align 8
  %32 = call i32 @ttm_bo_unref(%struct.ttm_buffer_object** %7)
  br label %33

33:                                               ; preds = %29, %24
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %10
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.nouveau_bo* @nouveau_bo(i32) #1

declare dso_local i32 @ttm_bo_reference(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_unref(%struct.ttm_buffer_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
