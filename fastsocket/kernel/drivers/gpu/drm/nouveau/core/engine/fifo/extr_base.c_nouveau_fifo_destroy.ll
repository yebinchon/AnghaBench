; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_base.c_nouveau_fifo_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_base.c_nouveau_fifo_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fifo = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_fifo_destroy(%struct.nouveau_fifo* %0) #0 {
  %2 = alloca %struct.nouveau_fifo*, align 8
  store %struct.nouveau_fifo* %0, %struct.nouveau_fifo** %2, align 8
  %3 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %2, align 8
  %4 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @kfree(i32 %5)
  %7 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %2, align 8
  %8 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %7, i32 0, i32 1
  %9 = call i32 @nouveau_event_destroy(i32* %8)
  %10 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %2, align 8
  %11 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %10, i32 0, i32 0
  %12 = call i32 @nouveau_engine_destroy(i32* %11)
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @nouveau_event_destroy(i32*) #1

declare dso_local i32 @nouveau_engine_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
