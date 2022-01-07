; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mc/extr_nv44.c_nv44_mc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mc/extr_nv44.c_nv44_mc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv44_mc_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nv44_mc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv44_mc_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca %struct.nouveau_object*, align 8
  %3 = alloca %struct.nv44_mc_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %2, align 8
  %5 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %6 = bitcast %struct.nouveau_object* %5 to i8*
  %7 = bitcast i8* %6 to %struct.nv44_mc_priv*
  store %struct.nv44_mc_priv* %7, %struct.nv44_mc_priv** %3, align 8
  %8 = load %struct.nv44_mc_priv*, %struct.nv44_mc_priv** %3, align 8
  %9 = call i32 @nv_rd32(%struct.nv44_mc_priv* %8, i32 1049100)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.nv44_mc_priv*, %struct.nv44_mc_priv** %3, align 8
  %11 = call i32 @nv_wr32(%struct.nv44_mc_priv* %10, i32 512, i32 -1)
  %12 = load %struct.nv44_mc_priv*, %struct.nv44_mc_priv** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @nv_wr32(%struct.nv44_mc_priv* %12, i32 5888, i32 %13)
  %15 = load %struct.nv44_mc_priv*, %struct.nv44_mc_priv** %3, align 8
  %16 = call i32 @nv_wr32(%struct.nv44_mc_priv* %15, i32 5892, i32 0)
  %17 = load %struct.nv44_mc_priv*, %struct.nv44_mc_priv** %3, align 8
  %18 = call i32 @nv_wr32(%struct.nv44_mc_priv* %17, i32 5896, i32 0)
  %19 = load %struct.nv44_mc_priv*, %struct.nv44_mc_priv** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @nv_wr32(%struct.nv44_mc_priv* %19, i32 5900, i32 %20)
  %22 = load %struct.nv44_mc_priv*, %struct.nv44_mc_priv** %3, align 8
  %23 = getelementptr inbounds %struct.nv44_mc_priv, %struct.nv44_mc_priv* %22, i32 0, i32 0
  %24 = call i32 @nouveau_mc_init(i32* %23)
  ret i32 %24
}

declare dso_local i32 @nv_rd32(%struct.nv44_mc_priv*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv44_mc_priv*, i32, i32) #1

declare dso_local i32 @nouveau_mc_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
