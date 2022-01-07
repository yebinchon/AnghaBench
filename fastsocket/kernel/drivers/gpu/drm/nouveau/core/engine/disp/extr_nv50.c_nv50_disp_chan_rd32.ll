; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_chan_rd32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_chan_rd32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv50_disp_priv = type { i32 }
%struct.nv50_disp_chan = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_disp_chan_rd32(%struct.nouveau_object* %0, i64 %1) #0 {
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nv50_disp_priv*, align 8
  %6 = alloca %struct.nv50_disp_chan*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.nv50_disp_priv*
  store %struct.nv50_disp_priv* %11, %struct.nv50_disp_priv** %5, align 8
  %12 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %13 = bitcast %struct.nouveau_object* %12 to i8*
  %14 = bitcast i8* %13 to %struct.nv50_disp_chan*
  store %struct.nv50_disp_chan* %14, %struct.nv50_disp_chan** %6, align 8
  %15 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %5, align 8
  %16 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %6, align 8
  %17 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 4096
  %20 = add nsw i32 6553600, %19
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %4, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @nv_rd32(%struct.nv50_disp_priv* %15, i64 %23)
  ret i32 %24
}

declare dso_local i32 @nv_rd32(%struct.nv50_disp_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
