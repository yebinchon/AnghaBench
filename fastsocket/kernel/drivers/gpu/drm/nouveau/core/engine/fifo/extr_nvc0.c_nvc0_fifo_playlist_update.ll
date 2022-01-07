; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_playlist_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_playlist_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_fifo_priv = type { i64, %struct.nouveau_gpuobj** }
%struct.nouveau_gpuobj = type { i32 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*)* }

@.str = private unnamed_addr constant [24 x i8] c"playlist update failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_fifo_priv*)* @nvc0_fifo_playlist_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_fifo_playlist_update(%struct.nvc0_fifo_priv* %0) #0 {
  %2 = alloca %struct.nvc0_fifo_priv*, align 8
  %3 = alloca %struct.nouveau_bar*, align 8
  %4 = alloca %struct.nouveau_gpuobj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvc0_fifo_priv* %0, %struct.nvc0_fifo_priv** %2, align 8
  %7 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %2, align 8
  %8 = call %struct.nouveau_bar* @nouveau_bar(%struct.nvc0_fifo_priv* %7)
  store %struct.nouveau_bar* %8, %struct.nouveau_bar** %3, align 8
  %9 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %2, align 8
  %10 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %9, i32 0, i32 1
  %11 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %10, align 8
  %12 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %2, align 8
  %13 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %11, i64 %14
  %16 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %15, align 8
  store %struct.nouveau_gpuobj* %16, %struct.nouveau_gpuobj** %4, align 8
  %17 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %2, align 8
  %18 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %2, align 8
  %25 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %50, %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 128
  br i1 %28, label %29, label %53

29:                                               ; preds = %26
  %30 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = mul nsw i32 %31, 8
  %33 = add nsw i32 12292, %32
  %34 = call i32 @nv_rd32(%struct.nvc0_fifo_priv* %30, i32 %33)
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %50

38:                                               ; preds = %29
  %39 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 0
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %39, i32 %41, i32 %42)
  %44 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 4
  %47 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %44, i32 %46, i32 4)
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 8
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %38, %37
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %26

53:                                               ; preds = %26
  %54 = load %struct.nouveau_bar*, %struct.nouveau_bar** %3, align 8
  %55 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %54, i32 0, i32 0
  %56 = load i32 (%struct.nouveau_bar*)*, i32 (%struct.nouveau_bar*)** %55, align 8
  %57 = load %struct.nouveau_bar*, %struct.nouveau_bar** %3, align 8
  %58 = call i32 %56(%struct.nouveau_bar* %57)
  %59 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %2, align 8
  %60 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %61 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 12
  %64 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %59, i32 8816, i32 %63)
  %65 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %2, align 8
  %66 = load i32, i32* %6, align 4
  %67 = ashr i32 %66, 3
  %68 = or i32 32505856, %67
  %69 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %65, i32 8820, i32 %68)
  %70 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %2, align 8
  %71 = call i32 @nv_wait(%struct.nvc0_fifo_priv* %70, i32 8828, i32 1048576, i32 0)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %53
  %74 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %2, align 8
  %75 = call i32 @nv_error(%struct.nvc0_fifo_priv* %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %53
  ret void
}

declare dso_local %struct.nouveau_bar* @nouveau_bar(%struct.nvc0_fifo_priv*) #1

declare dso_local i32 @nv_rd32(%struct.nvc0_fifo_priv*, i32) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nvc0_fifo_priv*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nvc0_fifo_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nvc0_fifo_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
