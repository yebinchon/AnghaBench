; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_prime.c_drm_gem_map_dma_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_prime.c_drm_gem_map_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32, i32 }
%struct.dma_buf_attachment = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_gem_object* }
%struct.drm_gem_object = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.sg_table* (%struct.drm_gem_object*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sg_table* (%struct.dma_buf_attachment*, i32)* @drm_gem_map_dma_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sg_table* @drm_gem_map_dma_buf(%struct.dma_buf_attachment* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_buf_attachment*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca %struct.sg_table*, align 8
  store %struct.dma_buf_attachment* %0, %struct.dma_buf_attachment** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %3, align 8
  %8 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  store %struct.drm_gem_object* %11, %struct.drm_gem_object** %5, align 8
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %13 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %18 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.sg_table* (%struct.drm_gem_object*)*, %struct.sg_table* (%struct.drm_gem_object*)** %22, align 8
  %24 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %25 = call %struct.sg_table* %23(%struct.drm_gem_object* %24)
  store %struct.sg_table* %25, %struct.sg_table** %6, align 8
  %26 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %27 = call i32 @IS_ERR_OR_NULL(%struct.sg_table* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %2
  %30 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %3, align 8
  %31 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %34 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %37 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @dma_map_sg(i32 %32, i32 %35, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %29, %2
  %42 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %43 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  ret %struct.sg_table* %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.sg_table*) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
