; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_uevent_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_uevent_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_event = type { %struct.nvc0_fifo_priv* }
%struct.nvc0_fifo_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_event*, i32)* @nvc0_fifo_uevent_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_fifo_uevent_disable(%struct.nouveau_event* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvc0_fifo_priv*, align 8
  store %struct.nouveau_event* %0, %struct.nouveau_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nouveau_event*, %struct.nouveau_event** %3, align 8
  %7 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %6, i32 0, i32 0
  %8 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %7, align 8
  store %struct.nvc0_fifo_priv* %8, %struct.nvc0_fifo_priv** %5, align 8
  %9 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %5, align 8
  %10 = call i32 @nv_mask(%struct.nvc0_fifo_priv* %9, i32 8512, i32 -2147483648, i32 0)
  ret void
}

declare dso_local i32 @nv_mask(%struct.nvc0_fifo_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
