; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_base.c_nouveau_client_name_for_fifo_chid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_base.c_nouveau_client_name_for_fifo_chid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fifo = type { i64, i64, i32, i64* }
%struct.nouveau_fifo_chan = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nouveau_client_name_for_fifo_chid(%struct.nouveau_fifo* %0, i64 %1) #0 {
  %3 = alloca %struct.nouveau_fifo*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nouveau_fifo_chan*, align 8
  %6 = alloca i64, align 8
  store %struct.nouveau_fifo* %0, %struct.nouveau_fifo** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.nouveau_fifo_chan* null, %struct.nouveau_fifo_chan** %5, align 8
  %7 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %7, i32 0, i32 2
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %13 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp uge i64 %11, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %19 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ule i64 %17, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %24 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %23, i32 0, i32 3
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = bitcast i8* %29 to %struct.nouveau_fifo_chan*
  store %struct.nouveau_fifo_chan* %30, %struct.nouveau_fifo_chan** %5, align 8
  br label %31

31:                                               ; preds = %22, %16, %2
  %32 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %33 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %32, i32 0, i32 2
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %5, align 8
  %37 = call i8* @nouveau_client_name(%struct.nouveau_fifo_chan* %36)
  ret i8* %37
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @nouveau_client_name(%struct.nouveau_fifo_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
