; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv50.c_nv50_fifo_playlist_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv50.c_nv50_fifo_playlist_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_fifo_priv = type { i64, %struct.TYPE_2__, %struct.nouveau_gpuobj** }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nouveau_gpuobj = type { i32 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_fifo_playlist_update(%struct.nv50_fifo_priv* %0) #0 {
  %2 = alloca %struct.nv50_fifo_priv*, align 8
  %3 = alloca %struct.nouveau_bar*, align 8
  %4 = alloca %struct.nouveau_gpuobj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nv50_fifo_priv* %0, %struct.nv50_fifo_priv** %2, align 8
  %7 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %2, align 8
  %8 = call %struct.nouveau_bar* @nouveau_bar(%struct.nv50_fifo_priv* %7)
  store %struct.nouveau_bar* %8, %struct.nouveau_bar** %3, align 8
  %9 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %2, align 8
  %10 = getelementptr inbounds %struct.nv50_fifo_priv, %struct.nv50_fifo_priv* %9, i32 0, i32 2
  %11 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %10, align 8
  %12 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %2, align 8
  %13 = getelementptr inbounds %struct.nv50_fifo_priv, %struct.nv50_fifo_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %11, i64 %14
  %16 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %15, align 8
  store %struct.nouveau_gpuobj* %16, %struct.nouveau_gpuobj** %4, align 8
  %17 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %2, align 8
  %18 = getelementptr inbounds %struct.nv50_fifo_priv, %struct.nv50_fifo_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %2, align 8
  %25 = getelementptr inbounds %struct.nv50_fifo_priv, %struct.nv50_fifo_priv* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %2, align 8
  %27 = getelementptr inbounds %struct.nv50_fifo_priv, %struct.nv50_fifo_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %53, %1
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %2, align 8
  %33 = getelementptr inbounds %struct.nv50_fifo_priv, %struct.nv50_fifo_priv* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %30
  %38 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %2, align 8
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %39, 4
  %41 = add nsw i32 9728, %40
  %42 = call i32 @nv_rd32(%struct.nv50_fifo_priv* %38, i32 %41)
  %43 = and i32 %42, -2147483648
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  %49 = mul nsw i32 %47, 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %46, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %45, %37
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %30

56:                                               ; preds = %30
  %57 = load %struct.nouveau_bar*, %struct.nouveau_bar** %3, align 8
  %58 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %57, i32 0, i32 0
  %59 = load i32 (%struct.nouveau_bar*)*, i32 (%struct.nouveau_bar*)** %58, align 8
  %60 = load %struct.nouveau_bar*, %struct.nouveau_bar** %3, align 8
  %61 = call i32 %59(%struct.nouveau_bar* %60)
  %62 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %2, align 8
  %63 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %64 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 12
  %67 = call i32 @nv_wr32(%struct.nv50_fifo_priv* %62, i32 13044, i32 %66)
  %68 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %2, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @nv_wr32(%struct.nv50_fifo_priv* %68, i32 13036, i32 %69)
  %71 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %2, align 8
  %72 = call i32 @nv_wr32(%struct.nv50_fifo_priv* %71, i32 9472, i32 257)
  ret void
}

declare dso_local %struct.nouveau_bar* @nouveau_bar(%struct.nv50_fifo_priv*) #1

declare dso_local i32 @nv_rd32(%struct.nv50_fifo_priv*, i32) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv50_fifo_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
