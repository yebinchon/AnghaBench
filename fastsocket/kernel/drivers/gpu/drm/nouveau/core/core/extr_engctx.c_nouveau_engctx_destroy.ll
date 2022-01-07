; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_engctx.c_nouveau_engctx_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_engctx.c_nouveau_engctx_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_engctx = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.nouveau_object = type { i32 }
%struct.nouveau_engine = type { i32 }
%struct.nouveau_client = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { %struct.nouveau_object* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_engctx_destroy(%struct.nouveau_engctx* %0) #0 {
  %2 = alloca %struct.nouveau_engctx*, align 8
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nouveau_engine*, align 8
  %5 = alloca %struct.nouveau_client*, align 8
  %6 = alloca i64, align 8
  store %struct.nouveau_engctx* %0, %struct.nouveau_engctx** %2, align 8
  %7 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %2, align 8
  %8 = call %struct.TYPE_5__* @nv_object(%struct.nouveau_engctx* %7)
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_object* %10, %struct.nouveau_object** %3, align 8
  %11 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %12 = call %struct.nouveau_engine* @nv_engine(%struct.nouveau_object* %11)
  store %struct.nouveau_engine* %12, %struct.nouveau_engine** %4, align 8
  %13 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %2, align 8
  %14 = call %struct.nouveau_client* @nouveau_client(%struct.nouveau_engctx* %13)
  store %struct.nouveau_client* %14, %struct.nouveau_client** %5, align 8
  %15 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %2, align 8
  %16 = getelementptr inbounds %struct.nouveau_engctx, %struct.nouveau_engctx* %15, i32 0, i32 2
  %17 = call i32 @nouveau_gpuobj_unmap(i32* %16)
  %18 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %19 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %2, align 8
  %23 = getelementptr inbounds %struct.nouveau_engctx, %struct.nouveau_engctx* %22, i32 0, i32 1
  %24 = call i32 @list_del(i32* %23)
  %25 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %26 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.nouveau_client*, %struct.nouveau_client** %5, align 8
  %30 = getelementptr inbounds %struct.nouveau_client, %struct.nouveau_client* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %1
  %34 = load %struct.nouveau_client*, %struct.nouveau_client** %5, align 8
  %35 = getelementptr inbounds %struct.nouveau_client, %struct.nouveau_client* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %40 = call i64 @nv_engidx(%struct.nouveau_object* %39)
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @atomic_dec(i32* %41)
  br label %43

43:                                               ; preds = %33, %1
  %44 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %2, align 8
  %45 = getelementptr inbounds %struct.nouveau_engctx, %struct.nouveau_engctx* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %2, align 8
  %51 = getelementptr inbounds %struct.nouveau_engctx, %struct.nouveau_engctx* %50, i32 0, i32 0
  %52 = call i32 @nouveau_gpuobj_destroy(%struct.TYPE_6__* %51)
  br label %58

53:                                               ; preds = %43
  %54 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %2, align 8
  %55 = getelementptr inbounds %struct.nouveau_engctx, %struct.nouveau_engctx* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @nouveau_object_destroy(i32* %56)
  br label %58

58:                                               ; preds = %53, %49
  ret void
}

declare dso_local %struct.TYPE_5__* @nv_object(%struct.nouveau_engctx*) #1

declare dso_local %struct.nouveau_engine* @nv_engine(%struct.nouveau_object*) #1

declare dso_local %struct.nouveau_client* @nouveau_client(%struct.nouveau_engctx*) #1

declare dso_local i32 @nouveau_gpuobj_unmap(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @nv_engidx(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_gpuobj_destroy(%struct.TYPE_6__*) #1

declare dso_local i32 @nouveau_object_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
