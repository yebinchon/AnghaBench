; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mc/extr_nv04.c_nv04_mc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mc/extr_nv04.c_nv04_mc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv04_mc_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_mc_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca %struct.nouveau_object*, align 8
  %3 = alloca %struct.nv04_mc_priv*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %2, align 8
  %4 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %5 = bitcast %struct.nouveau_object* %4 to i8*
  %6 = bitcast i8* %5 to %struct.nv04_mc_priv*
  store %struct.nv04_mc_priv* %6, %struct.nv04_mc_priv** %3, align 8
  %7 = load %struct.nv04_mc_priv*, %struct.nv04_mc_priv** %3, align 8
  %8 = call i32 @nv_wr32(%struct.nv04_mc_priv* %7, i32 512, i32 -1)
  %9 = load %struct.nv04_mc_priv*, %struct.nv04_mc_priv** %3, align 8
  %10 = call i32 @nv_wr32(%struct.nv04_mc_priv* %9, i32 6224, i32 1)
  %11 = load %struct.nv04_mc_priv*, %struct.nv04_mc_priv** %3, align 8
  %12 = getelementptr inbounds %struct.nv04_mc_priv, %struct.nv04_mc_priv* %11, i32 0, i32 0
  %13 = call i32 @nouveau_mc_init(i32* %12)
  ret i32 %13
}

declare dso_local i32 @nv_wr32(%struct.nv04_mc_priv*, i32, i32) #1

declare dso_local i32 @nouveau_mc_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
