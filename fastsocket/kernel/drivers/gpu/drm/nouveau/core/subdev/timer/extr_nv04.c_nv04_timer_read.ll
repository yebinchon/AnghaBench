; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/timer/extr_nv04.c_nv04_timer_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/timer/extr_nv04.c_nv04_timer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_timer = type { i32 }
%struct.nv04_timer_priv = type { i32 }

@NV04_PTIMER_TIME_1 = common dso_local global i32 0, align 4
@NV04_PTIMER_TIME_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_timer*)* @nv04_timer_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_timer_read(%struct.nouveau_timer* %0) #0 {
  %2 = alloca %struct.nouveau_timer*, align 8
  %3 = alloca %struct.nv04_timer_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.nouveau_timer* %0, %struct.nouveau_timer** %2, align 8
  %6 = load %struct.nouveau_timer*, %struct.nouveau_timer** %2, align 8
  %7 = bitcast %struct.nouveau_timer* %6 to i8*
  %8 = bitcast i8* %7 to %struct.nv04_timer_priv*
  store %struct.nv04_timer_priv* %8, %struct.nv04_timer_priv** %3, align 8
  br label %9

9:                                                ; preds = %16, %1
  %10 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %3, align 8
  %11 = load i32, i32* @NV04_PTIMER_TIME_1, align 4
  %12 = call i64 @nv_rd32(%struct.nv04_timer_priv* %10, i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %3, align 8
  %14 = load i32, i32* @NV04_PTIMER_TIME_0, align 4
  %15 = call i64 @nv_rd32(%struct.nv04_timer_priv* %13, i32 %14)
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %9
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %3, align 8
  %19 = load i32, i32* @NV04_PTIMER_TIME_1, align 4
  %20 = call i64 @nv_rd32(%struct.nv04_timer_priv* %18, i32 %19)
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %9, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 32
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %5, align 8
  %28 = or i64 %26, %27
  %29 = trunc i64 %28 to i32
  ret i32 %29
}

declare dso_local i64 @nv_rd32(%struct.nv04_timer_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
