; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv50.c_nv50_fifo_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv50.c_nv50_fifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv50_fifo_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_fifo_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nv50_fifo_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %7 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %8 = bitcast %struct.nouveau_object* %7 to i8*
  %9 = bitcast i8* %8 to %struct.nv50_fifo_priv*
  store %struct.nv50_fifo_priv* %9, %struct.nv50_fifo_priv** %4, align 8
  %10 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %4, align 8
  %11 = getelementptr inbounds %struct.nv50_fifo_priv, %struct.nv50_fifo_priv* %10, i32 0, i32 0
  %12 = call i32 @nouveau_fifo_init(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %4, align 8
  %19 = call i32 @nv_mask(%struct.nv50_fifo_priv* %18, i32 512, i32 256, i32 0)
  %20 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %4, align 8
  %21 = call i32 @nv_mask(%struct.nv50_fifo_priv* %20, i32 512, i32 256, i32 256)
  %22 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %4, align 8
  %23 = call i32 @nv_wr32(%struct.nv50_fifo_priv* %22, i32 9484, i32 1866267700)
  %24 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %4, align 8
  %25 = call i32 @nv_wr32(%struct.nv50_fifo_priv* %24, i32 8260, i32 16793599)
  %26 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %4, align 8
  %27 = call i32 @nv_wr32(%struct.nv50_fifo_priv* %26, i32 8448, i32 -1)
  %28 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %4, align 8
  %29 = call i32 @nv_wr32(%struct.nv50_fifo_priv* %28, i32 8512, i32 -1073741825)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %39, %17
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 128
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %35, 4
  %37 = add nsw i32 9728, %36
  %38 = call i32 @nv_wr32(%struct.nv50_fifo_priv* %34, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %30

42:                                               ; preds = %30
  %43 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %4, align 8
  %44 = call i32 @nv50_fifo_playlist_update(%struct.nv50_fifo_priv* %43)
  %45 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %4, align 8
  %46 = call i32 @nv_wr32(%struct.nv50_fifo_priv* %45, i32 12800, i32 1)
  %47 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %4, align 8
  %48 = call i32 @nv_wr32(%struct.nv50_fifo_priv* %47, i32 12880, i32 1)
  %49 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %4, align 8
  %50 = call i32 @nv_wr32(%struct.nv50_fifo_priv* %49, i32 9472, i32 1)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %42, %15
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @nouveau_fifo_init(i32*) #1

declare dso_local i32 @nv_mask(%struct.nv50_fifo_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv50_fifo_priv*, i32, i32) #1

declare dso_local i32 @nv50_fifo_playlist_update(%struct.nv50_fifo_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
