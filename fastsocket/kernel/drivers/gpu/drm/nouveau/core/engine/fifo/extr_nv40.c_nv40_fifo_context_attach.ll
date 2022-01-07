; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv40.c_nv40_fifo_context_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv40.c_nv40_fifo_context_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv04_fifo_priv = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nv04_fifo_chan = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*)* @nv40_fifo_context_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_fifo_context_attach(%struct.nouveau_object* %0, %struct.nouveau_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_object*, align 8
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca %struct.nv04_fifo_priv*, align 8
  %7 = alloca %struct.nv04_fifo_chan*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %4, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %5, align 8
  %11 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %12 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.nv04_fifo_priv*
  store %struct.nv04_fifo_priv* %15, %struct.nv04_fifo_priv** %6, align 8
  %16 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %17 = bitcast %struct.nouveau_object* %16 to i8*
  %18 = bitcast i8* %17 to %struct.nv04_fifo_chan*
  store %struct.nv04_fifo_chan* %18, %struct.nv04_fifo_chan** %7, align 8
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %20 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @nv_engidx(i64 %21)
  switch i32 %22, label %26 [
    i32 128, label %23
    i32 130, label %24
    i32 129, label %25
  ]

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

24:                                               ; preds = %2
  store i32 13024, i32* %9, align 4
  store i32 56, i32* %10, align 4
  br label %29

25:                                               ; preds = %2
  store i32 13068, i32* %9, align 4
  store i32 84, i32* %10, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %86

29:                                               ; preds = %25, %24
  %30 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %6, align 8
  %31 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %36 = call %struct.TYPE_7__* @nv_gpuobj(%struct.nouveau_object* %35)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 4
  %40 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %41 = call %struct.TYPE_8__* @nv_engctx(%struct.nouveau_object* %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %6, align 8
  %44 = call i32 @nv_mask(%struct.nv04_fifo_priv* %43, i32 9472, i32 1, i32 0)
  %45 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %6, align 8
  %46 = call i32 @nv_rd32(%struct.nv04_fifo_priv* %45, i32 12804)
  %47 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %6, align 8
  %48 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %46, %50
  %52 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %7, align 8
  %53 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %51, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %29
  %58 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %61 = call %struct.TYPE_8__* @nv_engctx(%struct.nouveau_object* %60)
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %58, i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %57, %29
  %66 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %6, align 8
  %67 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %7, align 8
  %70 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %71, %72
  %74 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %75 = call %struct.TYPE_8__* @nv_engctx(%struct.nouveau_object* %74)
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @nv_wo32(i32 %68, i32 %73, i32 %77)
  %79 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %6, align 8
  %80 = call i32 @nv_mask(%struct.nv04_fifo_priv* %79, i32 9472, i32 1, i32 1)
  %81 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %6, align 8
  %82 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %65, %26, %23
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @nv_engidx(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.TYPE_7__* @nv_gpuobj(%struct.nouveau_object*) #1

declare dso_local %struct.TYPE_8__* @nv_engctx(%struct.nouveau_object*) #1

declare dso_local i32 @nv_mask(%struct.nv04_fifo_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv04_fifo_priv*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv04_fifo_priv*, i32, i32) #1

declare dso_local i32 @nv_wo32(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
