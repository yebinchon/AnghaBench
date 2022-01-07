; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/devinit/extr_nv04.c_nv04_devinit_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/devinit/extr_nv04.c_nv04_devinit_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv04_devinit_priv = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_devinit_fini(%struct.nouveau_object* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv04_devinit_priv*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %7 = bitcast %struct.nouveau_object* %6 to i8*
  %8 = bitcast i8* %7 to %struct.nv04_devinit_priv*
  store %struct.nv04_devinit_priv* %8, %struct.nv04_devinit_priv** %5, align 8
  %9 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %5, align 8
  %10 = call i32 @nv_mask(%struct.nv04_devinit_priv* %9, i32 512, i32 1, i32 1)
  %11 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %5, align 8
  %12 = call i32 @nv_lockvgac(%struct.nv04_devinit_priv* %11, i32 0)
  %13 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %5, align 8
  %14 = getelementptr inbounds %struct.nv04_devinit_priv, %struct.nv04_devinit_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %5, align 8
  %19 = call i64 @nv_rdvgaowner(%struct.nv04_devinit_priv* %18)
  %20 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %5, align 8
  %21 = getelementptr inbounds %struct.nv04_devinit_priv, %struct.nv04_devinit_priv* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %5, align 8
  %24 = call i32 @nv_wrvgaowner(%struct.nv04_devinit_priv* %23, i32 0)
  %25 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %5, align 8
  %26 = getelementptr inbounds %struct.nv04_devinit_priv, %struct.nv04_devinit_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @nouveau_devinit_fini(i32* %26, i32 %27)
  ret i32 %28
}

declare dso_local i32 @nv_mask(%struct.nv04_devinit_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_lockvgac(%struct.nv04_devinit_priv*, i32) #1

declare dso_local i64 @nv_rdvgaowner(%struct.nv04_devinit_priv*) #1

declare dso_local i32 @nv_wrvgaowner(%struct.nv04_devinit_priv*, i32) #1

declare dso_local i32 @nouveau_devinit_fini(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
