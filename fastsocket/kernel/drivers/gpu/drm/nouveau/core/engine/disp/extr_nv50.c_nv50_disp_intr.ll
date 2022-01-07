; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nv50_disp_priv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_disp_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nv50_disp_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %6 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %7 = bitcast %struct.nouveau_subdev* %6 to i8*
  %8 = bitcast i8* %7 to %struct.nv50_disp_priv*
  store %struct.nv50_disp_priv* %8, %struct.nv50_disp_priv** %3, align 8
  %9 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %10 = call i32 @nv_rd32(%struct.nv50_disp_priv* %9, i32 6357024)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %12 = call i32 @nv_rd32(%struct.nv50_disp_priv* %11, i32 6357028)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 2031616
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %18 = call i32 @nv50_disp_intr_error(%struct.nv50_disp_priv* %17)
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, -2031617
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %16, %1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %27 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @nouveau_event_trigger(i32 %29, i32 0)
  %31 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %32 = call i32 @nv_wr32(%struct.nv50_disp_priv* %31, i32 6357028, i32 4)
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, -5
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %25, %21
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %41 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @nouveau_event_trigger(i32 %43, i32 1)
  %45 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %46 = call i32 @nv_wr32(%struct.nv50_disp_priv* %45, i32 6357028, i32 8)
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, -9
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %39, %35
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 112
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 112
  %56 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %57 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %59 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %58, i32 0, i32 1
  %60 = call i32 @schedule_work(i32* %59)
  %61 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %62 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %63 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @nv_wr32(%struct.nv50_disp_priv* %61, i32 6357028, i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, -113
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %53, %49
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nv50_disp_priv*, i32) #1

declare dso_local i32 @nv50_disp_intr_error(%struct.nv50_disp_priv*) #1

declare dso_local i32 @nouveau_event_trigger(i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv50_disp_priv*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
