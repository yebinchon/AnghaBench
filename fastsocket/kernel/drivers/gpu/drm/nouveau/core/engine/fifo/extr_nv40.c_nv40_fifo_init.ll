; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv40.c_nv40_fifo_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv40.c_nv40_fifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv04_fifo_priv = type { %struct.TYPE_14__, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nouveau_fb = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@NV03_PFIFO_RAMHT = common dso_local global i32 0, align 4
@NV03_PFIFO_RAMRO = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHE1_PUSH1 = common dso_local global i32 0, align 4
@NV03_PFIFO_INTR_0 = common dso_local global i32 0, align 4
@NV03_PFIFO_INTR_EN_0 = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHE1_PUSH0 = common dso_local global i32 0, align 4
@NV04_PFIFO_CACHE1_PULL0 = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nv40_fifo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_fifo_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nv04_fifo_priv*, align 8
  %5 = alloca %struct.nouveau_fb*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %7 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %8 = bitcast %struct.nouveau_object* %7 to i8*
  %9 = bitcast i8* %8 to %struct.nv04_fifo_priv*
  store %struct.nv04_fifo_priv* %9, %struct.nv04_fifo_priv** %4, align 8
  %10 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %11 = call %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_object* %10)
  store %struct.nouveau_fb* %11, %struct.nouveau_fb** %5, align 8
  %12 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %13 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %12, i32 0, i32 0
  %14 = call i32 @nouveau_fifo_init(%struct.TYPE_14__* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %105

19:                                               ; preds = %1
  %20 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %21 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %20, i32 8256, i32 255)
  %22 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %23 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %22, i32 8260, i32 553779199)
  %24 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %25 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %24, i32 8280, i32 1)
  %26 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %27 = load i32, i32* @NV03_PFIFO_RAMHT, align 4
  %28 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %29 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %28, i32 0, i32 3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 9
  %34 = shl i32 %33, 16
  %35 = or i32 50331648, %34
  %36 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %37 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %36, i32 0, i32 3
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 8
  %43 = or i32 %35, %42
  %44 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %26, i32 %27, i32 %43)
  %45 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %46 = load i32, i32* @NV03_PFIFO_RAMRO, align 4
  %47 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %48 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 8
  %53 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %45, i32 %46, i32 %52)
  %54 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %55 = call %struct.TYPE_13__* @nv_device(%struct.nv04_fifo_priv* %54)
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %64 [
    i32 71, label %58
    i32 73, label %58
    i32 75, label %58
    i32 64, label %61
    i32 65, label %61
    i32 66, label %61
    i32 67, label %61
    i32 69, label %61
    i32 72, label %61
  ]

58:                                               ; preds = %19, %19, %19
  %59 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %60 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %59, i32 8752, i32 1)
  br label %61

61:                                               ; preds = %19, %19, %19, %19, %19, %19, %58
  %62 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %63 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %62, i32 8736, i32 196610)
  br label %82

64:                                               ; preds = %19
  %65 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %66 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %65, i32 8752, i32 0)
  %67 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %68 = load %struct.nouveau_fb*, %struct.nouveau_fb** %5, align 8
  %69 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 524288
  %73 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %74 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %73, i32 0, i32 1
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %72, %77
  %79 = ashr i32 %78, 16
  %80 = or i32 %79, 196608
  %81 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %67, i32 8736, i32 %80)
  br label %82

82:                                               ; preds = %64, %61
  %83 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %84 = load i32, i32* @NV03_PFIFO_CACHE1_PUSH1, align 4
  %85 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %86 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %83, i32 %84, i32 %88)
  %90 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %91 = load i32, i32* @NV03_PFIFO_INTR_0, align 4
  %92 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %90, i32 %91, i32 -1)
  %93 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %94 = load i32, i32* @NV03_PFIFO_INTR_EN_0, align 4
  %95 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %93, i32 %94, i32 -1)
  %96 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %97 = load i32, i32* @NV03_PFIFO_CACHE1_PUSH0, align 4
  %98 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %96, i32 %97, i32 1)
  %99 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %100 = load i32, i32* @NV04_PFIFO_CACHE1_PULL0, align 4
  %101 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %99, i32 %100, i32 1)
  %102 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %103 = load i32, i32* @NV03_PFIFO_CACHES, align 4
  %104 = call i32 @nv_wr32(%struct.nv04_fifo_priv* %102, i32 %103, i32 1)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %82, %17
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_fifo_init(%struct.TYPE_14__*) #1

declare dso_local i32 @nv_wr32(%struct.nv04_fifo_priv*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @nv_device(%struct.nv04_fifo_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
