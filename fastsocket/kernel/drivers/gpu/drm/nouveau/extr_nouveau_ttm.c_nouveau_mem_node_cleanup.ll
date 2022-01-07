; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_mem_node_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_mem_node_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mem = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_mem*)* @nouveau_mem_node_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_mem_node_cleanup(%struct.nouveau_mem* %0) #0 {
  %2 = alloca %struct.nouveau_mem*, align 8
  store %struct.nouveau_mem* %0, %struct.nouveau_mem** %2, align 8
  %3 = load %struct.nouveau_mem*, %struct.nouveau_mem** %2, align 8
  %4 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.nouveau_mem*, %struct.nouveau_mem** %2, align 8
  %12 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 0
  %15 = call i32 @nouveau_vm_unmap(%struct.TYPE_3__* %14)
  %16 = load %struct.nouveau_mem*, %struct.nouveau_mem** %2, align 8
  %17 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 0
  %20 = call i32 @nouveau_vm_put(%struct.TYPE_3__* %19)
  br label %21

21:                                               ; preds = %10, %1
  %22 = load %struct.nouveau_mem*, %struct.nouveau_mem** %2, align 8
  %23 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load %struct.nouveau_mem*, %struct.nouveau_mem** %2, align 8
  %31 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 1
  %34 = call i32 @nouveau_vm_unmap(%struct.TYPE_3__* %33)
  %35 = load %struct.nouveau_mem*, %struct.nouveau_mem** %2, align 8
  %36 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 1
  %39 = call i32 @nouveau_vm_put(%struct.TYPE_3__* %38)
  br label %40

40:                                               ; preds = %29, %21
  ret void
}

declare dso_local i32 @nouveau_vm_unmap(%struct.TYPE_3__*) #1

declare dso_local i32 @nouveau_vm_put(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
