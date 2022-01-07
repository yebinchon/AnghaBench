; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_nv50.c_nv84_bar_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_nv50.c_nv84_bar_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bar = type { i32 }
%struct.nv50_bar_priv = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"flush timeout\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv84_bar_flush(%struct.nouveau_bar* %0) #0 {
  %2 = alloca %struct.nouveau_bar*, align 8
  %3 = alloca %struct.nv50_bar_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.nouveau_bar* %0, %struct.nouveau_bar** %2, align 8
  %5 = load %struct.nouveau_bar*, %struct.nouveau_bar** %2, align 8
  %6 = bitcast %struct.nouveau_bar* %5 to i8*
  %7 = bitcast i8* %6 to %struct.nv50_bar_priv*
  store %struct.nv50_bar_priv* %7, %struct.nv50_bar_priv** %3, align 8
  %8 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %3, align 8
  %9 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.nouveau_bar*, %struct.nouveau_bar** %2, align 8
  %13 = call i32 @nv_wr32(%struct.nouveau_bar* %12, i32 458752, i32 1)
  %14 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %3, align 8
  %15 = call i32 @nv_wait(%struct.nv50_bar_priv* %14, i32 458752, i32 2, i32 0)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %3, align 8
  %19 = call i32 @nv_warn(%struct.nv50_bar_priv* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %3, align 8
  %22 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_bar*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nv50_bar_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_warn(%struct.nv50_bar_priv*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
