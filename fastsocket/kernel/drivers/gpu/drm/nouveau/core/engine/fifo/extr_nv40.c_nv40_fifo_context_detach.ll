; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv40.c_nv40_fifo_context_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv40.c_nv40_fifo_context_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv04_fifo_priv = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nv04_fifo_chan = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32, %struct.nouveau_object*)* @nv40_fifo_context_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_fifo_context_detach(%struct.nouveau_object* %0, i32 %1, %struct.nouveau_object* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_object*, align 8
  %8 = alloca %struct.nv04_fifo_priv*, align 8
  %9 = alloca %struct.nv04_fifo_chan*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nouveau_object* %2, %struct.nouveau_object** %7, align 8
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
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %22 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @nv_engidx(i64 %23)
  switch i32 %24, label %28 [
    i32 128, label %25
    i32 130, label %26
    i32 129, label %27
  ]

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %72

26:                                               ; preds = %3
  store i32 13024, i32* %11, align 4
  store i32 56, i32* %12, align 4
  br label %31

27:                                               ; preds = %3
  store i32 13068, i32* %11, align 4
  store i32 84, i32* %12, align 4
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %72

31:                                               ; preds = %27, %26
  %32 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %8, align 8
  %33 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %8, align 8
  %38 = call i32 @nv_mask(%struct.nv04_fifo_priv* %37, i32 9472, i32 1, i32 0)
  %39 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %8, align 8
  %40 = call i32 @nv_rd32(%struct.nv04_fifo_priv* %39, i32 12804)
  %41 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %8, align 8
  %42 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %40, %44
  %46 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %9, align 8
  %47 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %45, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %31
  %52 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %52, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %51, %31
  %56 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %8, align 8
  %57 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %9, align 8
  %60 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %61, %62
  %64 = call i32 @nv_wo32(i32 %58, i32 %63, i32 0)
  %65 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %8, align 8
  %66 = call i32 @nv_mask(%struct.nv04_fifo_priv* %65, i32 9472, i32 1, i32 1)
  %67 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %8, align 8
  %68 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %55, %28, %25
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @nv_engidx(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

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
