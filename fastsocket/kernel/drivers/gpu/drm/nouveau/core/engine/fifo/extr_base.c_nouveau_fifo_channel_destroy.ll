; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_base.c_nouveau_fifo_channel_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_base.c_nouveau_fifo_channel_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fifo_chan = type { i64, i32, i32, i32, i32 }
%struct.nouveau_fifo = type { i32, i32** }
%struct.TYPE_2__ = type { i64 }
%struct.nouveau_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_fifo_channel_destroy(%struct.nouveau_fifo_chan* %0) #0 {
  %2 = alloca %struct.nouveau_fifo_chan*, align 8
  %3 = alloca %struct.nouveau_fifo*, align 8
  %4 = alloca i64, align 8
  store %struct.nouveau_fifo_chan* %0, %struct.nouveau_fifo_chan** %2, align 8
  %5 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %2, align 8
  %6 = call %struct.TYPE_2__* @nv_object(%struct.nouveau_fifo_chan* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.nouveau_fifo*
  store %struct.nouveau_fifo* %10, %struct.nouveau_fifo** %3, align 8
  %11 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %2, align 8
  %12 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @iounmap(i32 %13)
  %15 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %16 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %15, i32 0, i32 0
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %20 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %19, i32 0, i32 1
  %21 = load i32**, i32*** %20, align 8
  %22 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %2, align 8
  %23 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32*, i32** %21, i64 %24
  store i32* null, i32** %25, align 8
  %26 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %27 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %26, i32 0, i32 0
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %2, align 8
  %31 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %30, i32 0, i32 3
  %32 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %31)
  %33 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %2, align 8
  %34 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %33, i32 0, i32 2
  %35 = bitcast i32* %34 to %struct.nouveau_object**
  %36 = call i32 @nouveau_object_ref(i32* null, %struct.nouveau_object** %35)
  %37 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %2, align 8
  %38 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %37, i32 0, i32 1
  %39 = call i32 @nouveau_namedb_destroy(i32* %38)
  ret void
}

declare dso_local %struct.TYPE_2__* @nv_object(%struct.nouveau_fifo_chan*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nouveau_gpuobj_ref(i32*, i32*) #1

declare dso_local i32 @nouveau_object_ref(i32*, %struct.nouveau_object**) #1

declare dso_local i32 @nouveau_namedb_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
