; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv04.c_nv04_disp_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv04.c_nv04_disp_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nv04_disp_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nv04_disp_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_disp_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nv04_disp_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %6 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %7 = bitcast %struct.nouveau_subdev* %6 to i8*
  %8 = bitcast i8* %7 to %struct.nv04_disp_priv*
  store %struct.nv04_disp_priv* %8, %struct.nv04_disp_priv** %3, align 8
  %9 = load %struct.nv04_disp_priv*, %struct.nv04_disp_priv** %3, align 8
  %10 = call i32 @nv_rd32(%struct.nv04_disp_priv* %9, i32 6291712)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.nv04_disp_priv*, %struct.nv04_disp_priv** %3, align 8
  %12 = call i32 @nv_rd32(%struct.nv04_disp_priv* %11, i32 6299904)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.nv04_disp_priv*, %struct.nv04_disp_priv** %3, align 8
  %18 = getelementptr inbounds %struct.nv04_disp_priv, %struct.nv04_disp_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nouveau_event_trigger(i32 %20, i32 0)
  %22 = load %struct.nv04_disp_priv*, %struct.nv04_disp_priv** %3, align 8
  %23 = call i32 @nv_wr32(%struct.nv04_disp_priv* %22, i32 6291712, i32 1)
  br label %24

24:                                               ; preds = %16, %1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.nv04_disp_priv*, %struct.nv04_disp_priv** %3, align 8
  %30 = getelementptr inbounds %struct.nv04_disp_priv, %struct.nv04_disp_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nouveau_event_trigger(i32 %32, i32 1)
  %34 = load %struct.nv04_disp_priv*, %struct.nv04_disp_priv** %3, align 8
  %35 = call i32 @nv_wr32(%struct.nv04_disp_priv* %34, i32 6299904, i32 1)
  br label %36

36:                                               ; preds = %28, %24
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nv04_disp_priv*, i32) #1

declare dso_local i32 @nouveau_event_trigger(i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv04_disp_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
