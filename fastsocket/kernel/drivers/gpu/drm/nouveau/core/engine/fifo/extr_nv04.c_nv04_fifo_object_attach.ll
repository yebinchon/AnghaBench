; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv04.c_nv04_fifo_object_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv04.c_nv04_fifo_object_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv04_fifo_priv = type { i32 }
%struct.nv04_fifo_chan = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@NV_GPUOBJ_CLASS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_fifo_object_attach(%struct.nouveau_object* %0, %struct.nouveau_object* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca %struct.nouveau_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nv04_fifo_priv*, align 8
  %9 = alloca %struct.nv04_fifo_chan*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %5, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %14 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.nv04_fifo_priv*
  store %struct.nv04_fifo_priv* %17, %struct.nv04_fifo_priv** %8, align 8
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %19 = bitcast %struct.nouveau_object* %18 to i8*
  %20 = bitcast i8* %19 to %struct.nv04_fifo_chan*
  store %struct.nv04_fifo_chan* %20, %struct.nv04_fifo_chan** %9, align 8
  %21 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %9, align 8
  %22 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %26 = load i32, i32* @NV_GPUOBJ_CLASS, align 4
  %27 = call i64 @nv_iclass(%struct.nouveau_object* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %31 = call %struct.TYPE_6__* @nv_gpuobj(%struct.nouveau_object* %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 4
  store i32 %34, i32* %10, align 4
  br label %36

35:                                               ; preds = %3
  store i32 4, i32* %10, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %38 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @nv_engidx(i64 %39)
  switch i32 %40, label %49 [
    i32 131, label %41
    i32 128, label %41
    i32 130, label %43
    i32 129, label %46
  ]

41:                                               ; preds = %36, %36
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %10, align 4
  br label %52

43:                                               ; preds = %36
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, 65536
  store i32 %45, i32* %10, align 4
  br label %52

46:                                               ; preds = %36
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, 131072
  store i32 %48, i32* %10, align 4
  br label %52

49:                                               ; preds = %36
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %75

52:                                               ; preds = %46, %43, %41
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, -2147483648
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = shl i32 %55, 24
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %8, align 8
  %60 = call %struct.TYPE_5__* @nv_subdev(%struct.nv04_fifo_priv* %59)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = call i32 @mutex_lock(i32* %61)
  %63 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %8, align 8
  %64 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @nouveau_ramht_insert(i32 %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %8, align 8
  %71 = call %struct.TYPE_5__* @nv_subdev(%struct.nv04_fifo_priv* %70)
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %52, %49
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i64 @nv_iclass(%struct.nouveau_object*, i32) #1

declare dso_local %struct.TYPE_6__* @nv_gpuobj(%struct.nouveau_object*) #1

declare dso_local i32 @nv_engidx(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_5__* @nv_subdev(%struct.nv04_fifo_priv*) #1

declare dso_local i32 @nouveau_ramht_insert(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
