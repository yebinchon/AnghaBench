; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv17.c_nv17_fifo_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv17.c_nv17_fifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv04_fifo_priv = type { %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@NV04_PFIFO_DELAY_0 = common dso_local global i32 0, align 4
@NV04_PFIFO_DMA_TIMESLICE = common dso_local global i32 0, align 4
@NV03_PFIFO_RAMHT = common dso_local global i32 0, align 4
@NV03_PFIFO_RAMRO = common dso_local global i32 0, align 4
@NV03_PFIFO_RAMFC = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHE1_PUSH1 = common dso_local global i32 0, align 4
@NV03_PFIFO_INTR_0 = common dso_local global i32 0, align 4
@NV03_PFIFO_INTR_EN_0 = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHE1_PUSH0 = common dso_local global i32 0, align 4
@NV04_PFIFO_CACHE1_PULL0 = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nv17_fifo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv17_fifo_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nv04_fifo_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %6 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %7 = bitcast %struct.nouveau_object* %6 to i8*
  %8 = bitcast i8* %7 to %struct.nv04_fifo_priv*
  store %struct.nv04_fifo_priv* %8, %struct.nv04_fifo_priv** %4, align 8
  %9 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %10 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %9, i32 0, i32 0
  %11 = call i32 @nouveau_fifo_init(%struct.TYPE_10__* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %83

16:                                               ; preds = %1
  %17 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %18 = load i32, i32* @NV04_PFIFO_DELAY_0, align 4
  %19 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %17, i32 %18, i32 255)
  %20 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %21 = load i32, i32* @NV04_PFIFO_DMA_TIMESLICE, align 4
  %22 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %20, i32 %21, i32 16908287)
  %23 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %24 = load i32, i32* @NV03_PFIFO_RAMHT, align 4
  %25 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %26 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %25, i32 0, i32 3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 9
  %31 = shl i32 %30, 16
  %32 = or i32 50331648, %31
  %33 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %34 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %33, i32 0, i32 3
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 8
  %40 = or i32 %32, %39
  %41 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %23, i32 %24, i32 %40)
  %42 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %43 = load i32, i32* @NV03_PFIFO_RAMRO, align 4
  %44 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %45 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 8
  %50 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %42, i32 %43, i32 %49)
  %51 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %52 = load i32, i32* @NV03_PFIFO_RAMFC, align 4
  %53 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %54 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %53, i32 0, i32 1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 8
  %59 = or i32 %58, 65536
  %60 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %51, i32 %52, i32 %59)
  %61 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %62 = load i32, i32* @NV03_PFIFO_CACHE1_PUSH1, align 4
  %63 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %64 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %61, i32 %62, i32 %66)
  %68 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %69 = load i32, i32* @NV03_PFIFO_INTR_0, align 4
  %70 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %68, i32 %69, i32 -1)
  %71 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %72 = load i32, i32* @NV03_PFIFO_INTR_EN_0, align 4
  %73 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %71, i32 %72, i32 -1)
  %74 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %75 = load i32, i32* @NV03_PFIFO_CACHE1_PUSH0, align 4
  %76 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %74, i32 %75, i32 1)
  %77 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %78 = load i32, i32* @NV04_PFIFO_CACHE1_PULL0, align 4
  %79 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %77, i32 %78, i32 1)
  %80 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %81 = load i32, i32* @NV03_PFIFO_CACHES, align 4
  %82 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %80, i32 %81, i32 1)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %16, %14
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @nouveau_fifo_init(%struct.TYPE_10__*) #1

declare dso_local i32 @nv_wr32(%struct.nv04_fifo_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
