; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv04.c_nv04_fifo_chan_dtor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv04.c_nv04_fifo_chan_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv04_fifo_priv = type { i32, %struct.ramfc_desc* }
%struct.ramfc_desc = type { i64, i64 }
%struct.nv04_fifo_chan = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv04_fifo_chan_dtor(%struct.nouveau_object* %0) #0 {
  %2 = alloca %struct.nouveau_object*, align 8
  %3 = alloca %struct.nv04_fifo_priv*, align 8
  %4 = alloca %struct.nv04_fifo_chan*, align 8
  %5 = alloca %struct.ramfc_desc*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %2, align 8
  %6 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %7 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.nv04_fifo_priv*
  store %struct.nv04_fifo_priv* %10, %struct.nv04_fifo_priv** %3, align 8
  %11 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %12 = bitcast %struct.nouveau_object* %11 to i8*
  %13 = bitcast i8* %12 to %struct.nv04_fifo_chan*
  store %struct.nv04_fifo_chan* %13, %struct.nv04_fifo_chan** %4, align 8
  %14 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %3, align 8
  %15 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %14, i32 0, i32 1
  %16 = load %struct.ramfc_desc*, %struct.ramfc_desc** %15, align 8
  store %struct.ramfc_desc* %16, %struct.ramfc_desc** %5, align 8
  br label %17

17:                                               ; preds = %29, %1
  %18 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %3, align 8
  %19 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %4, align 8
  %22 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ramfc_desc*, %struct.ramfc_desc** %5, align 8
  %25 = getelementptr inbounds %struct.ramfc_desc, %struct.ramfc_desc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = call i32 @nv_wo32(i32 %20, i64 %27, i32 0)
  br label %29

29:                                               ; preds = %17
  %30 = load %struct.ramfc_desc*, %struct.ramfc_desc** %5, align 8
  %31 = getelementptr inbounds %struct.ramfc_desc, %struct.ramfc_desc* %30, i32 1
  store %struct.ramfc_desc* %31, %struct.ramfc_desc** %5, align 8
  %32 = getelementptr inbounds %struct.ramfc_desc, %struct.ramfc_desc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %17, label %35

35:                                               ; preds = %29
  %36 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %4, align 8
  %37 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %36, i32 0, i32 0
  %38 = call i32 @nouveau_fifo_channel_destroy(i32* %37)
  ret void
}

declare dso_local i32 @nv_wo32(i32, i64, i32) #1

declare dso_local i32 @nouveau_fifo_channel_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
