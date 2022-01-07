; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_validate_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_validate_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32 }
%struct.nouveau_bo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.nouveau_fence = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, %struct.nouveau_bo*)* @validate_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_sync(%struct.nouveau_channel* %0, %struct.nouveau_bo* %1) #0 {
  %3 = alloca %struct.nouveau_channel*, align 8
  %4 = alloca %struct.nouveau_bo*, align 8
  %5 = alloca %struct.nouveau_fence*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %3, align 8
  store %struct.nouveau_bo* %1, %struct.nouveau_bo** %4, align 8
  store %struct.nouveau_fence* null, %struct.nouveau_fence** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %8 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %14 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %20 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.nouveau_fence* @nouveau_fence_ref(i64 %22)
  store %struct.nouveau_fence* %23, %struct.nouveau_fence** %5, align 8
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %26 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.nouveau_fence*, %struct.nouveau_fence** %5, align 8
  %32 = icmp ne %struct.nouveau_fence* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.nouveau_fence*, %struct.nouveau_fence** %5, align 8
  %35 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %36 = call i32 @nouveau_fence_sync(%struct.nouveau_fence* %34, %struct.nouveau_channel* %35)
  store i32 %36, i32* %6, align 4
  %37 = call i32 @nouveau_fence_unref(%struct.nouveau_fence** %5)
  br label %38

38:                                               ; preds = %33, %24
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nouveau_fence* @nouveau_fence_ref(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nouveau_fence_sync(%struct.nouveau_fence*, %struct.nouveau_channel*) #1

declare dso_local i32 @nouveau_fence_unref(%struct.nouveau_fence**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
