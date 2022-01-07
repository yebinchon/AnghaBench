; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_chan_wr32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_chan_wr32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv50_disp_priv = type { i32 }
%struct.nv50_disp_chan = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_disp_chan_wr32(%struct.nouveau_object* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_object*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv50_disp_priv*, align 8
  %8 = alloca %struct.nv50_disp_chan*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %10 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.nv50_disp_priv*
  store %struct.nv50_disp_priv* %13, %struct.nv50_disp_priv** %7, align 8
  %14 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %15 = bitcast %struct.nouveau_object* %14 to i8*
  %16 = bitcast i8* %15 to %struct.nv50_disp_chan*
  store %struct.nv50_disp_chan* %16, %struct.nv50_disp_chan** %8, align 8
  %17 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %7, align 8
  %18 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %8, align 8
  %19 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 4096
  %22 = add nsw i32 6553600, %21
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @nv_wr32(%struct.nv50_disp_priv* %17, i64 %25, i32 %26)
  ret void
}

declare dso_local i32 @nv_wr32(%struct.nv50_disp_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
