; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv04.c_nv04_fifo_chan_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv04.c_nv04_fifo_chan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv04_fifo_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nv04_fifo_chan = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NV04_PFIFO_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_fifo_chan_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nv04_fifo_priv*, align 8
  %5 = alloca %struct.nv04_fifo_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %9 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.nv04_fifo_priv*
  store %struct.nv04_fifo_priv* %13, %struct.nv04_fifo_priv** %4, align 8
  %14 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %15 = bitcast %struct.nouveau_object* %14 to i8*
  %16 = bitcast i8* %15 to %struct.nv04_fifo_chan*
  store %struct.nv04_fifo_chan* %16, %struct.nv04_fifo_chan** %5, align 8
  %17 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %5, align 8
  %18 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 1, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %5, align 8
  %23 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %22, i32 0, i32 0
  %24 = call i32 @nouveau_fifo_channel_init(%struct.TYPE_4__* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %2, align 4
  br label %45

29:                                               ; preds = %1
  %30 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %31 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %36 = load i32, i32* @NV04_PFIFO_MODE, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @nv_mask(%struct.nv04_fifo_priv* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %4, align 8
  %41 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %29, %27
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @nouveau_fifo_channel_init(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nv_mask(%struct.nv04_fifo_priv*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
